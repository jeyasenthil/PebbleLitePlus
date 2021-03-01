<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Plan.aspx.cs" Inherits="PebbleLitePlus.Plan1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
    
   
   
    <div class ="container" >
      
    <input type="button" class="colBtn1"  value="Collapse All" id="ca"/>
    <input type="button" class="colBtn1"  value="Expand All" id="ea"/>
         
    
 <div class="accordion" >    
        <div class="panel">

            <h1><span class="glyphicon glyphicon-book"   runat="server"></span>Group Information<span class="caret"></span></h1>
             <div class="content">
                 <table>
                  <tr>
                    <td><asp:Label ID="SessL" runat="server" Text="Session Descriptor"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="SessTxt" OnTextChanged="SessTxt_TextChanged" runat="server"></asp:TextBox>
                    </td>
                  </tr>
                  <tr>
                      <td>
                           <asp:Label ID="CalL" runat="server" Text="Plan Effective Date"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="CalTxt" OnTextChanged="CalTxt_TextChanged" AutoPostBack="true" CssClass="DeTbx1" placeholder="1/1/2020" ClientIDMode="Static" runat="server"></asp:TextBox>
                        <!--<span class="glyphicon glyphicon-calendar"></span>-->
                      </td>
                  </tr>
          
            
                     
                  <tr>
                      <td>
                    <asp:Label ID="EmpL" runat="server" Text="Enrolled Employees"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="EmpTxt" OnTextChanged="EmpTxt_TextChanged" CssClass="TxtBox1" runat="server"></asp:TextBox>
                      </td>
                  </tr>
                     <tr>
                      <td>
                          <asp:Label ID="CoveL" runat="server" Text="Single Coverage Percentage"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="singCovTxt"  OnTextChanged="singCovTxt_TextChanged" CssClass="TxtBox11" runat="server"></asp:TextBox><span id="sp1" runat="server" class="pers">%</span>
                      </td>
                  </tr>
                <!--<tr>
                      <td>
                          <asp:Label ID="MemL" runat="server" Text="Total Members"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="MemTxt" CssClass="TxtBox1" OnTextChanged="MemTxt_TextChanged" runat="server"></asp:TextBox>
                      </td>
                  </tr>-->

               <tr>
                      <td>
                          <asp:Label ID="ageL" runat="server" Text="Average Age"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="ageTxt" CssClass="TxtBox1"  OnTextChanged="ageTxt_TextChanged" runat="server"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="MaleL" CssClass="TxtBox1" runat="server" Text="Enrolled Male Percentage"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="maleTxt" OnTextChanged="maleTxt_TextChanged" CssClass="TxtBox11" runat="server"></asp:TextBox><span id="sp2" runat="server" class="pers">%</span>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="sicL" runat="server" Text="Industry(SIC Code)"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="sicTxt" OnTextChanged="sicTxt_TextChanged" CssClass="TxtBox1" AutoPostBack="true" runat="server"></asp:TextBox>
                      </td>
                  </tr>
                     <tr>
                         <td></td>
                         <td>
                             <asp:TextBox ID="indTxt"  CssClass="indTxtClass"  runat="server" ToolTip="Industry Name" AutoCompleteType="Search"></asp:TextBox>
                         </td>

                     </tr>
                 
                  <tr>
                      <td></td>
                      <td><table>
                         <tr>
                        <td>
                             <asp:Label ID="zipL" runat="server" Text="Zip/State"></asp:Label></td>
                        <td> <asp:Label ID="ZenrollL"  runat="server" Text="Enrollment"></asp:Label></td> 
                        </tr>
                         <tr>
                             <td>
                                  <asp:TextBox ID="zip1Txt" OnTextChanged="zip1Txt_TextChanged" CssClass="TxtBox1" runat="server"></asp:TextBox></td>
                             <td> <asp:TextBox ID="enroll1Txt" OnTextChanged="enroll1Txt_TextChanged" CssClass="TxtBox1" runat="server"></asp:TextBox></td>
                        <td></td>
                             </tr>
                         <tr>
                              <td>
                                 <asp:TextBox ID="zip2Txt" OnTextChanged="zip2Txt_TextChanged" CssClass="TxtBox1" runat="server"></asp:TextBox></td>
                             <td><asp:TextBox ID="enroll2Txt" OnTextChanged="enroll2Txt_TextChanged" CssClass="TxtBox1" runat="server"></asp:TextBox></td>
                        
                             <td>
                                 </td>
                           </tr>
                         <tr>
                              <td>
                                 <asp:TextBox ID="zip3Txt"  CssClass="TxtBox1" OnTextChanged="zip3Txt_TextChanged" runat="server"></asp:TextBox></td>
                             <td><asp:TextBox ID="enroll3Txt" CssClass="TxtBox1" OnTextChanged="enroll3Txt_TextChanged" runat="server"></asp:TextBox></td>
                      <td><asp:Button ID="NetDisCalBtn" runat="server" CssClass="Planbtn" OnClick="NetDisCalBtn_TextChanged" Text="Discount Calc" ToolTip="Click to Calculate Network Discount" /></td>   </tr>
                     </table> </td>
                  </tr>
                 </table>
             </div>
       </div>
        <div class="panel">
            <h1><span class="glyphicon glyphicon-tags"  runat="server" ></span>Network Pricing<span class="caret"></span></h1>
             <div class="content">
               <table id="provNet" CssClass="provT2" runat="server">
               
                <tr>
                    <td> 
                       
                    </td>
                    <td style="width:90px;">
                        <asp:Label ID="provNetL1" runat="server" Text="Tier(INN)"></asp:Label> </td>
                    <td style=" width:80px;word-wrap: break-word">
                        <asp:Label ID="provNetL2" runat="server"  Text="Medical Discount"></asp:Label></td>
                  
                    
                    <td style="width:90px;">
                        <asp:Label ID="provNetL7"  runat="server" Text="Tier(OON)"></asp:Label></td>
                    <td style=" width:80px;word-wrap: break-word">
                        <asp:Label ID="provNetL8"  runat="server" Text="Medical Discount"></asp:Label></td>
                   
                </tr>

                <tr>
                    <td style="text-align:left; white-space:nowrap;">
                        <asp:Label ID="provNetL10" runat="server" Text="Medical Discount"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="provNetT1" CssClass="TxtBox TxtBox11" OnTextChanged="provNetT1_TextChanged" ClientIDMode="Static" runat="server"></asp:TextBox><span id="sp3" runat="server" class="pers">%</span></td>
                    <td>
                        <asp:TextBox ID="provNetTxt1" CssClass="TxtBox11" OnTextChanged="provNetTxt1_TextChanged" style="background-color:gainsboro" runat="server"></asp:TextBox><span id="rsp"  class="pers1">%</span>
                       </td>
                 
                    
                    <td>
                        <asp:TextBox ID="provNetT2" OnTextChanged="provNetT2_TextChanged"  CssClass="TxtBox TxtBox11" ClientIDMode="Static" runat="server" ></asp:TextBox><span id="sp4" runat="server" class="pers">%</span></td>
                    <td>
                        <asp:TextBox ID="provNetTxt2" CssClass="TxtBox11" OnTextChanged="provNetTxt2_TextChanged"  style="background-color:gainsboro"  runat="server"></asp:TextBox><span id="rsp1"  class="pers1">%</span></td>
                  
                </tr>
                </table>
             </div>
         </div>
        <div class="panel">
            <h1> <span class="glyphicon glyphicon-road"   runat="server" ></span>Plan Design(Medical & Rx)<span class="caret"></span></h1>
             <div class="content">
                 <table id="copayT3" CssClass="coPayT1" width="100%" runat="server" >
                          
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="T1L" runat="server" Text="Tier(INN)"></asp:Label> </td>
                     <td>
                        <asp:Label ID="T2L" runat="server" Text="Tier(OON)"></asp:Label></td>
				</tr>

			    <tr>
                            <td><asp:Label ID="persL" runat="server" Text="Percentage of service in plan Tier"></asp:Label></td>
                            <td><asp:TextBox ID="HiTxt1" TabIndex="1" CssClass="TxtBox TxtBox11" runat="server" OnTextChanged="HiTxt1_TextChanged"></asp:TextBox><span id="sp5" runat="server" class="pers">%</span></td>
                            <td><asp:TextBox ID="HiTxt2" TabIndex="-1" CssClass="TxtBox TxtBox11 greycol" runat="server" OnTextChanged="HiTxt2_TextChanged"></asp:TextBox><span id="sp6" runat="server" style="background-color:gainsboro;" class="pers">%</span> </td>
                 </tr>
                       
                <tr>
                    <td> 
                    </td>
                    <td><asp:Label ID="medT1L" runat="server" Text="Medical Tier(INN)"></asp:Label></td>
                    <td><asp:Label ID="medT2L" runat="server" Text="Medical Tier(OON)"></asp:Label></td>
                </tr>
            
                <tr id="eesp_r11" runat="server">
                    <td>
                        <div>
                        <asp:Label ID="GdcmL12" runat="server" Text="Individual Deductible"></asp:Label>
                        </div>
                    </td>

                    <td>
                        <asp:TextBox ID="GdcmT13" TabIndex="2" CssClass="TxtBox TxtBox1"  runat="server" OnTextChanged="GdcmT13_TextChanged"> </asp:TextBox>

                    </td>
                    <td>
                        <asp:TextBox ID="GdcmT15" TabIndex="7" CssClass="TxtBox TxtBox1"  runat="server" OnTextChanged="GdcmT15_TextChanged"> </asp:TextBox>

                    </td>

                 </tr>

                <tr id="famd_r4"  runat="server">
                    <td><asp:Label ID="famdL" runat="server" Text="Family Deductible"></asp:Label></td>
                    <td><asp:TextBox ID="famdTxt1" TabIndex="3"  CssClass="TxtBox TxtBox1" runat="server" OnTextChanged="famdTxt1_TextChanged"></asp:TextBox></td>
                    <td><asp:TextBox ID="famdTxt2" TabIndex="8"  CssClass="TxtBox TxtBox1" runat="server" OnTextChanged="famdTxt2_TextChanged"></asp:TextBox></td>
                </tr>
             
                <tr class="t7">
                    <td><asp:Label ID="GdcmL26" runat="server" Text="Coinsurance"></asp:Label></td>
                    <td><asp:TextBox ID="GdcmT25" TabIndex="4" CssClass="TxtBox TxtBox11" runat="server" OnTextChanged="GdcmT25_TextChanged"></asp:TextBox><span id="sp7" runat="server" class="pers">%</span></td>
                    <td><asp:TextBox ID="GdcmT27" TabIndex="9" CssClass="TxtBox TxtBox11" runat="server" OnTextChanged="GdcmT27_TextChanged"></asp:TextBox><span id="sp8" runat="server" class="pers">%</span></td>
                </tr>

                <tr class="t3" id="moopr1">
                    <td>
                         <div>
                        <asp:Label ID="GdcmL28" runat="server" Text="Individual MOOP"></asp:Label>
                        </div>
                    </td>
                    <td><asp:TextBox ID="GdcmT30" TabIndex="5" placeholder="&#8734;" CssClass="TxtBox TxtBox1" runat="server" OnTextChanged="GdcmT30_TextChanged"></asp:TextBox></td>
                    <td><asp:TextBox ID="GdcmT32" TabIndex="10" placeholder="&#8734;" CssClass="TxtBox TxtBox1" runat="server" OnTextChanged="GdcmT32_TextChanged"></asp:TextBox></td>
                </tr>
              
                <tr class="t3" id="moopr6">
                    <td><asp:Label ID="GdcmL33" runat="server" Text="Family MOOP"></asp:Label></td>
                    <td><asp:TextBox ID="famoopTxt1" TabIndex="6"  placeholder="&#8734;" CssClass="TxtBox TxtBox1" runat="server" OnTextChanged="famoopTxt1_TextChanged"></asp:TextBox></td>
                    <td><asp:TextBox ID="famoopTxt2" TabIndex="11" placeholder="&#8734;" CssClass="TxtBox TxtBox1" runat="server" OnTextChanged="famoopTxt2_TextChanged"></asp:TextBox></td>
                </tr>
   <tr>
    <td><div><asp:Label  ID="MoreL"  runat="server"  Text="Copays"></asp:Label>
                       <asp:LinkButton ID="moreLb" runat="server" style="color:blue" OnClick="moreLb_Click"> <i class="fa fa-caret-down"> &nbsp;</i></asp:LinkButton>
                       <asp:LinkButton ID="lessLb" Visible="false" style="color:blue" runat="server" OnClick="lessLb_Click"> <i class="fa fa-caret-up"> &nbsp;</i></asp:LinkButton>
                    </div></td>
    <td></td>
    <td></td>
    </tr>
                     
