﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRSystemTDH.Models
{
    public class Company
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string CompanyType { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string Fax { get; set; }
        public string Website { get; set; }
    }
}