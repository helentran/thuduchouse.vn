using HRSystemTDH.Models;
using System.Collections.Generic;
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
        [HttpGet]
        public ActionResult CreateEmployee()
        {
            var model = new Employee
            {
                Depatments = repo.GetDepartment()
            };
            return View();
        }
        [HttpPost]
        public ActionResult CreateEmployee(Employee emp)
        {
            return View();
        }

        private IEnumerable<SelectListItem> GetDepartments()
        {
            var dbUserRoles = new DbUserRoles();
            var roles = dbUserRoles
                        .GetRoles()
                        .Select(x =>
                                new SelectListItem
                                {
                                    Value = x.UserRoleId.ToString(),
                                    Text = x.UserRole
                                });

            return new SelectList(roles, "Value", "Text");
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