using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ItalieNieuw.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Pictures()
        {
            return View();
        }

        [HttpPost]
        public ActionResult UploadPictures(HttpPostedFileBase file)
        {
            // Verify that the user selected a file
            if (file != null && file.ContentLength > 0)
            {
                // extract only the filename
                var fileName = Path.GetFileName(file.FileName);
                // store the file inside the right folder
                var path = Path.Combine(Server.MapPath("~/Images/ImageUploads/"), fileName);
                file.SaveAs(path);
            }
            //return RedirectToAction("UploadPictures");
            return View();
        }


    }
}
