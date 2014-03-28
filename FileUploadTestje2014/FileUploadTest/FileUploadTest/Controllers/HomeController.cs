using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;

namespace FileUploadTest.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            // Toon alle huidige foto's

            //Regex reg = new Regex(@"image(\d)+[.]");

            //if (list.Count == 0)
            //    return "image1.jpg";

            //var lastName =
            //    list.Select(x => (new FileInfo(x)).Name.Replace("image", "").Replace(".jpg", "")).OrderBy(x => x).Last();

            //string.Format("image{0}.png", int.Parse(lastName) + 1);


            //List<string> jpgFiles = new List<string>();

            //jpgFiles.Add("~/ImageUploads/image1.jpg");
            //jpgFiles.Add("~/ImageUploads/image2.jpg");

            //ViewBag.jpgFiles = jpgFiles;

            List<string> jpgFiles;
            jpgFiles = Directory.GetFiles(Server.MapPath("/ImageUploads/"), "*.jpg").ToList<string>();
            
            ViewBag.jpgFiles = jpgFiles;
            return View();
        }

        // This action handles the form POST and the upload
        [HttpPost]
        public ActionResult UploadFile(HttpPostedFileBase file)
        {
            if (file != null && file.ContentLength > 0)
            {
                var fileName = Path.GetFileName(file.FileName);
                var path = Path.Combine(Server.MapPath("~/ImageUploads/"), fileName);
                file.SaveAs(path);
            }                
        
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult UploadMultipleFiles(HttpPostedFileBase[] files)
        {
            foreach(var file in files)
            {
                if (file != null && file.ContentLength > 0)
                {
                    var fileName = Path.GetFileName(file.FileName);
                    var path = Path.Combine(Server.MapPath("~/ImageUploads/"), fileName);
                    file.SaveAs(path);
                }
            }
            return RedirectToAction("Index");
        }

        public ViewResult About()
        {
            throw new NotImplementedException();
        }

        public ViewResult Contact()
        {
            throw new NotImplementedException();
        }
    }
}