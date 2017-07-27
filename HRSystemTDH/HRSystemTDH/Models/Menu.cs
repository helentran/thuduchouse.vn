using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Xml.Linq;

namespace HRSystemTDH.Models
{
    public class Menu
	{
		public string Name { get; set; }
        public int WebID { get; set; }
		public List<MenuEntry> Entries { get; set; }
	}
    public class MenuEntry
    {
        public int ID { get; set; }
        [Required]
        public string Name { get; set; }
        public string Note { get; set; }
        public int Index { get; set; }
        public string Class { get; set; }
        public string Slug { get; set; }
        public int ParentSlugID { get; set; }
        public string Action { get; set; }
        public string Image { get; set; }
        public bool Active { get; set; }
        //public string Alt { get; set; }
      
        public List<MenuEntry> SubMenu { get; set; }
    }


    #region XML Menu
    public static class XMLMenuTypes
    {
        public const string MainMenu = "main_menu";
        public const string SocialMenu = "social_menu";
    }
    public static class XMLMenuConst
    {
        public const string root = "menutree";
        public const string item = "item";
        public const string attr_id = "id";
        public const string attr_name = "name";
        public const string attr_type = "type";
        public const string attr_label = "label";
        public const string attr_action = "action";
        public const string attr_controller = "controller";
        public const string attr_image = "image";
        public const string attr_icon = "icon";
        public const string attr_class = "class";
        public const string attr_staticUrl = "staticUrl";
        public const string attr_linkTarget = "linkTarget";
    }
    public class XMLMenu
    {
        public XMLMenu() { }
        public XMLMenu(int? id, XElement xMenu)
        {
            if (id != null)
                ID = Convert.ToInt32(id);
            FromXML(xMenu);
        }
        public int ID { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }

        public IEnumerable<XMLMenuEntry> Entries { get; set; }

        public XElement ToXML()
        {
            var menu = new XElement(XMLMenuConst.root);
            menu.SetAttributeValue(XMLMenuConst.attr_name, Name);
            menu.SetAttributeValue(XMLMenuConst.attr_type, Type);

            if (this.Entries != null && this.Entries.Count() > 0)
            {
                foreach (var item in Entries)
                {
                    menu.Add(item.ToXML());
                }
            }

            return menu;
        }
        public void FromXML(XElement xMenu)
        {
            if (xMenu != null && xMenu.HasElements)
            {
                if (xMenu.HasAttributes)
                {
                    Name = xMenu.Attribute(XMLMenuConst.attr_name) == null ? "Default Menu" : xMenu.Attribute(XMLMenuConst.attr_name).Value;
                    Type = xMenu.Attribute(XMLMenuConst.attr_type) == null ? "site_menu" : xMenu.Attribute(XMLMenuConst.attr_type).Value;
                }
                var xElements = xMenu.Elements();
                foreach (var item in xElements)
                {
                    Entries = xElements.Select(entry => new XMLMenuEntry(entry));
                }
            }
        }

    }

    public class XMLMenuEntry
    {
        public XMLMenuEntry() { }
        public XMLMenuEntry(XElement xEntry)
        {
            FromXML(xEntry);
        }
        public string ID { get; set; }
        public string Label { get; set; }
        public string StaticURL { get; set; }
        public string Action { get; set; }
        public string Controller { get; set; }
        public bool Active { get; set; }
        public string Class { get; set; }
        public string Icon { get; set; }
        public string Image { get; set; }
        public string LinkTarget { get; set; }
        public string[] Roles { get; set; }
        public XElement ToXML()
        {
            var eLocation = new XElement(XMLMenuConst.item);
            this.ID = String.IsNullOrEmpty(ID) ? Utilities.GenerateGuid(5) : this.ID;
            eLocation.SetAttributeValue(XMLMenuConst.attr_name, this.Label);

            return eLocation;
        }
        public void FromXML(XElement xLocation)
        {
            if (xLocation != null && xLocation.HasAttributes)
            {
                ID = xLocation.Attribute(XMLMenuConst.attr_id) == null ? string.Empty : xLocation.Attribute(XMLMenuConst.attr_id).Value;
                Label = xLocation.Attribute(XMLMenuConst.attr_label) == null ? string.Empty : xLocation.Attribute(XMLMenuConst.attr_label).Value;
                StaticURL = xLocation.Attribute(XMLMenuConst.attr_staticUrl) == null ? string.Empty : xLocation.Attribute(XMLMenuConst.attr_staticUrl).Value;
                Action = xLocation.Attribute(XMLMenuConst.attr_action) == null ? string.Empty : xLocation.Attribute(XMLMenuConst.attr_action).Value;
                Controller = xLocation.Attribute(XMLMenuConst.attr_controller) == null ? string.Empty : xLocation.Attribute(XMLMenuConst.attr_controller).Value;
                Class = xLocation.Attribute(XMLMenuConst.attr_class) == null ? string.Empty : xLocation.Attribute(XMLMenuConst.attr_class).Value;
                Icon = xLocation.Attribute(XMLMenuConst.attr_icon) == null ? string.Empty : xLocation.Attribute(XMLMenuConst.attr_icon).Value;
                Image = xLocation.Attribute(XMLMenuConst.attr_image) == null ? string.Empty : xLocation.Attribute(XMLMenuConst.attr_image).Value;
                LinkTarget = xLocation.Attribute(XMLMenuConst.attr_linkTarget) == null ? string.Empty : xLocation.Attribute(XMLMenuConst.attr_linkTarget).Value;
            }
        }
    }
    public static class Utilities
    {
        public static string GenerateGuid(int length, int startIdx = 0)
        {
            return Guid.NewGuid().ToString().Substring(startIdx, length);
        }
        public static string Timestamp()
        {
            var now = DateTime.Now;
            var str = String.Format("{0}{1:00}{2:00}_{3:00}{4:00}{5:00}", now.Year, now.Month, now.Day, now.Hour, now.Minute, now.Second);
            return str;
        }
    }
    public enum ResultSubmit
    {
        failed = 0,
        success = 1
    }
    #endregion

}