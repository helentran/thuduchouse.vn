﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRSystemTDH.Models
{
    public class Staff
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public Apartment Apartment { get; set; }
    }
}