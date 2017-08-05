using HRSystemTDH.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRSystemTDH.Models
{
    public class Staff
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public Department Apartment { get; set; }
    }
}