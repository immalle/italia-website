﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ItalieNieuw.Models
{
    public class DailyReports
    {
        public int Id { get; set; }
        // TODO : Datum anders weergeven. SOLVED
        public DateTime Date { get; set; }
        public String Report { get; set; }
        public String Title { get; set; }

    }
}