<tr id="Ipr"  visible="false" runat="server">
            <td>
                <asp:Label ID="Ipl" runat="server" Text="Inpatient(IP)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="T1IpTxt"  CssClass="TxtBox TxtBox1" TabIndex="12" OnTextChanged="T1IpTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="T2IpTxt" CssClass="TxtBox TxtBox1" TabIndex="22" OnTextChanged="T2IpTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
        </tr>
<tr id="Opr"  visible="false" runat="server">
            <td>
                <asp:Label ID="Opl" runat="server" Text="Outpatient(OP)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="T1OpTxt" CssClass="TxtBox TxtBox1" TabIndex="13" OnTextChanged="T1OpTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="T2OpTxt" CssClass="TxtBox TxtBox1"  TabIndex="23" OnTextChanged="T2OpTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
<tr id="Err"  visible="false" runat="server">
            <td>
                <asp:Label ID="Erl" runat="server" Text="Emergency(OP)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="T1ErTxt" OnTextChanged="T1ErTxt_TextChanged" TabIndex="14" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="T2ErTxt" CssClass="TxtBox TxtBox1"  TabIndex="24" OnTextChanged="T2ErTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
<tr id="Urr"  visible="false" runat="server">
            <td>
                <asp:Label ID="Ur1" runat="server" Text="UrgentCare(OP)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="T1UrTxt" OnTextChanged="T1UrTxt_TextChanged"  TabIndex="15" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="T2UrTxt" CssClass="TxtBox TxtBox1" TabIndex="25" OnTextChanged="T2UrTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
