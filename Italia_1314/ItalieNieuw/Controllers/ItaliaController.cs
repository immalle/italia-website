using System;
using System.Collections.Generic;
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

        public ActionResult GetDagverslag(int id = 0) 
        {
            var query = (from verslag in db.DailyReport where verslag.Id == id select verslag).ToList();
            return Json(query, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Programma()
        {
            return View();
        }

        public ActionResult Fotos()
        {
            return View();
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
