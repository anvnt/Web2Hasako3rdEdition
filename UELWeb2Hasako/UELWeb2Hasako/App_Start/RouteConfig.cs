using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace UELWeb2Hasako
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            //Trang CHI TIẾT SẢN PHẨM
            routes.MapRoute(
                name: "Chi tiết sản phẩm",
                url: "chi-tiet-san-pham/{id}",
                defaults: new { controller = "Hasako", action = "Details" }
            );
            //Trang SẢM PHẨM THEO DANH MỤC
            routes.MapRoute(
                name: "Sản phẩm theo danh mục",
                url: "san-pham-theo-danh-muc/{id}",
                defaults: new { controller = "Hasako", action = "SPTheodanhmuc" }
            );


            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Hasako", action = "IndexHasako", id = UrlParameter.Optional }
            );
        }
    }
}