<tr id="Radr"  visible="false" runat="server">
            <td>
                <asp:Label ID="Radl" runat="server" Text="Radiology-Complex(RAD)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="T1RadTxt" OnTextChanged="T1RadTxt_TextChanged" TabIndex="16" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="T2RadTxt" CssClass="TxtBox TxtBox1"  TabIndex="26" OnTextChanged="T2RadTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
<tr id="Lpr"  visible="false" runat="server">
            <td>
                <asp:Label ID="Lpl" runat="server" Text="Lab/Pathology(OP)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="T1LpTxt" OnTextChanged="T1LpTxt_TextChanged" TabIndex="17" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="T2LpTxt" CssClass="TxtBox TxtBox1"  TabIndex="27" OnTextChanged="T2LpTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
<tr id="Ppr"  visible="false" runat="server">
            <td>
                <asp:Label ID="Ppl" runat="server" Text="Primary Physician(PH)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="T1PpTxt" OnTextChanged="T1PpTxt_TextChanged" TabIndex="18" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="T2PpTxt" CssClass="TxtBox TxtBox1" TabIndex="28" OnTextChanged="T2PpTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
<tr id="Spr"  visible="false" runat="server">
            <td>
                <asp:Label ID="Spl" runat="server" Text="Speciality Physician(PH)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="T1SpTxt" OnTextChanged="T1SpTxt_TextChanged" TabIndex="19" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="T2SpTxt" CssClass="TxtBox TxtBox1"  TabIndex="29" OnTextChanged="T2SpTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
