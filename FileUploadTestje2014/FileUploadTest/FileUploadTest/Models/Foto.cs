using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FileUploadTest.Models
{
    public class Foto
    {
        public int id { get; set; }
        public String naam { get; set; }
        public DateTime uploadDatum { get; set; }
        public String pad { get; set; }
        public string beschrijving { get; set; }
    }
}