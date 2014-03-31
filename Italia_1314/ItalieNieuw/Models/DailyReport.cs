using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ItalieNieuw.Models
{
    public class DailyReport
    {
        public int Id { get; set; }
        [DataType(DataType.Date)]
        public DateTime Date { get; set; }
        [DataType(DataType.MultilineText)]
        [AllowHtml]
        public String Report { get; set; }
        public String Title { get; set; }
    }
}