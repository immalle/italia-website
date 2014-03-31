using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Web.Security;
using WebMatrix.WebData;
using ItalieNieuw.Models;
using System.Data;

namespace ItalieNieuw.Controllers
{
    [Authorize]
    public class AdminController : Controller
    {

        ItaliaDb db = new ItaliaDb();

        //
        // GET: /Admin/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Pictures()
        {
            var query = (from p in db.Pictures
                         orderby p.Date descending
                         select p).ToList();

            return View(query);
        }

        [HttpPost]
        public ActionResult UploadPicture(HttpPostedFileBase file)
        {
            // Verify that the user selected a file
            if (file != null && file.ContentLength > 0)
            {
                // extract only the filename
                var fileName = Path.GetFileName(file.FileName);
                var extension = Path.GetExtension(file.FileName);

                var newPicture = new Models.Picture();
                newPicture.Date = DateTime.Now;
                newPicture.FileName = DateTime.Now.ToString("yyyyMMddHHmmss") + extension;
                newPicture.Description = "";

                // store the file inside the right folder
                var path = Path.Combine(Server.MapPath("~/Images/ImageUploads/"), newPicture.FileName);

                file.SaveAs(path);

                db.Pictures.Add(newPicture);
                db.SaveChanges();
            }
            //return RedirectToAction("UploadPictures");
            return RedirectToAction("Pictures");
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EditPicture(Picture picture)
        {
            if (ModelState.IsValid)
            {
                db.Entry(picture).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Pictures");
            }
            return View(picture);
        }

        public ActionResult DeletePicture(int id = 0)
        {
            Picture pic = db.Pictures.Find(id);
            if (pic == null)
            {
                return HttpNotFound();
            }
            return View(pic);
        }

        [HttpPost, ActionName("DeletePicture")]
        [ValidateAntiForgeryToken]
        public ActionResult DeletePictureConfirmed(int id)
        {
            Picture pic = db.Pictures.Find(id);
            db.Pictures.Remove(pic);
            db.SaveChanges();
            return RedirectToAction("Pictures");
        }


        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        //
        // POST: /Admin/Login

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginModel model, string returnUrl)
        {
            if (ModelState.IsValid && WebSecurity.Login(model.UserName, model.Password, persistCookie: model.RememberMe))
            {
                return RedirectToLocal(returnUrl);
            }

            // If we got this far, something failed, redisplay form
            ModelState.AddModelError("", "The user name or password provided is incorrect.");
            return View(model);
        }

        //
        // POST: /Admin/LogOff

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            WebSecurity.Logout();

            return RedirectToAction("Index", "Italia");
        }


        #region Helpers
        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            else
            {
                return RedirectToAction("Index", "Italia");
            }
        }
        #endregion

    }
}
