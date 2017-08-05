using System.Collections.Generic;

namespace HRSystemTDH.Models
{
    public class Department
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string ShortName { get; set; }
        public int Index { get; set; }
        public List<Company> Company { get; set; }
        public string CompanyID { get; set; }
        public Department() { }
    }
}