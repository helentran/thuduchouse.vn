using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRSystemTDH.Models
{
    public enum UserRole
    {
        administrator,
        agent,
        guest
    }
    public class Account
    {
        public int ID { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public int AccessLevel { get; set; }
        //public DateTime Birthday { get; set; }
        //public string Address { get; set; }
        //public string Phone { get; set; }
        //public string Mobile { get; set; }
        //public bool Permission { get; set; }
        //public bool IsActive { get; set; }
        public DateTime CreateDate { get; set; }
        //public DateTime UpdateDate { get; set; }

        //public Account()
        //{
        //    CreateDate = DateTime.Now;
        //}


        //public string Encrypt_Code
        //{
        //    get
        //    {
        //        if (string.IsNullOrEmpty(Password))
        //            return "";

        //        var provider = new SHA1CryptoServiceProvider();
        //        var encoding = new UnicodeEncoding();
        //        return Convert.ToBase64String(provider.ComputeHash(encoding.GetBytes(Password)));
        //    }
        //    set { }
        //}
        //public int AccessLevel { get; set; }

        //public Contacts Contact { get; set; }

        //public static string Role { get; set; }


        //public UserRole UserRole
        //{
        //    get
        //    {
        //        UserRole userrole;
        //        switch (Role)
        //        {
        //            case "admin":
        //                userrole = UserRole.administrator;
        //                break;
        //            case "agent":
        //                userrole = UserRole.agent;
        //                break;
        //            default:
        //                userrole = UserRole.guest;
        //                break;
        //        };
        //        return userrole;
        //    }
        //    set { }

        //}

        //public static bool Exists(Repo conn, string username, int catalogueid = 0)
        //{
        //    using (conn.DB)
        //    {
        //        var webaccid = conn.DB.Query<int>("select cast(webaccid as int) as webaccid from clientwebaccount where catalogueid = @catalogueid and username = @username and status = 'current'", new { catalogueid = catalogueid, username = username }).FirstOrDefault();
        //        return webaccid > 0;
        //    }
        //}

        //public static Guid CreateToken(UKConnectionManagement conn, int ID)
        //{
        //    using (conn.DB)
        //    {
        //        var parameters = new DynamicParameters();
        //        parameters.Add("@id", ID);
        //        parameters.Add("@token", null, DbType.Guid, ParameterDirection.Output, null);
        //        conn.DB.Execute("webaccount_create_token", parameters, null, null, CommandType.StoredProcedure);
        //        var guid = parameters.Get<Guid>("token");
        //        return guid;
        //    }
        //}

        //public static Account Load(UKConnectionManagement conn, string username, string password)
        //{
        //    using (conn.DB)
        //    {
        //        Account data = null;
        //        data = conn.DB.Query("usp_Account", new { UserName = username, Password = password, Action = "GetData_UserPass" }, commandType: CommandType.StoredProcedure).FirstOrDefault();
        //        return data;
        //    }
        //}
        //public bool Save(UKConnectionManagement conn, Account acc)
        //{
        //    using (conn.DB)
        //    {
        //        var parameters = new DynamicParameters();
        //        parameters.Add("@ID", dbType: DbType.Single, direction: ParameterDirection.Output);
        //        parameters.Add("@UserName", acc.UserName);
        //        parameters.Add("@Password", acc.Password);
        //        parameters.Add("@FirstName", acc.FirstName);
        //        parameters.Add("@LastName", acc.LastName);
        //        parameters.Add("@Birthday", acc.Birthday);
        //        parameters.Add("@Address", acc.Address);
        //        parameters.Add("@Phone", acc.Phone);
        //        parameters.Add("@Mobile", acc.Mobile);
        //        parameters.Add("@Permission", acc.Permission);
        //        parameters.Add("@IsActive", acc.IsActive);
        //        parameters.Add("@CreateDate", acc.CreateDate);
        //        parameters.Add("@UpdateDate	", acc.UpdateDate);
        //        parameters.Add("@Action	", "AddNew");
        //        int id = 0;
        //        try
        //        {
        //            conn.DB.Execute("usp_Account", parameters, commandType: CommandType.StoredProcedure);

        //            id = parameters.Get<int>("ID");
        //            return id > 0 ? true : false;
        //        }
        //        catch (Exception e)
        //        {
        //            CommonUtils.SendErrorEmail("Error saving user account", "Error was " + e.Message, false);
        //            return false;
        //        }


        //    }
        //}

    }
}