using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRSystemTDH.Models
{
    public class Department
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string ShortName { get; set; }
        public int Index { get; set; }
        public Company CompanyID { get; set; }
    }
}