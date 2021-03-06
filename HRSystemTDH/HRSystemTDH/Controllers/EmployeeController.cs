﻿using GoldenLogistic.Binders;
using HRSystemTDH.Helpers;
using HRSystemTDH.Models;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace HRSystemTDH.Controllers
{
    public class EmployeeController : BaseController
    {
        // GET: Employee
        [LoginFilter]
        [Route("employee/index")]
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
        [LoginFilter]
        [HttpGet]
        [Route("employee/createEmployee/")]
        public ActionResult CreateEmployee()
        {
            var model =  new Employee() {
                Depatments = SiteConfiguration._department.Select(x =>
                                new SelectListItem
                                {
                                    Value = x.ID.ToString(),
                                    Text = x.Name
                                }),
                Companies =SiteConfiguration._company.Select(x =>
                                new SelectListItem
                                {
                                    Value = x.ID.ToString(),
                                    Text = x.Name
                                })
            };
           
            return View(model);
        }
        [LoginFilter]
        [HttpPost]
        [Route("employee/createEmployee/")]
        public ActionResult CreateNewEmployee(Employee emp)
        {
            repo.CreateEmployee(emp);
            return RedirectToAction("Index", "Employee");
        }

        [HttpGet]
        public ActionResult EmployeeUpdate(int? id)
        {
            var model = repo.GetEmployee((int)id).FirstOrDefault();
            model.Depatments = SiteConfiguration._department.ToList().Select(x =>
                                new SelectListItem
                                {
                                    Value = x.ID.ToString(),
                                    Text = x.Name
                                });
            model.Companies = SiteConfiguration._company.ToList().Select(x =>
                                new SelectListItem
                                {
                                    Value = x.ID.ToString(),
                                    Text = x.Name
                                });
            return View(model);
        }

        [HttpPost]
        public ActionResult EmployeeUpdate(Employee emp)
        {
            return View();
        }
    }
}