using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ItalieNieuw.Models
{
    public class Foto
    {
        public int Id { get; set; }
        public String Naam { get; set; }
        public DateTime UploadDatum { get; set; }
        public String Pad { get; set; }
        public String Beschrijving { get; set; } 
    }
}