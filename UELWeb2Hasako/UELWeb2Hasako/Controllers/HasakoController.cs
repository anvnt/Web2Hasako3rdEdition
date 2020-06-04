using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using UELWeb2Hasako.Models;
using PagedList;
using PagedList.Mvc;


namespace UELWeb2Hasako.Controllers
{
    public class HasakoController : Controller
    {
        // GET: Hasako
        //Võ Nguyễn Tâm An section
        dbHasakoProjectDataContext data = new dbHasakoProjectDataContext();
        
        //Sản phẩm mới 
        private List<HAISANKHO> SanPhamMoiTatCa(int count)
        {
            return data.HAISANKHOs.OrderByDescending(a => a.Ngaycapnhat).Take(count).ToList();
        }
        private List<HAISANKHO> SanPhamMoiHSK(int count)
        {
            return data.HAISANKHOs.Where(s => s.MaDM != 7).OrderByDescending(a => a.Ngaycapnhat).Take(count).ToList();
        }
        private List<HAISANKHO> SanPhamMoiHSCB(int count)
        {
            return data.HAISANKHOs.Where(s => s.MaDM == 7).OrderByDescending(a => a.Ngaycapnhat).Take(count).ToList();
        }
        public ActionResult IndexHasako()
        {
            ViewBag.Title = "Hasako";
            return View();
        }
        public ActionResult SanPhamMoiTatCa()
        {
            var spmoi = SanPhamMoiTatCa(16);
            return PartialView(spmoi);
        }
        //Sản phẩm mới thuộc danh mục Hải sản khô
        public ActionResult SanPhamMoiHSK()
        {
            var spmoi = SanPhamMoiHSK(16);
            return PartialView(spmoi);
        }
        //Sản phẩm mới thuộc danh mục Hải sản chế biến       
        public ActionResult SanPhamMoiHSCB()
        {
            var spmoi = SanPhamMoiHSCB(16);
            return PartialView(spmoi);
        }
        //chưa code
        public ActionResult SanPhamMoiNhat()
        {
            var sp = SanPhamMoiTatCa(1);
            var spmoi = sp.FirstOrDefault();
            DANHMUCHAISANKHO dm = data.DANHMUCHAISANKHOs.FirstOrDefault(x => x.MaDM == spmoi.MaDM);
            string tendm = dm.TenDM;
            ViewBag.tendm = tendm;
            return PartialView(spmoi);
        }
        //Section danh mục phổ biến
        public ActionResult DanhMucPhoBien()
        {
            List<DANHMUCHAISANKHO> dm = data.DANHMUCHAISANKHOs.Take(6).ToList();
            return PartialView(dm);
        }
        