<tr id="Por"  visible="false" runat="server">
            <td>
                <asp:Label ID="Pol" runat="server" Text="Physician Other(PH)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="T1PoTxt" OnTextChanged="T1PoTxt_TextChanged" TabIndex="20" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="T2PoTxt" CssClass="TxtBox TxtBox1" TabIndex="30" OnTextChanged="T2PoTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
<tr id="Or"  visible="false" runat="server">
            <td>
                <asp:Label ID="Ol" runat="server" Text="Other(O)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="T1OTxt" OnTextChanged="T1OTxt_TextChanged"  TabIndex="21" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="T2OTxt" CssClass="TxtBox TxtBox1" TabIndex="31" OnTextChanged="T2OTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>

       <tr id="rxCovered_r"  runat="server">
            <td>
                <asp:Label ID="RxCovL" runat="server" Text="Rx Covered?"></asp:Label>
            </td>
            <td><input id="togrx1"  type="checkbox" checked name="fruit" data-toggle="toggle"   data-width="35%"  data-height="20%" data-size="s" data-on="Yes" data-off="No" data-onstyle="info" data-offstyle="info" data-style="ios" runat="server"></td> 
        
            <td><asp:CheckBox ID="CheckBox3" EnableViewState="true"   checked="true" AutoPostBack="true"  runat="server" OnCheckedChanged="CheckBox3_CheckedChanged" /></td>
</tr>
<!--CssClass="invis"-->
                

<tr id="rx"  runat="server">
                   <td><asp:Label ID="GdcmL7" runat="server" Text="Is Rx part of the medical?"></asp:Label></td>
                   <td><input id="tog" type="checkbox" name="fruit" data-toggle="toggle" data-width="35%" data-height="20%"  data-on="Yes" data-off="No"  data-onstyle="info" data-offstyle="info" data-style="ios" runat="server"></td> 
                   <td><asp:CheckBox ID="CheckBox1" EnableViewState="true"   AutoPostBack="true"  runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
             <!--CssClass="invis"--> </td>
               </tr>
<tr id="rxl"  runat="server">
            <td>
                
            </td>
            <td>
                <asp:Label ID="retailL" runat="server" Text="Retail"></asp:Label>
            </td>
            <td>
                <asp:Label ID="MailL" runat="server" Text="Mail"></asp:Label>
            </td>
</tr>     
<tr id="rx1"  runat="server">
            <td>
                <asp:Label ID="Rgl" runat="server" Text="Rx Generic"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="rRgTxt" OnTextChanged="rRgTxt_TextChanged" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="mRgTxt" CssClass="TxtBox TxtBox1" OnTextChanged="mRgTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
