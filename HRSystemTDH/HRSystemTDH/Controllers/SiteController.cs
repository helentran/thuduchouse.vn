using HRSystemTDH.Helpers;
using HRSystemTDH.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using System.Web.Routing;

namespace HRSystemTDH.Controllers
{
    public class SiteController : BaseController
    {
        // GET: Site
        protected int WebID = 1;       
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Report()
        {
            return View();
        }
        [ActionName("admin")]
        public ActionResult Administrator()
        {
            return View();
        }

        #region Menu
        [ChildActionOnly]
        public ActionResult MenuSetting()
        {
            var menus = repo.GetMenuList(1);
            return View(menus);
        }
        public ActionResult CreateMenu(MenuEntry mn)
        {
            if (!ModelState.IsValid)
            {
                return View("admin");
            }
            else
            {
                repo.CreateEntry(mn);
            }
            return View("admin");
        }
        [HttpGet]
        public ActionResult EditMenu(int id)
        {

              var menu =  repo.GetMenu(1,id);
            return View(menu);
        }
        [HttpPost]
        public ActionResult EditMenu(MenuEntry mn)
        {
            repo.UpdateEntry(mn);
            return RedirectToAction("admin");
        }
        public ActionResult RemoveMenu(int id)
        {
            if (id==0)
            {
                return View("admin");
            }
            else
            {
                repo.RemoveEntry(id);
            }
            return View("admin");
        }
        [HttpPost]
        public ActionResult ChangeIndexMenu(string ids)
        {
            if (!String.IsNullOrEmpty(ids))
            {
                var list_id = ids.Split(',').Select(Int32.Parse).ToList();
                repo.UpdatePositionEntry(list_id);
               
            }
            return View("admin");
        }
      
        #endregion

        #region Report 
        public ActionResult ReportHumanResource()
        {
            return View();
        }

        #endregion

        #region Login
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(string username, string password)
        {
            var acc = repo.GetAccount(username,password);
            if (acc!=null)
            {
                return RedirectToAction("Index");
            }
            return View();
        }
        #endregion

   
    }
}