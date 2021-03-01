using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace PebbleLitePlus
{
    public class Global : HttpApplication
    {
        DateTime now = DateTime.Today;
       

        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
           
        }
        void Session_Start(object sender, EventArgs e)
        {
            string effDate = "01/" + "01/" + (Convert.ToInt32(now.ToString("yyyy")) + 1).ToString();
            Session["effDate"] = effDate;
        }
    }
}