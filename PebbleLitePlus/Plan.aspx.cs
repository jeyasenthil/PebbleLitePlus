using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace PebbleLitePlus
{
    public partial class Plan1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            HiTxt2.Attributes.Add("readonly", "readonly");
            indTxt.Attributes.Add("readonly", "readonly");
            provNetTxt1.Attributes.Add("readonly", "readonly");
            provNetTxt2.Attributes.Add("readonly", "readonly");

            //zip3Txt.Attributes.Add("readonly", "readonly");
            //HiTxt2.Attributes.Add("disabled", "disabled");
            //HiTxt2.Attributes.Add("class", "greycol");

            Session["BaseClicked"] = "1";
            Session["P2Clicked"] = "0";
            Button resetBtn = this.Master.FindControl("RestBtn") as Button;

            //SessTxt.Focus();
            Session["planNo"] = "1";
            //Response.Write("<script language='javascript'>alert('Default page load');</script>");

            if (this.IsPostBack)
            {


                //Response.Write("<script language='javascript'>alert('postback');</script>");


            }
            else
            {




                //Response.Write("<script language='javascript'>alert('Not a Postback, Regular');</script>");
                //code for disabling tier2 textboxes in case of 0 value in Plan%
                HiTxt1.Text = Session["HiTxt1"].ToString();


                if (Session["HiTxt1"].ToString() == "100")
                {
                    GdcmT15.CssClass = "TxtBox TxtBox1 greycol";
                    GdcmT15.Attributes.Add("readonly", "readonly");

                    famdTxt2.CssClass = "TxtBox TxtBox1 greycol";
                    famdTxt2.Attributes.Add("readonly", "readonly");
                    sp8.Attributes.Add("class", "pers1");

                    GdcmT27.CssClass = "TxtBox TxtBox11 greycol";
                    GdcmT27.Attributes.Add("readonly", "readonly");

                    GdcmT32.CssClass = "TxtBox TxtBox1 greycol";
                    GdcmT32.Attributes.Add("readonly", "readonly");

                    famoopTxt2.CssClass = "TxtBox TxtBox1 greycol";
                    famoopTxt2.Attributes.Add("readonly", "readonly");
                    //Copays
                    T2IpTxt.CssClass = "TxtBox TxtBox1 greycol";
                    T2IpTxt.Attributes.Add("readonly", "readonly");

                    T2OpTxt.CssClass = "TxtBox TxtBox1 greycol";
                    T2OpTxt.Attributes.Add("readonly", "readonly");

                    T2ErTxt.CssClass = "TxtBox TxtBox1 greycol";
                    T2ErTxt.Attributes.Add("readonly", "readonly");

                    T2RadTxt.CssClass = "TxtBox TxtBox1 greycol";
                    T2RadTxt.Attributes.Add("readonly", "readonly");

                    T2UrTxt.CssClass = "TxtBox TxtBox1 greycol";
                    T2UrTxt.Attributes.Add("readonly", "readonly");

                    T2LpTxt.CssClass = "TxtBox TxtBox1 greycol";
                    T2LpTxt.Attributes.Add("readonly", "readonly");

                    T2PpTxt.CssClass = "TxtBox TxtBox1 greycol";
                    T2PpTxt.Attributes.Add("readonly", "readonly");

                    T2SpTxt.CssClass = "TxtBox TxtBox1 greycol";
                    T2SpTxt.Attributes.Add("readonly", "readonly");

                    T2PoTxt.CssClass = "TxtBox TxtBox1 greycol";
                    T2PoTxt.Attributes.Add("readonly", "readonly");

                    T2OTxt.CssClass = "TxtBox TxtBox1 greycol";
                    T2OTxt.Attributes.Add("readonly", "readonly");


                }
                else
                {

                    GdcmT15.Attributes.Remove("greycol");
                    GdcmT15.Attributes.Remove("readonly");

                    famdTxt2.Attributes.Remove("greycol");
                    famdTxt2.Attributes.Remove("readonly");

                    sp8.Attributes.Remove("pers1");
                    sp8.Attributes.Remove("readonly");

                    GdcmT27.Attributes.Remove("greycol");
                    GdcmT27.Attributes.Remove("readonly");

                    GdcmT32.Attributes.Remove("greycol");
                    GdcmT32.Attributes.Remove("readonly");

                    famoopTxt2.Attributes.Remove("greycol");
                    famoopTxt2.Attributes.Remove("readonly");
                    //Copays
                    T2IpTxt.Attributes.Remove("greycol");
                    T2IpTxt.Attributes.Remove("readonly");

                    T2OpTxt.Attributes.Remove("greycol");
                    T2OpTxt.Attributes.Remove("readonly");

                    T2ErTxt.Attributes.Remove("greycol");
                    T2ErTxt.Attributes.Remove("readonly");

                    T2RadTxt.Attributes.Remove("greycol");
                    T2RadTxt.Attributes.Remove("readonly");

                    T2UrTxt.Attributes.Remove("greycol");
                    T2UrTxt.Attributes.Remove("readonly");

                    T2LpTxt.Attributes.Remove("greycol");
                    T2LpTxt.Attributes.Remove("readonly");

                    T2PpTxt.Attributes.Remove("greycol");
                    T2PpTxt.Attributes.Remove("readonly");

                    T2SpTxt.Attributes.Remove("greycol");
                    T2SpTxt.Attributes.Remove("readonly");

                    T2PoTxt.Attributes.Remove("greycol");
                    T2PoTxt.Attributes.Remove("readonly");

                    T2OTxt.Attributes.Remove("greycol");
                    T2OTxt.Attributes.Remove("readonly");
                }


                SessTxt.Text = Session["SessTxt"].ToString();
                CalTxt.Text = Session["CalTxt"].ToString();
                EmpTxt.Text = Session["EmpTxt"].ToString();
                singCovTxt.Text = Session["singCovTxt"].ToString();
                MemTxt.Text = Session["MemTxt"].ToString();
                ageTxt.Text = Session["ageTxt"].ToString();
                maleTxt.Text = Session["maleTxt"].ToString();
                sicTxt.Text = Session["sicTxt"].ToString();
                indTxt.Text = Session["indTxt"].ToString();
                zip1Txt.Text = Session["zip1Txt"].ToString();
                enroll1Txt.Text = Session["enroll1Txt"].ToString();
                zip2Txt.Text = Session["zip2Txt"].ToString();
                enroll2Txt.Text = Session["enroll2Txt"].ToString();
                zip3Txt.Text = Session["zip3Txt"].ToString();
                enroll3Txt.Text = Session["enroll3Txt"].ToString();
                //Accordion Pane 2

                provNetTxt1.Text = Session["provNetTxt1"].ToString();
                provNetTxt2.Text = Session["provNetTxt2"].ToString();

                provNetT1.Text = Session["provNetT1"].ToString();
                provNetT2.Text = Session["provNetT2"].ToString();
                //Accordion Pane 3

                HiTxt2.Text = Session["HiTxt2"].ToString();

                //Indi deduct
                GdcmT13.Text = Session["GdcmT13"].ToString();
                GdcmT15.Text = Session["GdcmT15"].ToString();

                //fam deduct
                famdTxt1.Text = Session["famdTxt1"].ToString();
                famdTxt2.Text = Session["famdTxt2"].ToString();
                //Coinsurance
                GdcmT25.Text = Session["GdcmT25"].ToString();
                GdcmT27.Text = Session["GdcmT27"].ToString();
                //Indi moop
                GdcmT30.Text = Session["GdcmT30"].ToString();
                GdcmT32.Text = Session["GdcmT32"].ToString();
                //fam moop
                famoopTxt1.Text = Session["famoopTxt1"].ToString();
                famoopTxt2.Text = Session["famoopTxt2"].ToString();
                //Copays

                T1IpTxt.Text = Session["T1IpTxt"].ToString();
                T2IpTxt.Text = Session["T2IpTxt"].ToString();

                T1OpTxt.Text = Session["T1OpTxt"].ToString();
                T2OpTxt.Text = Session["T2OpTxt"].ToString();

                T1ErTxt.Text = Session["T1ErTxt"].ToString();
                T2ErTxt.Text = Session["T2ErTxt"].ToString();

                T1UrTxt.Text = Session["T1UrTxt"].ToString();
                T2UrTxt.Text = Session["T2UrTxt"].ToString();

                T1RadTxt.Text = Session["T1RadTxt"].ToString();
                T2RadTxt.Text = Session["T2RadTxt"].ToString();

                T1LpTxt.Text = Session["T1LpTxt"].ToString();
                T2LpTxt.Text = Session["T2LpTxt"].ToString();

                T1PpTxt.Text = Session["T1PpTxt"].ToString();
                T2PpTxt.Text = Session["T2PpTxt"].ToString();

                T1SpTxt.Text = Session["T1SpTxt"].ToString();
                T2SpTxt.Text = Session["T2SpTxt"].ToString();

                T1PoTxt.Text = Session["T1PoTxt"].ToString();
                T2PoTxt.Text = Session["T2PoTxt"].ToString();

                T1OTxt.Text = Session["T1OTxt"].ToString();
                T2OTxt.Text = Session["T2OTxt"].ToString();

                //Rx toggle buttons

                if (Session["p1_Rxcov"].ToString() == "1")
                {
                    //These two for malking yes for both checkboxes(for is rx covered)
                    togrx1.Attributes.Add("checked", "checked");
                    CheckBox3.Checked = true;

                    //all the 5 rows visible
                    rx.Visible = true;
                    Rx_show();

                    //These two for making no for both checkboxes(for is rx part of medical)
                    /*CheckBox1.Attributes.Remove("checked");
                     tog.Checked = false;
                     Session["p1_Rxpart"] = "0";*/

                }
                else
                {
                    //These two for malking no for both checkboxes(for is rx covered)
                    togrx1.Attributes.Remove("checked");
                    CheckBox3.Checked = false;

                    //all the 5 rows hide
                    rx.Visible = false;
                    Rx_hide();

                    //These two for making no for both checkboxes(for is rx part of medical)
                    CheckBox1.Attributes.Remove("checked");
                    tog.Checked = false;
                    Session["p1_Rxpart"] = "0";

                }

                if (Session["p1_Rxpart"].ToString() == "1")
                {

                    //These two for malking yes for both checkboxes(for is rx covered)
                    tog.Attributes.Add("checked", "checked");
                    CheckBox1.Checked = true;

                }
                else
                {
                    tog.Attributes.Remove("checked");
                    CheckBox1.Checked = false;
                }

                //RX
                rRgTxt.Text = Session["rRgTxt"].ToString();
                mRgTxt.Text = Session["mRgTxt"].ToString();

                rRbfTxt.Text = Session["rRbfTxt"].ToString();
                mRbfTxt.Text = Session["mRbfTxt"].ToString();

                rRbnfTxt.Text = Session["rRbnfTxt"].ToString();
                mRbnfTxt.Text = Session["mRbnfTxt"].ToString();

                rRsTxt.Text = Session["rRsTxt"].ToString();
                mRsTxt.Text = Session["mRsTxt"].ToString();

            }
        }



        //Accordion pane 3

        protected void AccordionPane1_Click(object sender, EventArgs e) => SessTxt.Focus();
        protected void HiTxt1_TextChanged(object sender, EventArgs e)
        {
            Session["HiTxt1"] = HiTxt1.Text;
            if (Session["HiTxt1"].ToString() == "100")
            {
                GdcmT15.CssClass = "TxtBox TxtBox1 greycol";
                GdcmT15.Attributes.Add("readonly", "readonly");

                famdTxt2.CssClass = "TxtBox TxtBox1 greycol";
                famdTxt2.Attributes.Add("readonly", "readonly");

                sp8.Attributes.Add("class", "pers1");
                sp8.Attributes.Add("readonly", "readonly");

                GdcmT27.CssClass = "TxtBox TxtBox11 greycol";
                GdcmT27.Attributes.Add("readonly", "readonly");

                GdcmT32.CssClass = "TxtBox TxtBox1 greycol";
                GdcmT32.Attributes.Add("readonly", "readonly");

                famoopTxt2.CssClass = "TxtBox TxtBox1 greycol";
                famoopTxt2.Attributes.Add("readonly", "readonly");
                //Copays
                T2IpTxt.CssClass = "TxtBox TxtBox1 greycol";
                T2IpTxt.Attributes.Add("readonly", "readonly");

                T2OpTxt.CssClass = "TxtBox TxtBox1 greycol";
                T2OpTxt.Attributes.Add("readonly", "readonly");

                T2ErTxt.CssClass = "TxtBox TxtBox1 greycol";
                T2ErTxt.Attributes.Add("readonly", "readonly");

                T2RadTxt.CssClass = "TxtBox TxtBox1 greycol";
                T2RadTxt.Attributes.Add("readonly", "readonly");

                T2UrTxt.CssClass = "TxtBox TxtBox1 greycol";
                T2UrTxt.Attributes.Add("readonly", "readonly");

                T2LpTxt.CssClass = "TxtBox TxtBox1 greycol";
                T2LpTxt.Attributes.Add("readonly", "readonly");

                T2PpTxt.CssClass = "TxtBox TxtBox1 greycol";
                T2PpTxt.Attributes.Add("readonly", "readonly");

                T2SpTxt.CssClass = "TxtBox TxtBox1 greycol";
                T2SpTxt.Attributes.Add("readonly", "readonly");

                T2PoTxt.CssClass = "TxtBox TxtBox1 greycol";
                T2PoTxt.Attributes.Add("readonly", "readonly");

                T2OTxt.CssClass = "TxtBox TxtBox1 greycol";
                T2OTxt.Attributes.Add("readonly", "readonly");

            }
            else
            {

                GdcmT15.Attributes.Remove("greycol");
                GdcmT15.Attributes.Remove("readonly");

                famdTxt2.Attributes.Remove("greycol");
                famdTxt2.Attributes.Remove("readonly");

                sp8.Attributes.Remove("pers1");
                sp8.Attributes.Remove("readonly");

                GdcmT27.Attributes.Remove("greycol");
                GdcmT27.Attributes.Remove("readonly");

                GdcmT32.Attributes.Remove("greycol");
                GdcmT32.Attributes.Remove("readonly");

                famoopTxt2.Attributes.Remove("greycol");
                famoopTxt2.Attributes.Remove("readonly");
                //Copays
                T2IpTxt.Attributes.Remove("greycol");
                T2IpTxt.Attributes.Remove("readonly");

                T2OpTxt.Attributes.Remove("greycol");
                T2OpTxt.Attributes.Remove("readonly");

                T2ErTxt.Attributes.Remove("greycol");
                T2ErTxt.Attributes.Remove("readonly");

                T2RadTxt.Attributes.Remove("greycol");
                T2RadTxt.Attributes.Remove("readonly");

                T2UrTxt.Attributes.Remove("greycol");
                T2UrTxt.Attributes.Remove("readonly");

                T2LpTxt.Attributes.Remove("greycol");
                T2LpTxt.Attributes.Remove("readonly");

                T2PpTxt.Attributes.Remove("greycol");
                T2PpTxt.Attributes.Remove("readonly");

                T2SpTxt.Attributes.Remove("greycol");
                T2SpTxt.Attributes.Remove("readonly");

                T2PoTxt.Attributes.Remove("greycol");
                T2PoTxt.Attributes.Remove("readonly");

                T2OTxt.Attributes.Remove("greycol");
                T2OTxt.Attributes.Remove("readonly");
            }
            //HiTxt2.Text = 100 - (Convert.ToInt32(HiTxt1.Text));

        }
        protected void HiTxt2_TextChanged(object sender, EventArgs e)
        {
            Session["HiTxt2"] = HiTxt2.Text;
        }
        protected void Rx_show()
        {
            //rxl.Attributes.Add("visibility", "true");
            rxl.Visible = true;
            rx1.Visible = true;
            rx2.Visible = true;
            rx3.Visible = true;
            rx4.Visible = true;

        }
        protected void Rx_hide()
        {
            rxl.Attributes.Add("visibility", "false");
            rxl.Visible = false;
            rx1.Visible = false;
            rx2.Visible = false;
            rx3.Visible = false;
            rx4.Visible = false;

        }
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                //rx is part of medical  yes
                Session["p1_Rxpart"] = "1";
                tog.Attributes.Add("checked", "checked");

                Rx_show();

            }
            else if (CheckBox1.Checked == false)
            {

                //rx is part of medical  no
                Session["p1_Rxpart"] = "0";
                tog.Attributes.Remove("checked");
                Rx_show();

            }
        }
        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox3.Checked == true)
            {

                //Is Rx covered equal to true
                Session["p1_RxCov"] = "1";
                togrx1.Attributes.Add("checked", "checked");
                //For showing 5 rows
                rx.Visible = true;
                Rx_show();

            }
            else if (CheckBox3.Checked == false)
            {

                //Is Rx covered equal to false
                Session["p1_RxCov"] = "0";
                togrx1.Attributes.Remove("checked");

                //For hiding 5 rows
                rx.Visible = false;
                Rx_hide();

            }
        }
        protected void GdcmT13_TextChanged(object sender, EventArgs e)
        {
            Session["GdcmT13"] = GdcmT13.Text;
        }
        protected void GdcmT15_TextChanged(object sender, EventArgs e)
        {
            Session["GdcmT15"] = GdcmT15.Text;
        }
        protected void GdcmT25_TextChanged(object sender, EventArgs e)
        {
            Session["GdcmT25"] = GdcmT25.Text;
        }
        protected void GdcmT27_TextChanged(object sender, EventArgs e)
        {
            Session["GdcmT27"] = GdcmT27.Text;
        }
        protected void GdcmT30_TextChanged(object sender, EventArgs e)
        {
            Session["GdcmT30"] = GdcmT30.Text;
        }
        protected void GdcmT32_TextChanged(object sender, EventArgs e)
        {
            Session["GdcmT32"] = GdcmT32.Text;
        }

        //famoop
        protected void famoopTxt1_TextChanged(object sender, EventArgs e)
        {
            Session["famoopTxt1"] = famoopTxt1.Text;
        }

        protected void famoopTxt2_TextChanged(object sender, EventArgs e)
        {
            Session["famoopTxt2"] = famoopTxt2.Text;
        }
        //family deductible
        protected void famdTxt1_TextChanged(object sender, EventArgs e)
        {
            Session["famdTxt1"] = famdTxt1.Text;
        }

        protected void famdTxt2_TextChanged(object sender, EventArgs e)
        {
            Session["famdTxt2"] = famdTxt2.Text;
        }





        //More Less button code starts here

        protected void copay_show()
        {
            Ipr.Visible = true;
            Opr.Visible = true;
            Err.Visible = true;
            Urr.Visible = true;
            Radr.Visible = true;
            Lpr.Visible = true;
            Ppr.Visible = true;
            Spr.Visible = true;
            Por.Visible = true;
            Or.Visible = true;
        }
        protected void copay_hide()
        {
            Ipr.Visible = false;
            Opr.Visible = false;
            Err.Visible = false;
            Urr.Visible = false;
            Radr.Visible = false;
            Lpr.Visible = false;
            Ppr.Visible = false;
            Spr.Visible = false;
            Por.Visible = false;
            Or.Visible = false;
        }
        protected void moreLb_Click(object sender, EventArgs e)
        {
            //MoreL.Text = "Copay1";
            moreLb.Visible = false;
            lessLb.Visible = true;
            copay_show();


        }
        protected void lessLb_Click(object sender, EventArgs e)
        {
            // MoreL.Text = "Copay2";
            moreLb.Visible = true;
            lessLb.Visible = false;
            copay_hide();
        }



        //COPAYS 

        protected void T1IpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T1IpTxt"] = T1IpTxt.Text;
        }
        protected void T2IpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T2IpTxt"] = T2IpTxt.Text;
        }
        protected void T1OpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T1OpTxt"] = T1OpTxt.Text;
        }
        protected void T2OpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T2OpTxt"] = T2OpTxt.Text;
        }

        protected void T1UrTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T1UrTxt"] = T1UrTxt.Text;

        }
        protected void T2UrTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T2UrTxt"] = T2UrTxt.Text;
        }
        protected void T1ErTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T1ErTxt"] = T1ErTxt.Text;
        }
        protected void T2ErTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T2ErTxt"] = T2ErTxt.Text;
        }
        protected void T1RadTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T1RadTxt"] = T1RadTxt.Text;
        }
        protected void T2RadTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T2RadTxt"] = T2RadTxt.Text;
        }
        protected void T1LpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T1LpTxt"] = T1LpTxt.Text;
        }
        protected void T2LpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T2LpTxt"] = T2LpTxt.Text;
        }
        protected void T1PpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T1PpTxt"] = T1PpTxt.Text;
        }
        protected void T2PpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T2PpTxt"] = T2PpTxt.Text;
        }
        protected void T1SpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T1SpTxt"] = T1SpTxt.Text;
        }
        protected void T2SpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T2SpTxt"] = T2SpTxt.Text;
        }
        protected void T1PoTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T1PoTxt"] = T1PoTxt.Text;
        }
        protected void T2PoTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T2PoTxt"] = T2PoTxt.Text;
        }
        protected void T1OTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T1OTxt"] = T1OTxt.Text;
        }
        protected void T2OTxt_TextChanged(object sender, EventArgs e)
        {
            Session["T2OTxt"] = T2OTxt.Text;
        }
        protected void rRgTxt_TextChanged(object sender, EventArgs e)
        {
            Session["rRgTxt"] = rRgTxt.Text;
        }
        protected void mRgTxt_TextChanged(object sender, EventArgs e)
        {
            Session["mRgTxt"] = mRgTxt.Text;
        }
        protected void rRbfTxt_TextChanged(object sender, EventArgs e)
        {
            Session["rRbfTxt"] = rRbfTxt.Text;
        }
        protected void mRbfTxt_TextChanged(object sender, EventArgs e)
        {
            Session["mRbfTxt"] = mRbfTxt.Text;
        }
        protected void rRbnfTxt_TextChanged(object sender, EventArgs e)
        {
            Session["rRbnfTxt"] = rRbnfTxt.Text;
        }
        protected void mRbnfTxt_TextChanged(object sender, EventArgs e)
        {
            Session["mRbnfTxt"] = mRbnfTxt.Text;
        }
        protected void rRsTxt_TextChanged(object sender, EventArgs e)
        {
            Session["rRsTxt"] = rRsTxt.Text;
        }
        protected void mRsTxt_TextChanged(object sender, EventArgs e)
        {
            Session["mRsTxt"] = mRsTxt.Text;
        }
        //Group information 
        protected void SessTxt_TextChanged(object sender, EventArgs e)
        {
            Session["SessTxt"] = SessTxt.Text;
        }

        protected void CalTxt_TextChanged(object sender, EventArgs e)
        {
            Session["CalTxt"] = CalTxt.Text;
        }

        protected void EmpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["EmpTxt"] = EmpTxt.Text;
        }

        protected void singCovTxt_TextChanged(object sender, EventArgs e)
        {
            Session["singCovTxt"] = singCovTxt.Text;
        }

        protected void MemTxt_TextChanged(object sender, EventArgs e)
        {
            Session["MemTxt"] = MemTxt.Text;
        }

        protected void ageTxt_TextChanged(object sender, EventArgs e)
        {
            Session["ageTxt"] = ageTxt.Text;
        }

        protected void maleTxt_TextChanged(object sender, EventArgs e)
        {
            Session["maleTxt"] = maleTxt.Text;
        }

        protected void sicTxt_TextChanged(object sender, EventArgs e)
        {

            try
            {
                //Create Connection String And SQL Statement
                string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                string strSelect = "SELECT SIC_Code, Industry_Description FROM STA.MEM_Industries WHERE SIC_Code = @SIC_Code";
                // string strSelect = "SELECT COUNT(SIC_Code), Industry_Description FROM STA.MEM_Industries WHERE SIC_Code = @SIC_Code";

                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                //cmd.Parameters.AddWithValue("@SIC_Code", sicTxt.Text);
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strSelect;
                SqlParameter siccode = new SqlParameter("@SIC_Code", SqlDbType.VarChar, 50);
                siccode.Value = sicTxt.Text.Trim().ToString();
                cmd.Parameters.Add(siccode);
                con.Open();
                //int returnValue = (int)cmd.ExecuteScalar();
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        indTxt.Text = dr.GetString(1);
                        Session["sicTxt"] = sicTxt.Text;
                        Session["indTxt"] = indTxt.Text;
                    }
                    //Response.Write("<script language='javascript'>alert('Correct');</script>");

                }
                else
                {
                    Response.Write("<script language='javascript'>alert('Invalid SIC code Entry ');</script>");
                    sicTxt.Text = "";
                    indTxt.Text = "";
                    //FindControl(sicTxt).Focus();
                }
                dr.Close();
                con.Close();
            }
            catch (SqlException ex)
            {
                Response.Write("<script language='javascript'>alert('Error:" + ex + "');</script>");
            }
            //

        }
        protected void NetDisCalBtn_TextChanged(object sender, EventArgs e)
        {
            if (zip1Txt.Text != "")
            {
                if (enroll2Txt.Text == "")
                    enroll2Txt.Text = 0.ToString();
                if (enroll3Txt.Text == "")
                    enroll3Txt.Text = 0.ToString();
                var enrollments = new List<int>() { Convert.ToInt32(enroll1Txt.Text.Trim().ToString()), Convert.ToInt32(enroll2Txt.Text.Trim().ToString()), Convert.ToInt32(enroll3Txt.Text.Trim().ToString()) };
                double sum = 0;
                try
                {
                    //Create Connection String And SQL Statement
                    string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                    string strSelect = "SELECT MemberZip,MemberState,StdCompDisZip,StdCompDisState FROM STA.MEM_DefaultCompositeGeoDiscounts WHERE (MemberZip = @MemberZip OR MemberState = @MemberZip1)";
                    //string strSelect = "SELECT COUNT(SIC_Code), Industry_Description FROM STA.MEM_Industries WHERE SIC_Code = @SIC_Code";

                    SqlConnection con = new SqlConnection(constr);
                    SqlCommand cmd = new SqlCommand();

                    //cmd.Parameters.AddWithValue("@SIC_Code", sicTxt.Text);
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = strSelect;

                    //
                    Double[] CompDisValues1 = new Double[3];
                    Double[] CompDisValues2 = new Double[3];

                    int[] zip = new int[3];
                    if (zip2Txt.Text == "") zip2Txt.Text = 0.ToString();
                    if (zip3Txt.Text == "") zip3Txt.Text = 0.ToString();
                    var Zipcodes = new List<string>() { zip1Txt.Text.Trim().ToString(), zip2Txt.Text.Trim().ToString(), zip3Txt.Text.Trim().ToString() };
                    for (int r = 0; r < zip.Length; r++)
                    {
                        //  if (zip[r] != 0) { 
                        SqlParameter memZip = new SqlParameter("@MemberZip", SqlDbType.NVarChar, 50);
                        SqlParameter memZip1 = new SqlParameter("@MemberZip1", SqlDbType.NVarChar, 50);
                        int i;
                        if (!int.TryParse(Zipcodes[r], out i))
                        {
                            zip[r] = 1;
                            memZip1.Value = Zipcodes[r];
                            memZip.Value = "";
                            // Response.Write("<script language='javascript'>alert('It is a string " + Zipcodes[r] + "');</script>");
                            // Label.Text = "This is a number only field";
                        }
                        else
                        {
                            zip[r] = 2;
                            memZip.Value = Convert.ToInt32(Zipcodes[r]);
                            memZip1.Value = "";
                            // Response.Write("<script language='javascript'>alert('It is a number" + i + "');</script>");
                        }
                        //

                        cmd.Parameters.Add(memZip1);
                        cmd.Parameters.Add(memZip);

                        con.Open();
                        //int returnValue = (int)cmd.ExecuteScalar();
                        SqlDataReader dr = cmd.ExecuteReader();

                        double test1 = 0.00;
                        double test2 = 0.00;
                        int loop = 0;
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                //CompDisValues1[0] = Convert.ToDecimal(dr.GetString(3));
                                if (zip[r] == 1)
                                {
                                    test1 = dr.GetDouble(3);
                                    CompDisValues1[r] = dr.GetDouble(3);
                                    loop++;
                                    if (loop == 2)
                                    {
                                        sum = sum + (test1 * enrollments[r]);
                                        break;
                                    }
                                }
                                if (zip[r] == 2)
                                {
                                    test2 = dr.GetDouble(2);
                                    sum = sum + (test2 * enrollments[r]);
                                    CompDisValues2[r] = dr.GetDouble(2);
                                }


                            }//for

                            //Response.Write("<script language='javascript'>alert('Correct " + CompDisValues1[0] + ", " + CompDisValues2[0] + "');</script>");
                            //  Response.Write("<script language='javascript'>alert('Correct  " + test1 + " , " + test2 + "');</script>");


                        }
                        else
                        {
                            Response.Write("<script language='javascript'>alert('Invalid Zipcode Entry');</script>");

                            break;
                        }

                        dr.Close();
                        con.Close();
                        cmd.Parameters.Remove(memZip1);
                        cmd.Parameters.Remove(memZip);


                    }//for loop for all the three zip codes


                }//try


                catch (SqlException ex)
                {
                    Response.Write("<script language='javascript'>alert('Error:" + ex + "');</script>");
                }
                catch (Exception ex1)
                {
                    Response.Write("<script language='javascript'>alert('Something went wrong" + ex1 + "');</script>");
                }

                double discount = 0.00;
                int Totenroll = 0; ;
                for (int i = 0; i < enrollments.Count; i++)
                {
                    Totenroll = Totenroll + enrollments[i];
                }
                discount = sum / Totenroll;
                Session["provNetTxt1"] = string.Format("{0:N}", Convert.ToDecimal(discount.ToString()));
                provNetTxt1.Text = string.Format("{0:N}", Convert.ToDecimal(discount.ToString()));
                string.Format("{0:N}", Convert.ToDecimal(discount.ToString()));

                // Response.Write("<script language='javascript'>alert('Calculated Discount: " + discount + "');</script>");

            }//Zip1 Not zero
            else
            {

            }


        }
        protected void zip1Txt_TextChanged(object sender, EventArgs e)
        {
            Session["zip1Txt"] = zip1Txt.Text;
        }

        protected void enroll1Txt_TextChanged(object sender, EventArgs e)
        {
            Session["enroll1Txt"] = enroll1Txt.Text;
        }

        protected void zip2Txt_TextChanged(object sender, EventArgs e)
        {
            Session["zip2Txt"] = zip2Txt.Text;
        }

        protected void enroll2Txt_TextChanged(object sender, EventArgs e)
        {
            Session["enroll2Txt"] = enroll2Txt.Text;
        }

        protected void zip3Txt_TextChanged(object sender, EventArgs e)
        {
            Session["zip3Txt"] = zip3Txt.Text;
        }

        protected void enroll3Txt_TextChanged(object sender, EventArgs e)
        {
            Session["enroll3Txt"] = enroll3Txt.Text;
        }
        //Accordion Pane 1
        //Accordion Pane 2
        protected void provNetT1_TextChanged(object sender, EventArgs e)
        {
            Session["provNetT1"] = provNetT1.Text;
        }
        protected void provNetT2_TextChanged(object sender, EventArgs e)
        {
            Session["provNetT2"] = provNetT2.Text;
        }

        protected void provNetTxt2_TextChanged(object sender, EventArgs e)
        {
            Session["provNetTxt2"] = provNetTxt2.Text;
        }
        protected void provNetTxt1_TextChanged(object sender, EventArgs e)
        {
            Session["provNetTxt1"] = provNetTxt1.Text;
        }

    }
}