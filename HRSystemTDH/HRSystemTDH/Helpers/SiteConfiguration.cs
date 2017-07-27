using HRSystemTDH.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Web;
using System.Web.Mvc;

namespace HRSystemTDH.Helpers
{
    public class SiteConfiguration
    {
        public static string Site_Status;
        public static string Site_HostName;
        //public static string Site_Email;
        //public static string Site_Admin_Email;
        public static string Site_Name;
        //public static string Site_Domain;
        //public static string DbEmailConnection;
        public static int Site_ProID;
        //public static IEnumerable<SearchEngineOptimize> Site_SEOList;
        //public static Programs Site_Competition;
        public static WebsiteSettings Site_Settings;
        public static Repo Site_Repo;
        public static void StoreSettings(HttpApplicationState application)
        {
            LoadTPFSettings();
        }
        private static void LoadTPFSettings()
        {
            var application = HttpContext.Current.Application;
            Repo repo = (Repo)application["DBConnection"];
            var dbuser = ConfigurationManager.AppSettings["dbuser"] ?? "";
            var dbpass = ConfigurationManager.AppSettings["dbpass"] ?? "";
            var dbserver = ConfigurationManager.AppSettings["dbserver"] ?? "";
            var sitename = ConfigurationManager.AppSettings["sitename"] ?? "";
            //var programid = ConfigurationManager.AppSettings["programid"] != null ? Convert.ToInt32(ConfigurationManager.AppSettings["programid"]) : 1;
            //var sitestatus = ConfigurationManager.AppSettings["site_status"] ?? "";
            //var sitehost = ConfigurationManager.AppSettings["site_host"] ?? "";
            var websetting = new WebsiteSettings();

            try
            {
                if (repo == null)
                {
                    var dbcn = new DBConnect(dbuser, dbpass, dbserver, sitename);
                    if (dbcn != null)
                    {
                        using (var conn = dbcn.HRSystem)
                        {
                            if (conn != null)
                            {
                                repo = new Repo(dbcn);
                                Site_Repo = repo;
                                application["DBConnection"] = repo;
                            }
                        }
                    }

                    application.Lock();
                    application.UnLock();
                }
                //Site_ProID = programid;
                //Site_Name = sitename;
                //Site_Settings = websetting;
                //Site_HostName = sitehost;
                //Site_Status = sitestatus;
            }
            catch
            {

            }
        }
    }
}