<tr id="rx2"  runat="server">
            <td>
                <asp:Label ID="Rbfl" runat="server" Text="Rx Brand Formulary"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="rRbfTxt" OnTextChanged="rRbfTxt_TextChanged" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="mRbfTxt" CssClass="TxtBox TxtBox1" OnTextChanged="mRbfTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
<tr id="rx3" runat="server">
            <td>
                <asp:Label ID="Rbnfl" runat="server" Text="Rx Brand Non Formularly"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="rRbnfTxt" OnTextChanged="rRbnfTxt_TextChanged" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="mRbnfTxt" CssClass="TxtBox TxtBox1" OnTextChanged="mRbnfTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
<tr id="rx4"   runat="server">
            <td>
                <asp:Label ID="Rsl" runat="server" Text="Rx Speciality"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="rRsTxt" OnTextChanged="rRsTxt_TextChanged" CssClass="TxtBox TxtBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="mRsTxt" CssClass="TxtBox TxtBox1" OnTextChanged="mRsTxt_TextChanged" runat="server"></asp:TextBox>
            </td>
</tr>
                     
</table>
   

             </div>
          </div>  

        </div> <!--accordion-->
  </div><!-- container -->
 <script>
        $(document).ready(function () {



            $('body').on('keydown', 'input, select', function (e) {
                if (e.key === "Enter") {
                    var self = $(this), form = self.parents('form:eq(0)'), focusable, next;
                    focusable = form.find('input,select').filter(':visible:not([readonly])');
                    //:visible:not([readonly]):enabled
                    // focusable = form.find('input,a,select,button,textarea').filter(':visible');
                    next = focusable.eq(focusable.index(this) + 1);
                    if (next.length) {
                        next.focus();
                    } else {
                        form.submit();
                    }
                    return false;
                }
            });

            $('.accordion .panel h1').click(function () {
                $(this).next('.content').slideToggle();


            });

            var all = $('.accordion .panel .content')
            $('#ca').click(function () { all.slideUp(); });
            $('#ea').click(function () { all.slideDown(); });

            $(function () {


                $('#CalTxt').datepicker({
                    dateFormat: 'mm/dd/yy',
                    changeMonth: true,
                    changeYear: true,
                    minDate: new Date(2019, 1, 1),
                    onClose: function (date) {
                        $(this).focus();
                    }
                });

            });

            $('#tog').change(function () {
                var chk = $(this).prop('checked');
                // alert(chk);
                //logic to trigger asp.net checkbox1 as inthe toggle checkbox selection
                $('#CheckBox1').trigger('click');
                $("#CheckBox1").attr("checked", chk);

            });

            $('#togrx1').change(function () {
                var chk = $(this).prop('checked');
                //logic to trigger asp.net checkbox1 as inthe toggle checkbox selection
                $('#CheckBox3').trigger('click');
                $("#CheckBox3").attr("checked", chk);
            });




            // var datepicker = $.fn.datepicker.noConflict(); // return $.fn.datepicker to previously assigned value
            // $.fn.bootstrapDP = datepicker; 
            $("#HiTxt1").change(function () {
                $("#HiTxt2").val(100 - $("#HiTxt1").val());
                if ($("#HiTxt1").val() == 100) {

                    $("#GdcmT15").addClass("greycol");
                    $("#GdcmT15").attr("readonly", "readonly");
                    $("#GdcmT15").attr('tabindex', -1);
                    // $('a, input, select, button, textarea').attr('tabindex', 0);

                    $("#famdTxt2").addClass("greycol");
                    $("#famdTxt2").attr("readonly", "readonly");
                    $("#famdTxt2").attr('tabindex', -1);

                    $("#GdcmT27").addClass("greycol");
                    $("#sp8").css("background-color", "gainsboro");
                    $("#GdcmT27").attr("readonly", "readonly");
                    $("#GdcmT27").attr('tabindex', -1);


                    $("#GdcmT32").addClass("greycol");
                    $("#GdcmT32").attr("readonly", "readonly");
                    $("#GdcmT32").attr('tabindex', -1);

                    $("#famoopTxt2").addClass("greycol");
                    $("#famoopTxt2").attr("readonly", "readonly");
                    $("#famoopTxt2").attr('tabindex', -1);

                    //Copays
                    $("#T2IpTxt").addClass("greycol");
                    $("#T2IpTxt").attr("readonly", "readonly");
                    $("#T2IpTxt").attr('tabindex', -1);

                    $("#T2OpTxt").addClass("greycol");
                    $("#T2OpTxt").attr("readonly", "readonly");
                    $("#T2OpTxt").attr('tabindex', -1);

                    $("#T2ErTxt").addClass("greycol");
                    $("#T2ErTxt").attr("readonly", "readonly");
                    $("#T2ErTxt").attr('tabindex', -1);

                    $("#T2RadTxt").addClass("greycol");
                    $("#T2RadTxt").attr("readonly", "readonly");
                    $("#T2RadTxt").attr('tabindex', -1);

                    $("#T2UrTxt").addClass("greycol");
                    $("#T2UrTxt").attr("readonly", "readonly");
                    $("#T2UrTxt").attr('tabindex', -1);

                    $("#T2LpTxt").addClass("greycol");
                    $("#T2LpTxt").attr("readonly", "readonly");
                    $("#T2LpTxt").attr('tabindex', -1);

                    $("#T2PpTxt").addClass("greycol");
                    $("#T2PpTxt").attr("readonly", "readonly");
                    $("#T2PpTxt").attr('tabindex', -1);

                    $("#T2SpTxt").addClass("greycol");
                    $("#T2SpTxt").attr("readonly", "readonly");
                    $("#T2SpTxt").attr('tabindex', -1);

                    $("#T2PoTxt").addClass("greycol");
                    $("#T2PoTxt").attr("readonly", "readonly");
                    $("#T2PoTxt").attr('tabindex', -1);

                    $("#T2OTxt").addClass("greycol");
                    $("#T2OTxt").attr("readonly", "readonly");
                    $("#T2OTxt").attr('tabindex', -1);
                }
                else {
                    $("#GdcmT15").removeClass("greycol");
                    $("#GdcmT15").removeAttr("readonly");
                    $("#GdcmT15").attr('tabindex', 7);

                    $("#famdTxt2").removeClass("greycol");
                    $("#famdTxt2").removeAttr("readonly");
                    $("#famdTxt2").attr('tabindex', 8);

                    $("#GdcmT27").removeClass("greycol");
                    $("#sp8").css("background-color", "white");
                    $("#GdcmT27").removeAttr("readonly");
                    $("#GdcmT27").attr('tabindex', 9);

                    $("#GdcmT32").removeClass("greycol");
                    $("#GdcmT32").removeAttr("readonly");
                    $("#GdcmT32").attr('tabindex', 10);

                    $("#famoopTxt2").removeClass("greycol");
                    $("#famoopTxt2").removeAttr("readonly");
                    $("#famoopTxt2").attr('tabindex', 11);

                    //copays

                    $("#T2IpTxt").removeClass("greycol");
                    $("#T2IpTxt").removeAttr("readonly");
                    $("#T2IpTxt").attr('tabindex', 12);

                    $("#T2OpTxt").removeClass("greycol");
                    $("#T2OpTxt").removeAttr("readonly");
                    $("#T2OpTxt").attr('tabindex', 13);

                    $("#T2ErTxt").removeClass("greycol");
                    $("#T2ErTxt").removeAttr("readonly");
                    $("#T2ErTxt").attr('tabindex', 14);

                    $("#T2UrTxt").removeClass("greycol");
                    $("#T2UrTxt").removeAttr("readonly");
                    $("#T2UrTxt").attr('tabindex', 15);

                    $("#T2RadTxt").removeClass("greycol");
                    $("#T2RadTxt").removeAttr("readonly");
                    $("#T2RadTxt").attr('tabindex', 16);

                    $("#T2LpTxt").removeClass("greycol");
                    $("#T2LpTxt").removeAttr("readonly");
                    $("#T2LpTxt").attr('tabindex', 17);

                    $("#T2PpTxt").removeClass("greycol");
                    $("#T2PpTxt").removeAttr("readonly");
                    $("#T2PpTxt").attr('tabindex', 18);

                    $("#T2SpTxt").removeClass("greycol");
                    $("#T2SpTxt").removeAttr("readonly");
                    $("#T2SpTxt").attr('tabindex', 19);

                    $("#T2PoTxt").removeClass("greycol");
                    $("#T2PoTxt").removeAttr("readonly");
                    $("#T2PoTxt").attr('tabindex', 20);

                    $("#T2OTxt").removeClass("greycol");
                    $("#T2OTxt").removeAttr("readonly");
                    $("#T2OTxt").attr('tabindex', 21);
                }
            });
            $("#HiTxt1").keyup(function () {
                $("#HiTxt2").val(100 - $("#HiTxt1").val());

                if ($("#HiTxt1").val() == 100) {
                    $("#GdcmT15").addClass("greycol");
                    $("#GdcmT15").attr("readonly", "readonly");

                    $("#famdTxt2").addClass("greycol");
                    $("#famdTxt2").attr("readonly", "readonly");

                    $("#GdcmT27").addClass("greycol");
                    $("#sp8").css("background-color", "gainsboro");
                    $("#GdcmT27").attr("readonly", "readonly");


                    $("#GdcmT32").addClass("greycol");
                    $("#GdcmT32").attr("readonly", "readonly");

                    $("#famoopTxt2").addClass("greycol");
                    $("#famoopTxt2").attr("readonly", "readonly");

                    //Copays
                    $("#T2IpTxt").addClass("greycol");
                    $("#T2IpTxt").attr("readonly", "readonly");

                    $("#T2OpTxt").addClass("greycol");
                    $("#T2OpTxt").attr("readonly", "readonly");

                    $("#T2ErTxt").addClass("greycol");
                    $("#T2ErTxt").attr("readonly", "readonly");

                    $("#T2RadTxt").addClass("greycol");
                    $("#T2RadTxt").attr("readonly", "readonly");

                    $("#T2UrTxt").addClass("greycol");
                    $("#T2UrTxt").attr("readonly", "readonly");

                    $("#T2LpTxt").addClass("greycol");
                    $("#T2LpTxt").attr("readonly", "readonly");

                    $("#T2PpTxt").addClass("greycol");
                    $("#T2PpTxt").attr("readonly", "readonly");

                    $("#T2SpTxt").addClass("greycol");
                    $("#T2SpTxt").attr("readonly", "readonly");

                    $("#T2PoTxt").addClass("greycol");
                    $("#T2PoTxt").attr("readonly", "readonly");

                    $("#T2OTxt").addClass("greycol");
                    $("#T2OTxt").attr("readonly", "readonly");
                }
                else {
                    $("#GdcmT15").removeClass("greycol");
                    $("#GdcmT15").removeAttr("readonly");

                    $("#famdTxt2").removeClass("greycol");
                    $("#famdTxt2").removeAttr("readonly");

                    $("#GdcmT27").removeClass("greycol");
                    $("#sp8").css("background-color", "white");
                    $("#GdcmT27").removeAttr("readonly");

                    $("#GdcmT32").removeClass("greycol");
                    $("#GdcmT32").removeAttr("readonly");

                    $("#famoopTxt2").removeClass("greycol");
                    $("#famoopTxt2").removeAttr("readonly");

                    //copays

                    $("#T2IpTxt").removeClass("greycol");
                    $("#T2IpTxt").removeAttr("readonly");

                    $("#T2OpTxt").removeClass("greycol");
                    $("#T2OpTxt").removeAttr("readonly");

                    $("#T2ErTxt").removeClass("greycol");
                    $("#T2ErTxt").removeAttr("readonly");

                    $("#T2UrTxt").removeClass("greycol");
                    $("#T2UrTxt").removeAttr("readonly");

                    $("#T2RadTxt").removeClass("greycol");
                    $("#T2RadTxt").removeAttr("readonly");

                    $("#T2LpTxt").removeClass("greycol");
                    $("#T2LpTxt").removeAttr("readonly");

                    $("#T2PpTxt").removeClass("greycol");
                    $("#T2PpTxt").removeAttr("readonly");

                    $("#T2SpTxt").removeClass("greycol");
                    $("#T2SpTxt").removeAttr("readonly");

                    $("#T2PoTxt").removeClass("greycol");
                    $("#T2PoTxt").removeAttr("readonly");

                    $("#T2OTxt").removeClass("greycol");
                    $("#T2OTxt").removeAttr("readonly");
                }
            });
            $("#zip2Txt").change(function () {
                if ($("#zip2Txt").val() != "")
                    $("#zip3Txt").removeProp("readonly");
            });
            $("#provNetT1").change(function () {
                $("#provNetTxt1").val($("#provNetT1").val());
            });

            $("#provNetT2").change(function () {
                $("#provNetTxt2").val($("#provNetT2").val());
            });

        });
        function ToggleAccordionPane(paneno) {

            $find('MyAccordion_AccordionExtender')._changeSelectedIndex(-1);
            if ($find('MyAccordion_AccordionExtender').get_Pane(paneno).content.style.display == "block") {
                $find('MyAccordion_AccordionExtender').get_Pane(paneno).content.style.display = "none";
                $find('MyAccordion_AccordionExtender')._changeSelectedIndex(paneno);
            }
            else {
                $find('MyAccordion_AccordionExtender').get_Pane(paneno).content.style.display = "block";
            }

            return false;
        }


    </script>
 <style type="text/css">


  .accordion .panel
{
    border:none;
    margin:auto;
}

