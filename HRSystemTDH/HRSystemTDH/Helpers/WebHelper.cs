using System.Collections.Generic;

namespace System.Web.Mvc
{
    public class RequireSSLAttribute : RequireHttpsAttribute
    {
        protected override void HandleNonHttpsRequest(AuthorizationContext filterContext)
        {
            if (filterContext == null)
            {
                throw new ArgumentNullException("filterContext");
            }

            //modified to check for local requests since cant use ssl for dev server. (casini)
            if (!filterContext.HttpContext.Request.IsSecureConnection && !filterContext.HttpContext.Request.IsLocal)
            {
                base.HandleNonHttpsRequest(filterContext);
            }
        }
    }
    public static class HTMLExtensions
    {
        public static MvcHtmlString EmailLink(this HtmlHelper htmlhelper, string address = "test@thuduchouse.com", string text = "", string subject = "")
        {
            if (text == "")
                text = address;

            TagBuilder tag = new TagBuilder("a");
            tag.Attributes.Add("href", "mailto:" + address + (subject != "" ? "?subject=" + subject : "?subject=ThuDucHouse Enquiry"));
            tag.Attributes.Add("class", "mailto");
            tag.InnerHtml = text;
            return MvcHtmlString.Create(tag.ToString());
        }

        public static MvcHtmlString ClearFix(this HtmlHelper htmlHelper)
        {
            return MvcHtmlString.Create("<div style=\"clear:both;\"></div>");
        }

        public static MvcHtmlString LabelText(this HtmlHelper htmlHelper, string text, bool required = true,string _class=null)
        {
            var _classStrings = !String.IsNullOrEmpty(_class)?"control-label col-xs-12 col-sm-"+_class: "control-label col-xs-12";
            return MvcHtmlString.Create("<label class=\""+_classStrings + (required ? " required" : "") + "\">" + text + "</label>");
        }

      

    }
}
