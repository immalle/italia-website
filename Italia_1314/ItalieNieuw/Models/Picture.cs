using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ItalieNieuw.Models
{
    public class Picture
    {
        public int Id { get; set; }
        public DateTime Date { get; set; }
        public String FileName { get; set; }
        [DataType(DataType.MultilineText)]
        public String Description { get; set; } 
    }
}