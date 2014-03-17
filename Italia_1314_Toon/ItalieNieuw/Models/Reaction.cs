using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ItalieNieuw.Models
{
    public class Reaction
    {
        public int Id { get; set; }
        [Display(Name = "Naam")]
        public string Name { get; set; }
        [Display(Name = "Bericht")]
        public string Message { get; set; }
        public DateTime Date { get; set; }
    }
}