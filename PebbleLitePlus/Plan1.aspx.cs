using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
using System.Xml;

namespace PebbleLitePlus
{
    public partial class Plan2 : System.Web.UI.Page
    {
        public DataTable result1 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
             

        CalTxt.Attributes.Add("readonly", "readonly");
            if (!IsPostBack)
            {
                Response.Write("<script language='javascript'>alert('not a postback');</script>");
                CalTxt.Text = Session["effDate"].ToString();

                EmpTxt.Text = Session["EmpTxt"].ToString();
                if (Session["EnrollmentTiers"].ToString() == "1")
                    btncheck11.Attributes.Add("checked", "checked");
                else if (Session["EnrollmentTiers"].ToString() == "2")
                    btncheck12.Attributes.Add("checked", "checked");
               else  if (Session["EnrollmentTiers"].ToString() == "3")
                    btncheck13.Attributes.Add("checked", "checked");
                else if (Session["EnrollmentTiers"].ToString() == "4")
                    btncheck14.Attributes.Add("checked", "checked");
                else if (Session["EnrollmentTiers"].ToString() == "5")
                    btncheck15.Attributes.Add("checked", "checked");


                singCovTxt.Text = Session["singCovTxt"].ToString();
                ageTxt.Text = Session["ageTxt"].ToString();
                persMaleTxt.Text = Session["persMaleTxt"].ToString();

                
            }
            else
            {
                Response.Write("<script language='javascript'>alert('is a postback');</script>");

                  Session["effDate"] = CalTxt.Text;
                  Session["EmpTxt"]= EmpTxt.Text;
                if (btncheck11.Checked == true)
                    Session["EnrollmentTiers"] = "1";
                else if (btncheck12.Checked == true)
                    Session["EnrollmentTiers"] = "2";
                else if (btncheck13.Checked == true)
                    Session["EnrollmentTiers"] = "3";
                else if (btncheck14.Checked == true)
                    Session["EnrollmentTiers"] = "4";
                else if (btncheck15.Checked == true)
                    Session["EnrollmentTiers"] = "5";
               
                  Session["singCovTxt"]= singCovTxt.Text;
                  Session["ageTxt"]= ageTxt.Text;
                  Session["persMaleTxt"]=persMaleTxt.Text;
            }
            foreach (Control c in p1_DashPanel1.Controls)
            {
                //if (c is TextBox && c.ID.StartsWith("p1_"))
                if (c is TextBox)
                    ((TextBox)c).ReadOnly = true;
            }

            CreateDynamicxmlfile1();
            DrawPieChart1(200, 400, 500, 300, 600);

        }

        private void DrawPieChart1(int value1, int value2, int value3,int value4, int value5)
        {
            //reset your chart series and legends
            Chart1.Series.Clear();
            Chart1.Legends.Clear();

            //Add a new Legend(if needed) and do some formating
            Chart1.Legends.Add("MyLegend");
            Chart1.Legends[0].LegendStyle = LegendStyle.Table;
            Chart1.Legends[0].Docking = Docking.Top;
            Chart1.Legends[0].Alignment = StringAlignment.Center;
            Chart1.Legends[0].Title = "Plan1";
            Chart1.Legends[0].BorderColor = Color.Black;


            //Add a new chart-series
            string seriesname = "MySeriesName";
            Chart1.Series.Add(seriesname);
            //set the chart-type to "Pie"
            Chart1.Series[seriesname].ChartType = SeriesChartType.Pie;

            //Add some datapoints so the series. in this case you can pass the values to this method
            Chart1.Series[seriesname].Points.AddXY("EE", value1);
            Chart1.Series[seriesname].Points.AddXY("EE+SP", value2);
            Chart1.Series[seriesname].Points.AddXY("EE+CH", value3);
            Chart1.Series[seriesname].Points.AddXY("EE+CH(S)", value4);
            Chart1.Series[seriesname].Points.AddXY("EE+SP+CH(S)", value5);
            Chart1.Series[0]["PieLabelStyle"] = "Disabled";
            // Chart1.Series[0].Points[0].Color = Color.FromArgb(80, 120, 179);
            Chart1.Series[0].Points[0].Color = Color.FromArgb(51, 102, 255);
            Chart1.Series[0].Points[1].Color = Color.FromArgb(0, 158, 163);
            Chart1.Series[0].Points[2].Color = Color.FromArgb(255, 69, 0);
            Chart1.Series[0].Points[3].Color = Color.FromArgb(50, 205, 50);
            Chart1.Series[0].Points[4].Color = Color.FromArgb(255, 215, 0);


        }

