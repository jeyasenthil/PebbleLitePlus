using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PebbleLitePlus
{
    public partial class Plan2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CalTxt.Attributes.Add("readonly", "readonly");
            if (!IsPostBack)
            {
                CalTxt.Text = Session["effDate"].ToString();
            }
            
        }

        protected void SessTxt_TextChanged(object sender, EventArgs e)
        {
            Session["SessTxt"] = SessTxt.Text;
        }
        protected void ScenTxt_TextChanged(object sender, EventArgs e)
        {
            Session["ScenTxt"] = ScenTxt.Text;
        }
        protected void CalTxt_TextChanged(object sender, EventArgs e)
        {
            //Session["CalTxt"] = CalTxt.Text;
            Session["effDate"] = CalTxt.Text;
        }

        protected void EmpTxt_TextChanged(object sender, EventArgs e)
        {
            Session["EmpTxt"] = EmpTxt.Text;
        }
        protected void TotmemTxt_TextChanged(object sender, EventArgs e)
        {
            Session["TotmemTxt"] = TotmemTxt.Text;
        }

        protected void singCovTxt_TextChanged(object sender, EventArgs e)
        {
            Session["singCovTxt"] = singCovTxt.Text;
        }

        protected void step1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            //step1.CssClass = "tealCol";
        }

        protected void step2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;

        }

        protected void step3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox21_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox22_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox31_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox32_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox41_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox42_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox51_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox52_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox51a_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox52a_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox61_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox72_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox62_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox71_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox81_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox82_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox91_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox92_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox101_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox102_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox111_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox112_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox121_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox122_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eem1Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eef1Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spm1Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spf1Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chf1Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsm1Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsf1Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famm1Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famf1Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eem2Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eef2Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spm2Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spf2Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chm2Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chf2Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsm2Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsf2Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famm2Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famf2Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eem3Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eef3Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spm3Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spf3Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chm3Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chf3Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsm3Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsf3Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famm3Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famf3Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eem4Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eef4Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spm4Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spf4Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chm4Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chf4Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsm4Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsf4Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famm4Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famf4Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eem5Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eef5Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spm5Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spf5Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chm5Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chf5Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsm5Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsf5Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famm5Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famf5Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eef6Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eem6Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spm6Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Spf6Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chm6Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chf6Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsm6Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chsf6Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famm6Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Chm1Txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Famf6Txt_TextChanged(object sender, EventArgs e)
        {

        }
    }
}