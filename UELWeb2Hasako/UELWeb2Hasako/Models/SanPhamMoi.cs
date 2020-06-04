using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UELWeb2Hasako.Models
{
    public class SanPhamMoi
    {
        public int MaHS { get; set; }
        public string TenHS { get; set; }
        public int DonGia { get; set; }
        public string Mota { get; set; }
        public string AnhBia { get; set; }
        public DateTime ? Ngaycapnhat { get; set; }
        public string Donvi { get; set; }
        public  int ? Soluongton { get; set; }
        public int ? MaDM { get; set; }
        public int ? MaNH { get; set; }
        public int? Danhgia { get; set; }

        public static List<SanPhamMoi> LaySanPham(int count)
        {
            dbHasakoProjectDataContext data = new dbHasakoProjectDataContext();
            List<SanPhamMoi> dsHS = new List<SanPhamMoi>();
            List<HAISANKHO> ds =  data.HAISANKHOs.OrderByDescending(a => a.Ngaycapnhat).Take(count).ToList();
            List<CHITIETDONHANG> ct = data.CHITIETDONHANGs.ToList();
            List<DANHGIA> danhgia = data.DANHGIAs.ToList();

            foreach (var sp in ds)
            {
                HAISANKHO hs = data.HAISANKHOs.Where(x => x.MaHS == sp.MaHS).FirstOrDefault();
                int? sum = 0; int? dg = 0; int dem = 0; int? diem = 0;
                foreach (var c in ct)
                {
                    if (c.MaHS == hs.MaHS)
                    {
                        sum += c.Soluong;
                    }
                }
                foreach (var c in danhgia)
                {
                    if (c.MaHS == hs.MaHS)
                    {
                        dg += c.Diem;
                        dem++;
                    }
                }
                if (dem != 0)
                {
                    diem = dg / dem;
                }
                if (dem != 0)
                {
                    diem = dg / dem;
                }
                {
                    dsHS.Add(new SanPhamMoi()
                    { MaHS = hs.MaHS ,TenHS=hs.TenHS,DonGia=hs.Dongia,
                    Mota=hs.Mota,AnhBia=hs.Anhbia,Ngaycapnhat=hs.Ngaycapnhat,
                    Donvi=hs.Donvi,Soluongton=hs.Soluongton,MaDM=hs.MaDM,MaNH=hs.MaNH,Danhgia=diem});
                }
            }
                return dsHS;
        }
    }
}