        public void CreateDynamicxmlfile1()
        {
            //int a = 0; string b = ""; int c = 2; int d = 9999999;
            StringWriter stringwriter = new StringWriter();
            XmlTextWriter xmlTextWriter = new XmlTextWriter(stringwriter);
            xmlTextWriter.Formatting = Formatting.Indented;

            xmlTextWriter.WriteStartDocument();

            xmlTextWriter.WriteStartElement("root");
            //For Plan1
           
            xmlTextWriter.WriteStartElement("GroupInfo");
            xmlTextWriter.WriteElementString("Session_Id", Session["id"].ToString());
           
            //xmlTextWriter.WriteElementString("PlanNo", Convert.ToInt32(Session["planNo"].ToString()).ToString());
            xmlTextWriter.WriteElementString("EnrollmentTiers", Session["EnrollmentTiers"].ToString());
            xmlTextWriter.WriteElementString("EmpTxt", Session["EmpTxt"].ToString());
            xmlTextWriter.WriteElementString("singCovTxt", Session["singCovTxt"].ToString());
            xmlTextWriter.WriteElementString("ageTxt", Session["ageTxt"].ToString());
            xmlTextWriter.WriteElementString("persMaleTxt", Session["persMaleTxt"].ToString());
            xmlTextWriter.WriteEndElement();
            //xmlTextWriter.WriteEndElement();
            if (Session["singCovTxt"].ToString() != "")
            {
                float f1 = float.Parse(Session["singCovTxt"].ToString());
                f1 = f1 / 100;
                xmlTextWriter.WriteElementString("singCovTxt", f1.ToString());
            }
            else
            {
                xmlTextWriter.WriteElementString("singCovTxt", "0.4");
            }

            if (Session["persMaleTxt"].ToString() != "")
            {
                float f1 = float.Parse(Session["persMaleTxt"].ToString());
                f1 = f1 / 100;
                xmlTextWriter.WriteElementString("persMaleTxt", f1.ToString());
            }
            else
            {
                xmlTextWriter.WriteElementString("persMaleTxt", "0.5");
            }



            xmlTextWriter.WriteEndDocument();
            XmlDocument docSave = new XmlDocument();
            docSave.LoadXml(stringwriter.ToString());
            //write the path where you want to save the Xml file
            //string Fname = @"C:\Users\WSP-Mobile1\OneDrive - Windsor Strategy Partners, Inc\PebbleV3\XML\" + HttpContext.Current.Session.SessionID + "Information.xml";
            //string Fname =  HttpContext.Current.Session.SessionID + "Information.xml";
            //string Fname = @"~App_Data/" + HttpContext.Current.Session.SessionID + "Information.xml";
            //The following works for the deployment
            string Fname = HttpContext.Current.Server.MapPath(@"~\XMLFiles\" + HttpContext.Current.Session.SessionID + "Information.xml");
           //string Fname = @Server.MapPath(HttpContext.Current.Session.SessionID + "Information.xml");
            docSave.Save(@Fname);


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

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void SubBtn_Click(object sender, EventArgs e)
        {
            CreateDynamicxmlfile1();
               string Fname = HttpContext.Current.Server.MapPath(@"~\XMLFiles\" + HttpContext.Current.Session.SessionID + "Information.xml");
                //string Fname = @Server.MapPath(HttpContext.Current.Session.SessionID + "Information.xml");
                string xml = File.ReadAllText(Fname);
                string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                //Response.Write("<script language=javascript> alert('Going to Create DataSet');</script>");
                DataSet ds = new DataSet();


                StringBuilder errorMessages = new StringBuilder();

                try
                {
                    // Response.Write("<script language=javascript> alert('Going to connect SQL');</script>");
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        // Response.Write("<script language=javascript> alert('Going to Create SQL adapter');</script>");
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {

                        using (SqlCommand cmd = new SqlCommand("Dashboard_Outputs"))
                        {
                            //Response.Write("<script language=javascript> alert('Going to execute SQL CommandSP');</script>");
                            sda.SelectCommand = cmd;
                            cmd.Connection = con;
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@pParam", xml);
                            con.Open();

                            cmd.CommandTimeout = 600;
                            sda.Fill(ds);
                            //8888
                        }//SQL Command

                            sda.Dispose();

                        }//SQL Adapter
                        con.Close();


                    }//SQL Connection
                } // Try
                catch (Exception ex)
                {
                    for (int i = 0; i < ex.Data.Count; i++)
                    {
                        errorMessages.Append("Index #" + i + "\n" +
                            "Message: " + ex.Message + "\n" +

                            "Source: " + ex.Source + "\n");
                    }

                    // Response.Write("<script language=javascript> alert('SQL Conncection Error " + errorMessages + "');</script>");

                }
                finally
                {


                }
                //**Working code starts here**
                if (ds.Tables.Count > 0)
                {
                    for (int i = 0; i < ds.Tables.Count; i++)
                    {
                        if (i == 0)
                        {

                        Double TotalEE=0.00;
                            //string res1= result1.Rows[1]["MemberPays"].ToString();
                            //string res2 = result1.Rows[1]["PlanPays"].ToString();
                        result1 = ds.Tables[i].Copy();


                      
                        foreach (DataRow dr in result1.Rows)
                        {
                            TotalEE += Convert.ToDouble(result1.Rows[i]["EE"].ToString());
                            if(Convert.ToInt32(result1.Rows[i]["EnroleTier"].ToString()) == 1)
                                    {
                                
                                     }
                        }
                        Response.Write("<script language=javascript> alert('Total EE: "+ TotalEE +"');</script>");
                        /* GridView1.DataSource = result1;
                         GridView1.DataBind();*/

                        //Plan1
                        /*Session["p1_MemPays"] = result1.Rows[1]["MemberPays"].ToString();
                         Session["p1_PlanPays"] = result1.Rows[1]["PlanPays"].ToString();
                         Session["p1_Members"] = result1.Rows[1]["Members"].ToString();
                         Session["p1_PlanRxPays"] = result1.Rows[1]["PlanRxPays"].ToString();
                         Session["p1_MemberRxPays"] = result1.Rows[1]["MemberRxPays"].ToString();

                         //Plan 2
                         Session["p2_MemPays"] = result1.Rows[3]["MemberPays"].ToString();
                         Session["p2_PlanPays"] = result1.Rows[3]["PlanPays"].ToString();
                         Session["p2_Members"] = result1.Rows[3]["Members"].ToString();
                         Session["p2_PlanRxPays"] = result1.Rows[3]["PlanRxPays"].ToString();
                         Session["p2_MemberRxPays"] = result1.Rows[3]["MemberRxPays"].ToString();*/

                    }





                    }


                }//if
                else
                {
                    Response.Write("<script language=javascript> alert('No Sheets created, Error in the entered values');</script>");
                }
                //**Working code ends here

          
        }
    }
}