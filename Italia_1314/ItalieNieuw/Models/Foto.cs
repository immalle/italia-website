using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ItalieNieuw.Models
{
    public class Picture
    {
        public int Id { get; set; }
        public DateTime UploatDate { get; set; }
        public String Path { get; set; }
        public String Description { get; set; } 
    }
}