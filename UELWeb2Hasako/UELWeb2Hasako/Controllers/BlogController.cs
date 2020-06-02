using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UELWeb2Hasako.Models;

namespace UELWeb2Hasako.Controllers
{
    public class BlogController : Controller
    {
        // GET: Blog
        public ActionResult Index()
        {
            return View();
        }
        dbHasakoProjectDataContext data = new dbHasakoProjectDataContext();
        public ActionResult GetAllBlog()
        {
            var blog = from b in data.BLOGs select b;
            return View(blog);
        }
        public ActionResult Details(int id)
        {
            var blog = from s in data.BLOGs
                       where s.MaBlog == id
                       select s;
            return View(blog.Single());
        }

    }
}