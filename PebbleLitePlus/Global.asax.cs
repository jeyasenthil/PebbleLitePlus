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
            Session["whichPlan"] = "1";
            Session["EnrollmentTiers"] = "4";
            Session["Id"] = "";
            //Plan 1 session variables

            //View1 -step 1
            //Accordion 1
            Session["SessTxt"] = "";
            Session["ScenTxt"] = "";
            Session["CalTxt"] = "";
            Session["EmpTxt"] = "";
            Session["TotmemTxt"] = "";
            Session["singCovTxt"] = "";

/*mutually exclusive group buttons*/
            Session["btncheck2 "] = "";
            Session["btncheck3"] = "";
            Session["eeTxt1"] = "";
            Session["eespTxt1"] = "";
            Session["eechTxt1"] = "";
            Session["eechsTxt1"] = "";
            Session["eefamTxt1"] = "";
            Session["Sicddl1"] = "";
            Session["Rxcov"] = "";

            //View1 -step 1
            //Accordion 2
            Session["ageTxt"] = "";
            Session["persMaleTxt"] = "";
            Session["Eechk"] = "";
            Session["Cov_Tierchk"] = "";
            Session["Txt20M"] = "";
            Session["Txt20F"] = "";
            Session["Txt24M"] = "";
            Session["Txt24F"] = "";
            Session["Txt29M"] = "";
            Session["Txt29F"] = "";
            Session["Txt34M"] = "";
            Session["Txt34F"] = "";
            Session["Txt39M"] = "";
            Session["Txt39F"] = "";
            Session["Txt44M"] = "";
            Session["Txt44F"] = "";
            Session["Txt49M"] = "";
            Session["Txt49F"] = "";
            Session["Txt54M"] = "";
            Session["Txt54F"] = "";
            Session["Txt59M"] = "";
            Session["Txt59F"] = "";
            Session["Txt64M"] = "";
            Session["Txt64F"] = "";
            Session["Txt69M"] = "";
            Session["Txt69F"] = "";
            Session["Txt74M"] = "";
            Session["Txt74F"] = "";
            Session["Txt79M"] = "";
            Session["Txt79F"] = "";
            Session["Txt80M"] = "";
            Session["Txt80F"] = "";

            //Age Gender Category Tiers

            Session["eem1Txt"] = "";
            Session["eef1Txt"] = "";
            Session["spm1Txt"] = "";
            Session["spf1Txt"] = "";
            Session["chm1Txt"] = "";
            Session["chf1Txt"] = "";
            Session["chsm1Txt"] = "";
            Session["chsf1Txt"] = "";
            Session["famm1Txt"] = "";
            Session["famf1Txt"] = "";

            Session["eem2Txt"] = " ";
            Session["eef2Txt"] = " ";
            Session["spm2Txt"] = " ";
            Session["spf2Txt"] = " ";
            Session["chm2Txt"] = " ";
            Session["chf2Txt"] = " ";
            Session["chsm2Txt"] = " ";
            Session["chsf2Txt"] = " ";
            Session["famm2Txt"] = " ";
            Session["famf2Txt"] = " ";

            Session["eem3Txt"] = " ";
            Session["eef3Txt"] = " ";
            Session["spm3Txt"] = " ";
            Session["spf3Txt"] = " ";
            Session["chm3Txt"] = " ";
            Session["chf3Txt"] = " ";
            Session["chsm3Txt"] = " ";
            Session["chsf3Txt"] = " ";
            Session["famm3Txt"] = " ";
            Session["famf3Txt"] = " ";

            Session["eem4Txt"] = " ";
            Session["eef4Txt"] = " ";
            Session["spm4Txt"] = " ";
            Session["spf4Txt"] = " ";
            Session["chm4Txt"] = " ";
            Session["chf4Txt"] = " ";
            Session["chsm4Txt"] = " ";
            Session["chsf4Txt"] = " ";
            Session["famm4Txt"] = " ";
            Session["famf4Txt"] = " ";

            Session["eem5Txt"] = " ";
            Session["eef5Txt"] = " ";
            Session["spm5Txt"] = " ";
            Session["spf5Txt"] = " ";
            Session["chm5Txt"] = " ";
            Session["chf5Txt"] = " ";
            Session["chsm5Txt"] = " ";
            Session["chsf5Txt"] = " ";
            Session["famm5Txt"] = " ";
            Session["famf5Txt"] = " ";

            Session["eem6Txt"] = " ";
            Session["eef6Txt"] = " ";
            Session["spm6Txt"] = " ";
            Session["spf6Txt"] = " ";
            Session["chm6Txt"] = " ";
            Session["chf6Txt"] = " ";
            Session["chsm6Txt"] = " ";
            Session["chsf6Txt"] = " ";
            Session["famm6Txt"] = " ";
            Session["famf6Txt"] = " ";

            Session["eem7Txt"] = " ";
            Session["eef7Txt"] = " ";
            Session["spm7Txt"] = " ";
            Session["spf7Txt"] = " ";
            Session["chm7Txt"] = " ";
            Session["chf7Txt"] = " ";
            Session["chsm7Txt"] = " ";
            Session["chsf7Txt"] = " ";
            Session["famm7Txt"] = " ";
            Session["famf7Txt"] = " ";

            Session["eem8Txt"] = " ";
            Session["eef8Txt"] = " ";
            Session["spm8Txt"] = " ";
            Session["spf8Txt"] = " ";
            Session["chm8Txt"] = " ";
            Session["chf8Txt"] = " ";
            Session["chsm8Txt"] = " ";
            Session["chsf8Txt"] = " ";
            Session["famm8Txt"] = " ";
            Session["famf8Txt"] = " ";

            Session["eem9Txt"] = " ";
            Session["eef9Txt"] = " ";
            Session["spm9Txt"] = " ";
            Session["spf9Txt"] = " ";
            Session["chm9Txt"] = " ";
            Session["chf9Txt"] = " ";
            Session["chsm9Txt"] = " ";
            Session["chsf9Txt"] = " ";
            Session["famm9Txt"] = " ";
            Session["famf9Txt"] = " ";

            Session["eem10Txt"] = " ";
            Session["eef10Txt"] = " ";
            Session["spm10Txt"] = " ";
            Session["spf10Txt"] = " ";
            Session["chm10Txt"] = " ";
            Session["chf10Txt"] = " ";
            Session["chsm10Txt"] = " ";
            Session["chsf10Txt"] = " ";
            Session["famm10Txt"] = " ";
            Session["famf10Txt"] = " ";

            Session["eem11Txt"] = " ";
            Session["eef11Txt"] = " ";
            Session["spm11Txt"] = " ";
            Session["spf11Txt"] = " ";
            Session["chm11Txt"] = " ";
            Session["chf11Txt"] = " ";
            Session["chsm11Txt"] = " ";
            Session["chsf11Txt"] = " ";
            Session["famm11Txt"] = " ";
            Session["famf11Txt"] = " ";

            Session["eem12Txt"] = " ";
            Session["eef12Txt"] = " ";
            Session["spm12Txt"] = " ";
            Session["spf12Txt"] = " ";
            Session["chm12Txt"] = " ";
            Session["chf12Txt"] = " ";
            Session["chsm12Txt"] = " ";
            Session["chsf12Txt"] = " ";
            Session["famm12Txt"] = " ";
            Session["famf12Txt"] = " ";

            Session["eem13Txt"] = " ";
            Session["eef13Txt"] = " ";
            Session["spm13Txt"] = " ";
            Session["spf13Txt"] = " ";
            Session["chm13Txt"] = " ";
            Session["chf13Txt"] = " ";
            Session["chsm13Txt"] = " ";
            Session["chsf13Txt"] = " ";
            Session["famm13Txt"] = " ";
            Session["famf13Txt"] = " ";

            Session["eem14Txt"] = " ";
            Session["eef14Txt"] = " ";
            Session["spm14Txt"] = " ";
            Session["spf14Txt"] = " ";
            Session["chm14Txt"] = " ";
            Session["chf14Txt"] = " ";
            Session["chsm14Txt"] = " ";
            Session["chsf14Txt"] = " ";
            Session["famm14Txt"] = " ";
            Session["famf14Txt"] = " ";
            //Age Gender ends here

        }
    }
}