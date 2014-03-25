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
        // This action renders the form
        public ActionResult Index()
        {
            return View();
        }

        // This action handles the form POST and the upload
        [HttpPost]
        public ActionResult Index(HttpPostedFileBase file)
        {
            // Verify that the user selected a file
            if (file != null && file.ContentLength > 0)
            {
                // extract only the filename
                var fileName = Path.GetFileName(file.FileName);
                // store the file inside the right folder
                var path = Path.Combine(Server.MapPath("~/ImageUploads/"), fileName);
                file.SaveAs(path);

                //Regex reg = new Regex(@"image(\d)+[.]");

                //var list = Directory.GetFiles(fileName, "*.jpg").Where(path => reg.IsMatch(path))
                //         .ToList();

                //if (list.Count == 0)
                //    return "image1.jpg";

                //var lastName =
                //    list.Select(x => (new FileInfo(x)).Name.Replace("image", "").Replace(".jpg", "")).OrderBy(x => x).Last();

                //string.Format("image{0}.png", int.Parse(lastName) + 1);

                
                
                
                
            }
            // redirect back to the index action to show the form once again
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