.accordion .panel h1
{
    padding:0.2em;
    font-size: 1.0em;
    font-weight: bold;
    background-color: #5078B3;
    font-family: Arial, Sans-Serif;
    color:white;
    cursor: pointer;
}
.accordion .panel h1:hover{
     background-color:#002760;
    }

.accordion .panel .content
{
    padding: 0.5em;
}

.container{
            width:70%;
            float:left;
 }
            body
            {
               
            }

    .Planbtn {
    border: 1px solid  #5078B3;
    border-radius: 5px;
    color:  #5078B3;
    background-color: white;
    font-weight: bold;
    font-size: medium;
    padding: 0px 10px 0px 0px;
    background-repeat: no-repeat;
    width:100%;
    text-align:center;
}
             .colBtn{
    border: 1px solid   #5078B3;
    border-radius: 5px;
    color: white;
    background-color:#5078B3;
    font-weight: bold;
    font-size: medium;
    padding: 0px 10px 0px 0px;
    background-repeat: no-repeat;
    width:100%;
    text-align:center;
}
        .colBtn1{
    border: 1px solid   #5078B3;
    border-radius: 5px;
    color: #5078B3;
    background-color:White;
    font-weight: bold;
    font-size:small;
    padding: 0px 10px 0px 0px;
    background-repeat: no-repeat;
    width:20%;
    text-align:center;
    
}
            .greycol{
                 background-color:gainsboro;
                 border:0.5px solid black;
                }
            
            .greycol1{
                background-color:blue;
            }
           .pers{
           font-size:smaller;
           text-align:left;
           color:black;
           border:solid;
           border-left-style: hidden;
           border-width:1px;
           display:inline-block;
           Height:18px;
           background-color:white;
           vertical-align:middle;
          
        }
           .pers1{
           font-size:smaller;
           text-align:left;
           color:black;
           border:solid;
           border-left-style: hidden;
           border-width:1px;
           display:inline-block;
           Height:18px;
           background-color:gainsboro;
           vertical-align:middle;
          
        }
           
            /* Accordion */
          
            .AccordionHeader
            {
                border: 1px solid #2F4F4F;
                color: white;
                background-color: #2E4d7B;
                font-family: Arial, Sans-Serif;
                font-size: 12px;
                font-weight: bold;
                padding: 5px;
                margin-top: 5px;
                cursor: pointer;
                
            }
 
            #master_content .AccordionHeader a
            {
                color: #FFFFFF;
                background: none;
                text-decoration: none;
            }
 
           #master_content .AccordionHeader a:hover
           {
                    background: none;
                    text-decoration: underline;
           }
 
            .AccordionHeaderSelected
            {
                border: 1px solid #2F4F4F;
                color: white;
                background-color: #5078B3;
                font-family: Arial, Sans-Serif;
                font-size: 12px;
                font-weight: bold;
                padding: 5px;
                margin-top: 5px;
                cursor: pointer;
            }
   
        
 
 a {
color:#000;
}
.container{
            width:700px;
 }
