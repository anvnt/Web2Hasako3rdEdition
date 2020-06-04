using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UELWeb2Hasako.Models
{
    public class DanhGia
    {
        public int MaHS { get; set; }
        public int ? MaKH { get; set; }
        public int  Diem { get; set; }
        public string NoiDungDanhGia { get; set; }
        public DateTime ? NgayDanhGia { get; set; }
        public string TenHS { get; set; }
        public double DonGia { get; set; }
        public string AnhBia { get; set; }
        public static List<DanhGia> LaySanPham(int count)
        {
            dbHasakoProjectDataContext data = new dbHasakoProjectDataContext();
            List<DanhGia> dsHS = new List<DanhGia>();
            List<HAISANKHO> ds = data.HAISANKHOs.ToList();
            List<DANHGIA> dsKM = data.DANHGIAs.ToList();
            foreach (var sp in ds)
            {
                int dg = 0; int dem = 0; int diem = 0;
                foreach (var c in dsKM)
                {
                    if (c.MaHS == sp.MaHS)
                    {
                        dg += c.Diem;
                        dem++;
                    }
                }
                if (dem == 0)
                { continue; }
                else
                {
                    diem = dg / dem;
                    HAISANKHO hs = data.HAISANKHOs.Where(x => x.MaHS == sp.MaHS).FirstOrDefault();
                    dsHS.Add(new DanhGia()
                {                       
                    MaHS = hs.MaHS,
                    Diem = diem,
                    TenHS = hs.TenHS,
                    DonGia = hs.Dongia,
                    AnhBia = hs.Anhbia
                        });
                }
            }
        
            return dsHS.OrderByDescending(x=>x.Diem).Take(count).ToList();
        }
    }
}