using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UELWeb2Hasako.Models;
using PagedList;
using PagedList.Mvc;
using System.IO;

namespace UELWeb2Hasako.Controllers
{
    public class AdminController : Controller
    {
        dbHasakoProjectDataContext data = new dbHasakoProjectDataContext(); 
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
        //Quản lý sản phẩm - Võ Nguyễn Tâm An - Begin
        public ActionResult QuanLySanPham()
        {
            //int pageNumber = (page ?? 1);
            //int pageSize = 20; 
            //return View(data.HAISANKHOs.ToList().OrderBy(n=>n.MaHS).ToPagedList(pageNumber, pageSize));
            return View(data.HAISANKHOs.ToList());
        }
        [HttpGet]
        public ActionResult ThemMoiHSK()
        {
            ViewBag.MaDM = new SelectList(data.DANHMUCHAISANKHOs.ToList().OrderBy(n => n.TenDM), "MaDM", "TenDM");
            return View();
        }
        //mô tả sử dụng tinymce, chưa lưu đc 
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoiHSK(HAISANKHO hsk, HttpPostedFileBase fileUpload)
        {
            ViewBag.MaDM = new SelectList(data.DANHMUCHAISANKHOs.ToList().OrderBy(n => n.TenDM), "MaDM", "TenDM");
            if (fileUpload == null)
            { ViewBag.Thongbao = "Vui lòng chọn hình ảnh cho sản phẩm";
                return View();
            }
            else
            {
                if(ModelState.IsValid)
                {
                    var fileName = Path.GetFileName(fileUpload.FileName);
                    var path = Path.Combine(Server.MapPath("~/images"), fileName);
                    if (System.IO.File.Exists(path))
                    {
                        ViewBag.Thongbao = "Hình ảnh đã tồn tại";
                    }
                    else
                    {
                        fileUpload.SaveAs(path);
                    }
                    hsk.Anhbia = fileName;
                    data.HAISANKHOs.InsertOnSubmit(hsk);
                    data.SubmitChanges();
                }
            }
            return RedirectToAction("QuanLySanPham");
        }
        public ActionResult ChitietHSK(int id)
        {
            HAISANKHO hsk = data.HAISANKHOs.SingleOrDefault(n => n.MaHS == id);
            ViewBag.Mahs = hsk.MaHS;
            if(hsk==null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(hsk);
        }
        [HttpGet]
        public ActionResult XoaHSK(int id)
        {
            HAISANKHO hsk = data.HAISANKHOs.SingleOrDefault(n => n.MaHS == id);
            ViewBag.Mahs = hsk.MaHS;
            if(hsk==null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(hsk);
        }
        [HttpPost, ActionName("XoaHSK")]
        public ActionResult Xacnhanxoa(int id)
        {
            HAISANKHO hsk = data.HAISANKHOs.SingleOrDefault(n => n.MaHS == id);
            ViewBag.Mahs = hsk.MaHS;
            if (hsk == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            data.HAISANKHOs.DeleteOnSubmit(hsk);
            data.SubmitChanges();
            return RedirectToAction("QuanLySanPham");
        }
        [HttpGet]
        public ActionResult SuaHSK(int id)
        {
            HAISANKHO hsk = data.HAISANKHOs.SingleOrDefault(n => n.MaHS == id);
            if (hsk == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            ViewBag.MaDM = new SelectList(data.DANHMUCHAISANKHOs.ToList().OrderBy(n => n.TenDM), "MaDM", "TenDM");
            return View(hsk);

        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SuaHSK(HAISANKHO hsk, HttpPostedFileBase fileUpload)
        {
            ViewBag.MaDM = new SelectList(data.DANHMUCHAISANKHOs.ToList().OrderBy(n => n.TenDM), "MaDM", "TenDM");
            if (fileUpload == null)
            {
                ViewBag.Thongbao = "Vui lòng chọn hình ảnh";
                return View();
            }
            else
            {
                if (ModelState.IsValid)
                {
                    var fileName = Path.GetFileName(fileUpload.FileName);
                    var path = Path.Combine(Server.MapPath("~/images"), fileName);
                    if (System.IO.File.Exists(path))
                    {
                        ViewBag.Thongbao = "Hình ảnh đã tồn tại";
                    }
                    else
                    {
                        fileUpload.SaveAs(path);
                    }
                    hsk.Anhbia = fileName;
                    UpdateModel(hsk);
                    data.SubmitChanges();
                }
            }
            return RedirectToAction("QuanLySanPham");
        }

        //Quản lý sản phẩm - Võ Nguyễn Tâm An - End
        //Quản lý đơn hàng - Võ Nguyễn Tâm An - Start
        public ActionResult QuanLyDonHang()
        {
            //int pageNumber = (page ?? 1);
            //int pageSize = 20; 
            //return View(data.HAISANKHOs.ToList().OrderBy(n=>n.MaHS).ToPagedList(pageNumber, pageSize));
            return View(data.DONHANGs.ToList());
        }
        public ActionResult SuaDonHang()
        {
            return View();
        }
        public ActionResult ChiTietDonHang(int id)
        {
            DONHANG dh = data.DONHANGs.SingleOrDefault(n => n.MaDH == id);
            ViewBag.Madh = dh.MaDH;
            if (dh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(dh);
        }
        public ActionResult QuanLyChiTietDonHang(int id)
        {
            return PartialView(data.CHITIETDONHANGs.Where(n=>n.MaDH==id).ToList());
        }
        [HttpGet]
        public ActionResult XoaDonHang(int id)
        {
            DONHANG dh = data.DONHANGs.SingleOrDefault(n => n.MaDH == id);
            ViewBag.Madh = dh.MaDH;
            if (dh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(dh);
        }
        [HttpPost, ActionName("XoaDonHang")]
        public ActionResult Xacnhanxoadonhang(int id)
        {
            DONHANG dh = data.DONHANGs.SingleOrDefault(n => n.MaDH == id);
            ViewBag.Madh = dh.MaDH;
            if (dh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            data.DONHANGs.DeleteOnSubmit(dh);
            data.SubmitChanges();
            return RedirectToAction("QuanLyDonHang");
        }
        [HttpGet]
        public ActionResult ThemMoiDonHang()
        {
            ViewBag.MaKH = new SelectList(data.KHACHHANGs.ToList().OrderBy(n => n.TenKh), "MaKH", "TenKh");
            ViewBag.MaNV = new SelectList(data.NHANVIENs.ToList().OrderBy(n => n.TenNV), "MaNV", "TenNV");
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoiDonHang(DONHANG dh)
        {
            ViewBag.MaKH = new SelectList(data.KHACHHANGs.ToList().OrderBy(n => n.TenKh), "MaKH", "TenKh");
            ViewBag.MaNV = new SelectList(data.NHANVIENs.ToList().OrderBy(n => n.TenNV), "MaNV", "TenNV"); 
            data.DONHANGs.InsertOnSubmit(dh);
            data.SubmitChanges();
            return RedirectToAction("QuanLyDonHang");
        }

    }
}