.glyphicon { 
margin-right:10px; 
}

.DeTbx1{
            width: 80px;
            height: 20px;
       }
 td{
   padding-left:5px;
   padding-top:10px;
}
/* TxtBox style*/
.caret{
    height:8px;
    width:10px;
}
.indTxtClass{
            Height:18px;
            width:450px;
            border-color:lightgrey;
            border:1px solid;
            background-color:gainsboro;
}
  .TxtBox1{
            Height:18px;
            Width:58px;
            text-align:right;
        }
 .TxtBox11{
            Height:18px;
            Width:45px;
            text-align:right;
            border:solid;
            border-right-style: hidden;
            vertical-align:middle;
            border-width:1px;
        }

 /*iOS Style- Rounded for the toggle button*/
 div.bootstrap-switch-container {
    height: 25px;
}
.bootstrap-switch .bootstrap-switch-handle-on, .bootstrap-switch .bootstrap-switch-handle-off, .bootstrap-switch .bootstrap-switch-label  {
    padding: 3px 12px;
}
div.bootstrap-switch {
    margin-top: -4px;
}

        .toggle.ios, .toggle-on.ios, .toggle-off.ios {
            border-radius: 20rem;
        }

        .toggle.ios .toggle-handle {
                border-radius: 20rem;
        }
        
         .invis{
             display:none;
        }
          .rex{
             display:none;
        }
          .visi{
              display:block;
          }

           /*Code for calendar custom color*/
        .ui-datepicker td span, .ui-datepicker td a {
            color: greenyellow; /* Numbers color */
            fill: teal;
        }

        .ui-datepicker td {
            background: #54bdbf; /* Numbers background */
        }

        .ui-datepicker-calendar .ui-state-hover {
            color: Teal; /* Numbers color on hover */
        }

        .ui-datepicker-calendar .ui-state-active {
            color: darkblue; /* Selected date color */
        }

        .ui-datepicker select.ui-datepicker-month,
        .ui-datepicker select.ui-datepicker-year {
            color: teal !important;
        }

        .ui-datepicker .switch {
  display: table-cell;
}
</style>
   
 
</asp:Content>
