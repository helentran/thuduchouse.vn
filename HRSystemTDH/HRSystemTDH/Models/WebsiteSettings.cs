using HRSystemTDH.Helpers;
using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;

namespace HRSystemTDH.Models
{
    public class DBConnect
    {
        protected SqlConnection Connection
        {
            get; set;
        }
        private readonly string DB_SERVER;
        private readonly string DB_USER;
        private readonly string DB_PASS;
        private readonly string DB_SITENAME;

        public DBConnect(string dbuser="sa", string dbpass="sa@123", string dbserver= "localhost", string dbname= "HRSystem")
        {
            DB_SERVER = dbserver;
            DB_USER = dbuser;
            DB_PASS = dbpass;
            DB_SITENAME = dbname;

        }

        private SqlConnection OpenAndSwitch(string dbname)
        {
            var dbserver = DB_SERVER;
            var connection_string = "User ID=" + DB_USER + "; Password=" + DB_PASS + ";Initial Catalog='" + dbname + "'; Data Source=" + dbserver + "; Pooling=True";
            var dbconnect= HttpContext.Current.Application["DBConnection"] as SqlConnection;

           // Connection = (SqlConnection)HttpContext.Current.Application["DBConnection"];
            if (Connection == null)
            {
                Connection = new SqlConnection(connection_string);
                Connection.Open();
            }
            else if (Connection.State != System.Data.ConnectionState.Open)
            {
                try
                {
                    Connection.Close();
                }
                catch (Exception)
                {
                    //var msg = CommonUtils.Parameters2ErrorString(e, dbname);
                    //CommonUtils.SendErrorEmail("OpenAndSwitch", msg);
                }
                Connection.ConnectionString = connection_string;
                Connection.Open();
            }
            else
            {
                Connection.ChangeDatabase(dbname);
            }

            return Connection;
        }
        public SqlConnection HRSystem
        {
            get
            {
                return OpenAndSwitch(DB_SITENAME);
            }
        }
    }

    public class WebsiteSettings
    {
        public string dbuser { get; set; }
        public string dbpass { get; set; }
        public string dbserver { get; set; }
        public string sitename { get; set; }
        public int programid { get; set; }
        public string Url { get; set; }
        public string smtpclient { get; set; }

        public WebsiteSettings()
        {
            Url = "";
        }
    }
}