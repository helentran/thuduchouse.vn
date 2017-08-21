using HRSystemTDH.Helpers;
using HRSystemTDH.Models;
using System.Collections.Generic;
using System.IO;
using System.Web.Mvc;
using System.Web.Routing;

namespace HRSystemTDH.Controllers
{
    public class BaseController : Controller
    {
        public Repo repo = SiteConfiguration.Site_Repo;
        public List<Department> _department;

        protected override void Initialize(RequestContext requestContext)
        {
            base.Initialize(requestContext);
            //var promo = SiteConfiguration.RegisterPromotion;
            //promo.EndDate = DateTime.Now.AddYears(1);
            //SiteConfiguration.Sevices.SaveDrawPromotion(promo);
            //check prize total
            //var getwinners = SiteConfiguration.Sevices.GetSTWWinner(SiteConfiguration.RegisterPromotion.CataloguePromotionID);
            // var entry = SiteConfiguration.Sevices.GetSTWEntry(5, 2)[0];

            //if (SiteConfiguration.RegisterPromotion != null)
            //{
            //    Session["PromotionSetting"] = SiteConfiguration.RegisterPromotion;
            //}
            if (SiteConfiguration._department == null)
                SiteConfiguration._department = repo.GetDepartments();
            if (SiteConfiguration._company == null)
                SiteConfiguration._company = repo.GetCompanies();
        }
        [ChildActionOnly]
        public ActionResult Menu()
        {
            var menus = repo.GetMenuList(1);
            return View(menus);
        }

        #region Render PartialViewToString
        protected string RenderPartialViewToString()
        {
            return RenderPartialViewToString(null, null);
        }
        protected string RenderPartialViewToString(string viewName)
        {
            return RenderPartialViewToString(viewName, null);
        }
        protected string RenderPartialViewToString(object model)
        {
            return RenderPartialViewToString(null, model);
        }
        public string RenderPartialViewToString(string viewName, object model)
        {
            if (string.IsNullOrEmpty(viewName))
                viewName = ControllerContext.RouteData.GetRequiredString("action");

            ViewData.Model = model;

            using (StringWriter sw = new StringWriter())
            {
                ViewEngineResult viewResult = ViewEngines.Engines.FindPartialView(ControllerContext, viewName);
                ViewContext viewContext = new ViewContext(ControllerContext, viewResult.View, ViewData, TempData, sw);
                viewResult.View.Render(viewContext, sw);

                return sw.GetStringBuilder().ToString();
            }
        }
        #endregion
    }
}