using HelloHowKteam.Areas.Admin.code;
using HelloHowKteam.Areas.Admin.Models;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HelloHowKteam.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login

        [HttpGet]

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]

        public ActionResult Index(LoginModel model)
        {
            var result = new AccountModel().Login(model.name, model.password);
            if(result && ModelState.IsValid)
            {
                SessionHelper.SetSession(new UserSession { name = model.name });
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ModelState.AddModelError("", "Tên đăng nhập hoặc mật khẩu không đúng!");
            }

            return View(model);
        }
    }
}