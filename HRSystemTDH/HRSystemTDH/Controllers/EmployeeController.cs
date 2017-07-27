using HRSystemTDH.Models;
using System.Web.Mvc;

namespace HRSystemTDH.Controllers
{
    public class EmployeeController : BaseController
    {
        // GET: Employee

        public ActionResult Index()
        {
            var list = repo.GetEmployee();
            return View(list);
        }
        //[ChildActionOnly]
        public ActionResult GetViewEmployee()
        {
            return PartialView("CreateEmployee");
        }
        [HttpPost]
        public ActionResult CreateEmployee(Employee emp)
        {
            return View();
        }
        [HttpGet]
        [ActionName("employee-update")]
        public ActionResult EmployeeUpdate(int id)
        {
            return View();
        }
        [HttpPost]
        [ActionName("employee-update")]
        public ActionResult EmployeeUpdate(Employee emp)
        {
            return View();
        }
    }
}