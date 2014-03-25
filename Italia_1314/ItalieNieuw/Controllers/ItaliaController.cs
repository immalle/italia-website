using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ItalieNieuw.Models
{
    public class ItaliaController : Controller
    {
        ItaliaDb db = new ItaliaDb();
        //
        // GET: /Italia/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Dagverslagen()
        {
            ViewData["DailyReports"] = db.DailyReport.ToList();
            return View();
        }

        public ActionResult Programma()
        {
            return View();
        }
        public ActionResult Fotos()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Fotos(HttpPostedFileBase file)
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
            return RedirectToAction("Fotos");
        }

        public ActionResult Gastenboek()
        {
            ViewData["Reactions"] = db.Reaction.ToList();
            return View();
        }

        [HttpPost]
        public ActionResult AddReaction(Reaction Reaction)
        {
            if (Reaction.Name == null)
            {
                Reaction.Name = "Anoniem";
            }
            if (Reaction.Message != null)
            {
                Reaction.Date = DateTime.Now;
                if (ModelState.IsValid)
                {
                    db.Reaction.Add(Reaction);
                    db.SaveChanges();
                    return RedirectToAction("Gastenboek");
                }
            }
            else { return RedirectToAction("Gastenboek"); }


            return View(Reaction);
        }

    }
}
