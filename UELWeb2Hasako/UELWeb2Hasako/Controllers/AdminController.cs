using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UELWeb2Hasako.Models;
using PagedList;
using PagedList.Mvc;
using System.Web.UI;
using System.IO;

namespace UELWeb2Hasako.Controllers
{
    public class AdminController : Controller
    {
        dbHasakoProjectDataContext db = new dbHasakoProjectDataContext();
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult IndexAdmin()
        {
            return View();
        }
        public ActionResult ThongKe()
        {
            return View();
        }
        public ActionResult BlogAdmin(int ?page)
        {
            int pageNumber = (page ?? 1);
            int pageSize = 7;

            //return View(db.BLOGs.ToList());
            return View(db.BLOGs.ToList().OrderBy(n => n.MaBlog).ToPagedList(pageNumber, pageSize));
        }
        [HttpGet]
        public ActionResult ThemMoiBlog()
        {
            //Dua du lieu vao DropdownList
            ViewBag.MaNV = new SelectList(db.NHANVIENs.ToList().OrderBy(n => n.TenNV), "MaNV", "TenNV");
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoiBlog(BLOG blog,HttpPostedFileBase fileUpload)
        {
            ViewBag.MaNV = new SelectList(db.NHANVIENs.ToList().OrderBy(n => n.TenNV), "MaNV", "TenNV");
            try
            {
                if (fileUpload == null)
                {
                    ViewBag.ThongBao = "Vui lòng chọn ảnh mô tả Blog";
                    return View();
                }
                else {
                    if (ModelState.IsValid)
                    {
                        //Luu ten file 
                        var fileName = DateTime.Now.ToString("yyyymmddMMss") + "-" + Path.GetFileName(fileUpload.FileName);
                        //Luu duong dan cua file
                        var path = Path.Combine(Server.MapPath("~/images"), fileName);
                        //Kiem tra hinh anh ton tai chua
                        if (System.IO.File.Exists(path))
                        {
                            ViewBag.ThongBao = "Hình ảnh đã tồn tại, vui lòng chọn hình khác.";
                        }
                        else
                        {
                            //Luu hinh anh vao duong dan
                            fileUpload.SaveAs(path);
                        }
                        blog.Hinhanh = fileName;
                        db.BLOGs.InsertOnSubmit(blog);
                        db.SubmitChanges();
                    }
                    return RedirectToAction("ThemMoiBlog");
                }
               
            }
            catch (Exception ex)
            {
                ViewBag.ThongBao = "Đã xảy ra lỗi trong quá trình tạo mới Blog, vui lòng thử lại!";

            }

            return View();
        }

        public ActionResult ChiTietBlog(int id)
        {
            //Lay ra doi tuong Blog
            BLOG blog = db.BLOGs.SingleOrDefault(n => n.MaBlog == id);
            ViewBag.MaBlog = blog.MaBlog;
            if (blog == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(blog);
        }

        [HttpGet]
        public ActionResult XoaBlog(int id)
        {
            
            
                BLOG blog = db.BLOGs.SingleOrDefault(n => n.MaBlog == id);
                ViewBag.MaBlog = blog.MaBlog;
                if (blog == null)
                {
                    Response.StatusCode = 404;
                    return null;
                }

            //ViewBag.ThongBao = "Đã xảy ra lỗi trong quá trình xóa, vui lòng thử lại!";


            return View(blog) ;
        }
        [HttpPost, ActionName("XoaBlog")]

        public ActionResult XacNhanXoa(int id)
        {
            try { 

            BLOG blog = db.BLOGs.SingleOrDefault(n => n.MaBlog == id);
            ViewBag.MaBlog = blog.MaBlog;
            if (blog == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            db.BLOGs.DeleteOnSubmit(blog);
            db.SubmitChanges();


                //ViewBag.ThongBao = "Đã xảy ra lỗi trong quá trình xóa, vui lòng thử lại!";

            }
            catch
            {
                ViewBag.ThongBao = "Đã xảy ra lỗi trong quá trình xóa, vui lòng thử lại!";

            }
            return RedirectToAction("BlogAdmin");
        }

        [HttpGet]
        public ActionResult SuaBlog(int id)
        {
            BLOG blog = db.BLOGs.SingleOrDefault(n => n.MaBlog == id);
            if (blog == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //Dua du lieu vao DropdownList
            ViewBag.MaNV = new SelectList(db.NHANVIENs.ToList().OrderBy(n => n.TenNV), "MaNV", "TenNV");
            return View(blog);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SuaBlog(BLOG blog,HttpPostedFileBase fileUpload)
        {
            ViewBag.MaNV = new SelectList(db.NHANVIENs.ToList().OrderBy(n => n.TenNV), "MaNV", "TenNV");
            if (fileUpload == null)
            {
                ViewBag.ThongBao = "Vui lòng chọn ảnh mô tả Blog";
                return View();
            }
            else
            {
                try
                {
                    if (ModelState.IsValid)
                    {
                        //Luu ten file 
                        var fileName = DateTime.Now.ToString("yyyymmddMMss") + "-" + Path.GetFileName(fileUpload.FileName);
                        //Luu duong dan cua file
                        var path = Path.Combine(Server.MapPath("~/images"), fileName);
                        //Kiem tra hinh anh ton tai chua
                        if (System.IO.File.Exists(path))
                        {
                            ViewBag.ThongBao = "Hình ảnh đã tồn tại, vui lòng chọn hình khác.";
                        }
                        else
                        {
                            //Luu hinh anh vao duong dan
                            fileUpload.SaveAs(path);
                        }
                        blog.Hinhanh = fileName;
                        UpdateModel(blog);
                        db.SubmitChanges();
                        return RedirectToAction("BlogAdmin");

                    }
                }
                catch(Exception ex)
                {
                    ViewBag.ThongBao = "Đã xảy ra lỗi trong quá trình sửa Blog, vui lòng thử lại!";

                }
                return View();

            }
        }
    }
}