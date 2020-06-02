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

            

            //Chi tiet blog
            routes.MapRoute(
                name: "Chi tiết Blog",
                url: "Blog/Details-{id}",
                defaults: new { controller = "Blog", action = "Details" }   
                );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Hasako", action = "IndexHasako", id = UrlParameter.Optional }
            );
        }
    }
}
