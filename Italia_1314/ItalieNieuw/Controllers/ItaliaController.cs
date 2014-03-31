using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ItalieNieuw.Models
{
    public class FotosViewModel
    {
        public DateTime Date { get; set; }
    }

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
           var query = (from dagv in db.DailyReports select dagv).ToList();
            return View(query);
        }

        public ActionResult GetDagverslag(int id = 0) 
        {
            var query = (from verslag in db.DailyReports where verslag.Id == id select verslag).ToList();
            return Json(query, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Programma()
        {
            var query = (from dp in db.DailyPrograms select dp).ToList();
            return View(query);
        }

        public ActionResult GetDagprogramma(int id = 0) 
        {
            var query = (from dagp in db.DailyPrograms where dagp.Id == id select dagp).ToList();
            return Json(query, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Fotos()
        {
            /*
            // this gives "Only parameterless constructors and initializers are supported in LINQ to Entities." error
            var queryByDay = (from pic in db.Pictures
                              group pic 
                              by new { Date = new DateTime(pic.Date.Year, pic.Date.Month, pic.Date.Day) }
                              into picgroup
                              orderby picgroup ascending
                              select picgroup
                              );
              */                                  
            
            // first make a list with all picture where the time is stripped from the date
            var stripped = (from pic in db.Pictures
                            select pic
                            ).ToList();

            foreach (var pic in stripped)
            {
                pic.Date = new DateTime(pic.Date.Year, pic.Date.Month, pic.Date.Day);
            }

            // now we can use orderby to sort by day, ignorning time
            var byday = (from pic in stripped
                         group pic
                         by pic.Date
                         /*
                             into picgroup
                             orderby picgroup.Key ascending
                             select picgroup
                          */
                        );

            return View(byday);
        }
        
        public ActionResult Gastenboek()
        {
            ViewData["Reactions"] = db.Reactions.ToList();
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
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
                    db.Reactions.Add(Reaction);
                    db.SaveChanges();
                    return RedirectToAction("Gastenboek");
                }
            }
            else { return RedirectToAction("Gastenboek"); }


            return View(Reaction);
        }

    }
}
