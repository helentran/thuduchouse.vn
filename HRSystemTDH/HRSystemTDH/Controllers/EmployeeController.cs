﻿using HRSystemTDH.Models;
<<<<<<< HEAD
using System.Collections.Generic;
=======
>>>>>>> 76fb5c12c915d59871a1f0459dab4f3e9b3ed29d
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
<<<<<<< HEAD
        [HttpGet]
        public ActionResult CreateEmployee()
        {
            var model = new Employee
            {
                Depatments = repo.GetDepartment()
            };
            return View();
        }
=======
>>>>>>> 76fb5c12c915d59871a1f0459dab4f3e9b3ed29d
        [HttpPost]
        public ActionResult CreateEmployee(Employee emp)
        {
            return View();
        }
<<<<<<< HEAD

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


=======
>>>>>>> 76fb5c12c915d59871a1f0459dab4f3e9b3ed29d
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