        //Sản phẩm nổi bật đang khuyến mãi
        public ActionResult KhuyenMaiTrongTuan()
        {
            List <HAISANKHO> hs = data.HAISANKHOs.ToList();
            return PartialView(Models.KhuyenMaiTrongTuan.LaySanPham());
        }
        //Sản phẩm đặc trưng của Hasako
        public ActionResult TopDacTrung()
        {
            var sp = data.HAISANKHOs.OrderByDescending(x => x.Dongia).Take(16);
            return PartialView(sp);
        }
        //Sản phẩm đang giảm giá
        public ActionResult TopDangGiamGia()
        {
            return PartialView(SanPhamDangGiamGia.LaySanPham());
        }
        //Sản phẩm được review tốt, chưa code
        public ActionResult TopDanhGiaTot()
        {
            return PartialView();
        }
        public ActionResult BanChayNhatTop20()
        {
            return PartialView(Models.BanChayNhat.LaySanPham(20));
        }
        public ActionResult BanChayNhatHSK()
        {
            return PartialView(Models.BanChayNhat.LaySanPham(20).Where(x => x.MaDM != 7));
        }
        public ActionResult BanChayNhatHSCB()
        {
            return PartialView(Models.BanChayNhat.LaySanPham(20).Where(x => x.MaDM == 7));
        }
        public ActionResult Banner()
        {
            return PartialView(Models.BanChayNhat.LaySanPham(3));
        }
        //Các bạn sections
        public ActionResult SanPham(int ? page)
        {   //Tạo biến quy định số sp/ 1 trang
            int pageSize = 15;
            int pageNum = (page ?? 1);
            // var sanpham = from sp in data.HAISANKHOs select sp;
            //return View(sanpham);
            var sanphammoi = Laysanphammoi(60);
            return View(sanphammoi.ToList().OrderBy(n=>n.MaHS).ToPagedList(pageNum, pageSize));
        }
        private List<HAISANKHO> Laysanphammoi(int count)
        {
            return data.HAISANKHOs.OrderByDescending(a => a.Ngaycapnhat).Take(count).ToList();
        }
        /*public ActionResult ChiTietSanPham(int id)
         { using (dbHasakoProjectDataContext data = new dbHasakoProjectDataContext()) { 
             List<HAISANKHO> hAISANKHOs = data.HAISANKHOs.ToList();
             List<MOTAHAISANKHO> mOTAHAISANKHOs = data.MOTAHAISANKHOs.ToList();
             List<DANHMUCHAISANKHO> dANHMUCHAISANKHOs = data.DANHMUCHAISANKHOs.ToList();
             var spdanh = from c in dANHMUCHAISANKHOs
                          join a in hAISANKHOs on c.MaDM equals a.MaDM into table1
                          from a in table1.ToList()
                          join b in mOTAHAISANKHOs on a.MaHS equals b.MaHS into table2
                          from b in table2.GroupBy(x => x.MaHS).Select(x => x.FirstOrDefault()).ToList()
                          where a.MaHS ==id
                          select new ViewModel
                          {
                        haisankho = a,
                          motahaisankho =b,
                          danhmuc=c
                          };
             return View(spdanh);
         }*/
        /*var sanpham = from s in data.HAISANKHOs where s.MaHS == id select s;
         return View(sanpham.Single());


        return View(ProductDetail.LaySanPham());
    };*/

        public ActionResult Details(int id) 
        {
            var sp = from s in data.HAISANKHOs where s.MaHS == id select s;
            return View(sp.Single());
        }

        /*public ActionResult ChiTietHinhAnh(int id)
        {  List < HAISANKHO > hAISANKHOs = data.HAISANKHOs.ToList();
            List<MOTAHAISANKHO> mOTAHAISANKHOs = data.MOTAHAISANKHOs.ToList();
            var sphinh = (from a in hAISANKHOs
                          join b in mOTAHAISANKHOs on a.MaHS equals b.MaHS into table1
                          from b in table1.ToList()
                          where a.MaHS == id
                          select new ViewModel
                          {
                              haisankho = a,
                              motahaisankho = b
                          });
            return PartialView(sphinh);
        }*/
        public ActionResult GioHang()
        {
            return View();
        }
        public ActionResult Blog()
        {
            return View();
        }
        public ActionResult LienHe()
        {
            return View();
        }

        public ActionResult Gioithieu()
        {
            return View();
        }
        public ActionResult Danhmuc()
        {
            var Danhmuc = from dm in data.DANHMUCHAISANKHOs select dm;
            return PartialView(Danhmuc);
        }
        public ActionResult Category()
        {
            var category = from cate in data.DANHMUCHAISANKHOs select cate;
            return PartialView(category);
        }
        public ActionResult CategoryTimkiem()
        {
            var category = from cate in data.DANHMUCHAISANKHOs select cate;
            return PartialView(category);
        }
        public ActionResult SPTheodanhmuc(int id, int? page)
        {
            int pageSize = 15;
            int pageNum = (page ?? 1);
            var sanpham = from s in data.HAISANKHOs where s.MaDM == id select s;
            return View(sanpham.ToList().OrderBy(n => n.MaHS).ToPagedList(pageNum, pageSize));
        }
    
         
        }
    }
