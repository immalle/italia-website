using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ItalieNieuw.Models;
using System.IO;

namespace ItalieNieuw.Controllers
{
    [Authorize]
    public class DailyReportController : Controller
    {
        private ItaliaDb db = new ItaliaDb();

        // for use with CKEditor's imagebrowser plugin
        // which requires all the pictures on the server as JSON
        class JsonPic
        {
            public string image { get; set; }
            //public string thumb { get; set; }
            //public string folder { get; set; }
        };

        public ActionResult GetPicturesAsJson()
        {
            var pics = (from p in db.Pictures
                        select p
                           ).ToList();

            var jsonpics = new List<JsonPic>();
            foreach (var pic in pics)
            {
                jsonpics.Add(new JsonPic { image = Url.Content("~/Images/ImageUploads/") + pic.FileName });
            }

            return Json(jsonpics, JsonRequestBehavior.AllowGet);
        }


        //
        // GET: /DailyReport/

        public ActionResult Index()
        {
            return View(db.DailyReports.ToList());
        }

        //
        // GET: /DailyReport/Details/5

        public ActionResult Details(int id = 0)
        {
            DailyReport dailyreport = db.DailyReports.Find(id);
            if (dailyreport == null)
            {
                return HttpNotFound();
            }
            return View(dailyreport);
        }

        //
        // GET: /DailyReport/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /DailyReport/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(DailyReport dailyreport)
        {
            if (ModelState.IsValid)
            {
                db.DailyReports.Add(dailyreport);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(dailyreport);
        }

        //
        // GET: /DailyReport/Edit/5

        public ActionResult Edit(int id = 0)
        {
            DailyReport dailyreport = db.DailyReports.Find(id);
            if (dailyreport == null)
            {
                return HttpNotFound();
            }
            return View(dailyreport);
        }

        //
        // POST: /DailyReport/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(DailyReport dailyreport)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dailyreport).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(dailyreport);
        }

        //
        // GET: /DailyReport/Delete/5

        public ActionResult Delete(int id = 0)
        {
            DailyReport dailyreport = db.DailyReports.Find(id);
            if (dailyreport == null)
            {
                return HttpNotFound();
            }
            return View(dailyreport);
        }

        //
        // POST: /DailyReport/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            DailyReport dailyreport = db.DailyReports.Find(id);
            db.DailyReports.Remove(dailyreport);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}