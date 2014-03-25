using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ItalieNieuw.Models
{
    public class DailyProgram
    {
        public int Id { get; set; }
        public DateTime Date { get; set; }
        public String Title { get; set; }
        public String Info { get; set; }
    }
}