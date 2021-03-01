using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PebbleLitePlus
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void homeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Basebtn_Click(object sender, EventArgs e)
        {
            //Basebtn.Style.Add(HtmlTextWriterStyle.Color, "green");
            //Basebtn.Style.Add(class, 'B1');
            // Basebtn.Attributes.Add("CssClass", "B1");

            Basebtn.CssClass = "B1";
            Plan2btn.CssClass = "Planbtn";
            Plan3btn.CssClass = "Planbtn";
            Plan4btn.CssClass = "Planbtn";
            Plan5btn.CssClass = "Planbtn";
            Plan6btn.CssClass = "Planbtn";
            Response.Redirect("Plan1.aspx");
            Session["Planselected1"] = "1";
            Session["Networkid"] = "1";

        }

        protected void Plan2btn_Click(object sender, EventArgs e)
        {
            Session["Plan2btn"] = 1;
            Session["Plan3btn"] = 0;
            Session["Plan4btn"] = 0;
            Session["Plan5btn"] = 0;
            Session["Plan6btn"] = 0;
            Session["Planselected1"] = "2";
            Session["Networkid"] = "2";
            Session["ScenarioId"] = "12";

            PlanPlusbtn1.Visible = false;
            Basebtn.CssClass = "Planbtn";
            Plan2btn.CssClass = "B1";
            Response.Redirect("Default.aspx");
            Plan3btn.CssClass = "Planbtn";
            Plan4btn.CssClass = "Planbtn";
            Plan5btn.CssClass = "Planbtn";
            Plan6btn.CssClass = "Planbtn";
            
            VisibleCheck();

            // Basebtn.Attributes["CssClass"] = Basebtn.Attributes["CssClass"].Replace("Planbtn", "").Trim();
            // Basebtn.Attributes.Add("class", Basebtn.Attributes["class"].ToString().Replace("Planbtn", ""));

            // Response.Write("<script language='javascript'>alert('You pressed Me!');</script>");

        }

        protected void Plan3btn_Click(object sender, EventArgs e)
        {
            Session["Plan2btn"] = 0;
            Session["Basebtn"] = 0;
            Session["Plan3btn"] = 1;
            Session["Plan4btn"] = 0;
            Session["Plan5btn"] = 0;
            Session["Plan6btn"] = 0;
            Session["Planselected1"] = "3";
            Session["Networkid"] = "3";
            Session["ScenarioId"] = "13";

            Plan2btn.CssClass = "Planbtn";
            Basebtn.CssClass = "Planbtn";

            Plan4btn.CssClass = "Planbtn";
            Plan5btn.CssClass = "Planbtn";
            Plan6btn.CssClass = "Planbtn";
            Plan3btn.CssClass = "B1";
            BtnP2.Visible = false;
            PlanPlusbtn1.Visible = false;
            VisibleCheck();
            Response.Redirect("Default.aspx");
            //Response.Write("<script language='javascript'>alert('You pressed Me!');</script>");

        }

        protected void Plan4btn_Click(object sender, EventArgs e)
        {
            Session["Plan2btn"] = 0;
            Session["Basebtn"] = 0;
            Session["Plan3btn"] = 0;
            Session["Plan4btn"] = 1;
            Session["Plan5btn"] = 0;
            Session["Plan6btn"] = 0;
            Session["Planselected1"] = "4";
            Session["Networkid"] = "4";
            Session["ScenarioId"] = "14";
            Plan2btn.CssClass = "Planbtn";
            Basebtn.CssClass = "Planbtn";
            Plan3btn.CssClass = "Planbtn";
            Plan4btn.CssClass = "B1";
            Plan5btn.CssClass = "Planbtn";
            Plan6btn.CssClass = "Planbtn";

            BtnP2.Visible = false;
            PlanPlusbtn1.Visible = false;
            BtnP3.Visible = false;
            VisibleCheck();
            // Response.Write("<script language='javascript'>alert('You pressed Me!');</script>");

        }

        protected void Plan5btn_Click(object sender, EventArgs e)
        {

            Session["Plan2btn"] = 0;
            Session["Basebtn"] = 0;
            Session["Plan3btn"] = 0;
            Session["Plan4btn"] = 0;
            Session["Plan5btn"] = 1;
            Session["Plan6btn"] = 0;
            Session["Planselected1"] = "5";
            Session["Networkid"] = "5";
            Session["ScenarioId"] = "15";
            Plan2btn.CssClass = "Planbtn";
            Basebtn.CssClass = "Planbtn";
            Plan3btn.CssClass = "Planbtn";
            Plan4btn.CssClass = "Planbtn";
            Plan5btn.CssClass = "B1";
            Plan6btn.CssClass = "Planbtn";

            PlanPlusbtn1.Visible = false;
            BtnP2.Visible = false;
            BtnP3.Visible = false;
            BtnP4.Visible = false;
            VisibleCheck();
            //  Response.Write("<script language='javascript'>alert('You pressed Me!');</script>");

        }

        protected void Plan6btn_Click(object sender, EventArgs e)
        {
            Session["Plan2btn"] = 0;
            Session["Basebtn"] = 0;
            Session["Plan3btn"] = 0;
            Session["Plan4btn"] = 0;
            Session["Plan5btn"] = 0;
            Session["Plan6btn"] = 1;
            Session["Planselected1"] = "6";
            Session["Networkid"] = "6";
            Session["ScenarioId"] = "16";

            Plan2btn.CssClass = "Planbtn";
            Basebtn.CssClass = "Planbtn";
            Plan3btn.CssClass = "Planbtn";
            Plan4btn.CssClass = "Planbtn";
            Plan5btn.CssClass = "Planbtn";
            Plan6btn.CssClass = "B1";

            PlanPlusbtn1.Visible = false;
            BtnP2.Visible = false;
            BtnP3.Visible = false;
            BtnP4.Visible = false;
            BtnP5.Visible = false;
            VisibleCheck();
        }

        public void VisibleCheck()
        {
            if (Plan6btn.Visible == true)
            {
                PlanPlusbtn1.Visible = false;
                BtnP2.Visible = false;
                BtnP3.Visible = false;
                BtnP4.Visible = false;
                BtnP5.Visible = false;
            }
            if (Plan5btn.Visible == true)
            {
                PlanPlusbtn1.Visible = false;
                BtnP2.Visible = false;
                BtnP3.Visible = false;
                BtnP4.Visible = false;
            }
            if (Plan4btn.Visible == true)
            {

                PlanPlusbtn1.Visible = false;
                BtnP2.Visible = false;
                BtnP3.Visible = false;

            }
            if (Plan3btn.Visible == true)
            {

                PlanPlusbtn1.Visible = false;
                BtnP2.Visible = false;


            }
            if (Plan2btn.Visible == true)
            {
                PlanPlusbtn1.Visible = false;
            }
        }

        protected void PlanPlusbtn1_Click(object sender, EventArgs e)
        {

            if (Plan2btn.Visible == false)
            {
                Plan2btn.Visible = true;
                BtnP2.Visible = true;
                PlanPlusbtn1.Visible = false;
            }
            else
            {
                /*Plan2btn.Visible = true;
                  BtnP2.Visible = true;
                  PlanPlusbtn1.Visible = false;*/

            }

        }

        protected void BtnP2_Click(object sender, EventArgs e)
        {
            if (Plan3btn.Visible == false)
            {
                Plan3btn.Visible = true;
                BtnP3.Visible = true;
                BtnP2.Visible = false;
            }
            else
            {
                /* BtnP2.Visible = false;*/

            }
        }

        protected void BtnP3_Click(object sender, EventArgs e)
        {
            if (Plan4btn.Visible == false)
            {
                Plan4btn.Visible = true;
                BtnP4.Visible = true;
                BtnP3.Visible = false;
                BtnP2.Visible = false;
            }
            else
            {
                /*BtnP3.Visible = false;
                 BtnP2.Visible = false;*/
            }
        }

        protected void BtnP4_Click(object sender, EventArgs e)
        {
            if (Plan5btn.Visible == false)
            {
                Plan5btn.Visible = true;
                BtnP5.Visible = true;
                BtnP4.Visible = false;
                BtnP3.Visible = false;
                BtnP2.Visible = false;
            }
            else
            {
                /* BtnP4.Visible = false;
                 BtnP3.Visible = false;
                 BtnP2.Visible = false;*/
            }

        }

        protected void BtnP5_Click(object sender, EventArgs e)
        {
            if (Plan6btn.Visible == false)
            {
                Plan6btn.Visible = true;
                BtnP5.Visible = false;
                BtnP4.Visible = false;
                BtnP3.Visible = false;
                BtnP2.Visible = false;
            }
            else
            {
                /*BtnP5.Visible = false;
                 BtnP4.Visible = false;
                 BtnP3.Visible = false;
                 BtnP2.Visible = false;*/
            }
        }


    }
}