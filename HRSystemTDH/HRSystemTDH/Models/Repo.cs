using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Xml.Linq;

namespace HRSystemTDH.Models
{
    public class Repo
    {
        private DBConnect DB;
        public Repo(DBConnect dbconnect)
        {
            DB = dbconnect;
        }
        #region Menu
        public MenuEntry GetMenu(int webID = 0, int id = 0)
        {
            var entrylist = new MenuEntry();

            using (var conn = DB.HRSystem)
            {
                entrylist = conn.Query<MenuEntry>("spm_Menu", new { sql = "select", WebID = webID, ID = id }, commandType: CommandType.StoredProcedure).First();
            }

            return entrylist;
        }
        public List<MenuEntry> GetMenuList(int webID = 0)
        {
            var entrylist = new List<MenuEntry>();

            using (var conn = DB.HRSystem)
            {
                entrylist = conn.Query<MenuEntry>("spm_Menu", new { sql = "select", WebID = webID }, commandType: CommandType.StoredProcedure).ToList();
            }

            return entrylist;
        }
        public void CreateEntry(MenuEntry mn)
        {
            using (var conn = DB.HRSystem)
            {
                int list = conn.Execute("spm_Menu", new
                {
                    sql = "insert",
                    WebID = 1,
                    Name = mn.Name,
                    Note = mn.Note,
                    Index = mn.Index,
                    Class = mn.Class,
                    Slug = mn.Slug,
                    ParentSlugID = mn.ParentSlugID,
                    Action = mn.Action,
                    Image = mn.Image,
                    Active = mn.Active
                }, commandType: CommandType.StoredProcedure);
            }
        }
        public void UpdateEntry(MenuEntry mn)
        {
            using (var conn = DB.HRSystem)
            {
                conn.Execute("spm_Menu", new
                {
                    sql = "update",
                    ID = mn.ID,
                    WebID = 1,
                    Name = mn.Name,
                    Note = mn.Note,
                    Index = mn.Index,
                    Class = mn.Class,
                    Slug = mn.Slug,
                    ParentSlugID = mn.ParentSlugID,
                    Action = mn.Action,
                    Image = mn.Image,
                    Active = mn.Active

                }, commandType: CommandType.StoredProcedure);
            }
        }
        public void UpdatePositionEntry(List<int> listIDs)
        {
            var sql = "UPDATE Menu SET index = CASE id";
            for (int i = 0; i < listIDs.Count; i++)
            {
                var reindex = i + 1;
                int id = Convert.ToInt32(listIDs[i]);
                sql += " WHEN " + id + " THEN " + reindex;
            }
            sql += "ELSE index END WHERE id in (" + String.Join(",", listIDs) + ")";

        }
        public void RemoveEntry(int id)
        {
            using (var conn = DB.HRSystem)
            {
                int list = conn.Execute("spm_Menu", new
                {
                    sql = "remove",
                    ID = id
                }, commandType: CommandType.StoredProcedure);
            }
        }
        #endregion

        #region Employee
        public List<Employee> GetEmployee(int idemp = 0)
        {
            var stafflist = new List<Employee>();
            using (var conn = DB.HRSystem)
            {
                stafflist = conn.Query<Employee>("spm_Employee", new { sql = "select" }, commandType: CommandType.StoredProcedure).ToList();
            }
            return stafflist;
        }
        public void CreateEmployee(Employee emp)
        {
            using (var conn = DB.HRSystem)
            {
                int list = conn.Execute("[spm_Employee]", new
                {
                    sql = "insert",
                    IDEmp = emp.IDEmp,
                    IDDept = emp.IDDept,
                    IDComp = emp.IDComp,
                    CodeEmp = emp.CodeEmp,
                    FirstName = emp.FirstName,
                    LastName = emp.LastName,
                    DateOfBirth = emp.DateOfBirth,
                    PlaceOfBirth = emp.PlaceOfBirth,
                    EthnicGroup = emp.EthnicGroup,
                    Religion = emp.Religion,
                    PlaceOfOrigin = emp.PlaceOfOrigin,
                    Nationality = emp.Nationality,
                    CurrentAddress = emp.CurrentAddress,
                    ResidentAddress = emp.ResidentAddress,
                    Telephone = emp.Telephone,
                    Mobile = emp.Mobile,
                    IDNumber = emp.IDNumber,
                    DateOfIssue = emp.DateOfIssue,
                    PlaceOfIssue = emp.PlaceOfIssue,
                    Gender = emp.Gender,
                    Image = emp.Image,
                    Position = emp.Position,
                    Email = emp.Email
                }, commandType: CommandType.StoredProcedure);
            }
        }
        #endregion

        #region Department
        public List<Department> GetDepartment()
        {
            var stafflist = new List<Department>();
            using (var conn = DB.HRSystem)
            {
                stafflist = conn.Query<Department>("[spm_Department]", new { sql = "select" }, commandType: CommandType.StoredProcedure).ToList();
            }
            return stafflist;
        }
        #endregion

        #region Account
        public Account GetAccount(string username, string password)
        {
            using (var conn = DB.HRSystem)
            {
                var data = new Account();
                data = conn.Query<Account>("spm_Account", new { Username = username, Password = password, Action = "select" }, commandType: CommandType.StoredProcedure).FirstOrDefault();

                return data;
            }
        }
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
        #endregion
        #region SEO

        #endregion

    }
}