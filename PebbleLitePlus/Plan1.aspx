<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" ClientIDMode="Static" CodeBehind="Plan1.aspx.cs" Inherits="PebbleLitePlus.Plan2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
      
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
   <!-- for mulit selection boxes -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
   

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
   <link  rel="stylesheet" type="text/css" runat="server" media="all" href="LitePlusStyleSheet1.css" />
 
   <!-- for editable select
    <script src="//code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="//rawgithub.com/indrimuska/jquery-editable-select/master/dist/jquery-editable-select.min.js"></script>-->
    <br />
    <br />
    

   <!-- we dont need these buttons <input type="button" class="colBtn1"  value="Collapse All" id="ca"/>
    <input type="button" class="colBtn1" value="Expand All" id="ea"/>-->
         <table id="p1table1"style="table-layout:fixed;width:100%" >
             <tr>
                 <td style="width:60%"> 
<!-- stepper --> 
                     <asp:Panel ID="stepPanel" runat="server">
                         <asp:Button ID="step1" CssClass="col-4" runat="server" Text="Step1 Basic Information" OnClick="step1_Click" />
                         <asp:Button ID="step2" CssClass="col-4" runat="server" Text="Step2 Provider Network & Utilization" OnClick="step2_Click" />
                         <asp:Button ID="step3" CssClass="col-4" runat="server" Text="Step3 Plan Design(Medical & RX)" OnClick="step3_Click" />
                        
                        <!-- <asp:LinkButton ID="LinkButton1" CssClass="btn btn btn-default btn-arrow-left" runat="server">Step1</asp:LinkButton>-->   </asp:Panel>
                        
                 </td>
                 <td style="width:40%"></td>
             </tr>
             <tr>
                 <td style="width:60%">

        <asp:Panel ID="p1_Panel" runat="server">
            <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
            <asp:View ID="View1"  runat="server">
                 <div class="accordion" >    
        <div class="panel">
           <h1>Basic Group Information</h1>
             <div class="content">
                 <table class="inner" style="text-align:right;padding-right:5px;" >
                  <tr>
                    <td><asp:Label ID="SessL" runat="server" Text="Session Descriptor:"></asp:Label>
                    </td>
                    <td style="text-align:left;padding-left:5px;">
                        <asp:TextBox ID="SessTxt" CssClass="freeTxt" OnTextChanged="SessTxt_TextChanged" runat="server"></asp:TextBox>
                    </td>
                      <td><asp:Label ID="ScenL" runat="server" Text="Scenario Name:"></asp:Label></td>
                      <td style="text-align:left;padding-left:10px;"><asp:TextBox ID="ScenTxt" CssClass="freeTxt" OnTextChanged="ScenTxt_TextChanged" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td>
                           <asp:Label ID="CalL" runat="server" Text="Plan Effective Date:"></asp:Label>
                      </td>
                      <td style="text-align:left;padding-left:10px;">
                          <asp:TextBox ID="CalTxt" 
                              OnTextChanged="CalTxt_TextChanged" AutoPostBack="true" CssClass="DeTbx1"  ClientIDMode="Static" runat="server"></asp:TextBox><span><i runat="server" class="fa fa-calendar form-control-feedback calspan"></i></span>
                          <!--<span class="glyphicon glyphicon-calendar"></span>-->
                      </td>
                      <td></td>
                      <td></td>
                  </tr>
                  <tr>
                      <td>
                    <asp:Label ID="EmpL" runat="server" Text="Enrolled Employees:"></asp:Label>
                      </td>
                      <td style="text-align:left;padding-left:10px;">
                          <asp:TextBox ID="EmpTxt" OnTextChanged="EmpTxt_TextChanged" CssClass="TxtBox1" runat="server" ToolTip="100"></asp:TextBox>
                      </td>

                      <td> <asp:Label ID="TotmemL" runat="server" Text="Total Members:"></asp:Label></td>
                      <td style="text-align:left;padding-left:10px;"><asp:TextBox ID="TotmemTxt" OnTextChanged="TotmemTxt_TextChanged" CssClass="TxtBox1" runat="server" ToolTip="229"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="CoveL" runat="server" Text="Single Coverage Percentage:"></asp:Label>
                      </td>
                      <td style="text-align:left;padding-left:10px;">
                          <asp:TextBox ID="singCovTxt"  OnTextChanged="singCovTxt_TextChanged" CssClass="TxtBox11" runat="server" ToolTip="40%"></asp:TextBox><span id="sp1" runat="server" class="pers">%</span>
                      </td>
                      <td ></td>
                      <td></td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="NetTL" runat="server" Text="Network Tiers in Plan:"></asp:Label>
                      </td>
                   <!-- multiselectable buttons-->
                    <td style="text-align:left;padding-left:10px;">
                         <div class="btn-group" role="group" >
  <input type="checkbox" class="btn-check" checked id="btncheck1"  onchange="btngRroup()"  autocomplete="off">
  <label class="btn btn-outline-primary multiSel" for="btncheck1">1-IN Op1</label>

  <input type="checkbox" class="btn-check" id="btncheck2"  onchange="btngRroup()"autocomplete="off">
  <label class="btn btn-outline-primary multiSel" for="btncheck2">2-IN Op2</label>

  <input type="checkbox" class="btn-check" checked id="btncheck3" onchange="btngRroup()" autocomplete="off">
  <label class="btn btn-outline-primary multiSel" for="btncheck3">3-ON</label>
</div>
                    </td>
                      <td >
                          <asp:Label ID="Label1" runat="server" Text="Enrollment Tiers:"></asp:Label>
                      </td>
                           <!-- mutually exclusive group buttons -->        
                      <td style="text-align:left;padding-left:10px;">
                         <div class="btn-group" role="group" >
  <input type="radio" class="btn-check"  name="tiers" id="btncheck11" value="1" autocomplete="off">
  <label class="btn btn-outline-primary multiSel" for="btncheck11">1</label>

  <input type="radio" class="btn-check" id="btncheck12"  name="tiers" value="2" autocomplete="off">
  <label class="btn btn-outline-primary multiSel" for="btncheck12">2</label>

  <input type="radio" class="btn-check"   id="btncheck13" name="tiers" value="3" autocomplete="off">
  <label class="btn btn-outline-primary multiSel" for="btncheck13">3</label>

  <input type="radio" class="btn-check" checked  id="btncheck14" name="tiers" value="4" autocomplete="off">
  <label class="btn btn-outline-primary multiSel" for="btncheck14">4</label>

  <input type="radio" class="btn-check"   id="btncheck15" name="tiers" value="5" autocomplete="off">
  <label class="btn btn-outline-primary multiSel" for="btncheck15">5</label>
</div>
                      </td>
                  </tr>
                 <tr> 
                     <td>
                         <asp:Label ID="TierRatL" runat="server" Text="Tier Ratio:"></asp:Label>
                     </td>

                     <td colspan="2" style="text-align:left;padding-left:10px;">
                        <table id="enTiertab">
                            <tr> 
                                <td><asp:Label ID="eeL" runat="server" Text="EE"></asp:Label></td>
                                <td><asp:Label ID="eespL" runat="server" Text="EE+SP"></asp:Label></td>
                                <td><asp:Label ID="eechL" runat="server" Text="EE+1CH"></asp:Label></td>
                                <td><asp:Label ID="eechsL" runat="server" Text="EE+CH(S)"></asp:Label></td>
                                <td><asp:Label ID="eefamL" runat="server" Text="EE+Family"></asp:Label></td>

                            </tr>
                            <tr>
                                <td><asp:TextBox ID="eeTxt1" CssClass="TxtBox2" style="background-color:gainsboro" Text="1.00" runat="server"></asp:TextBox></td>
                                <td><asp:TextBox ID="eespTxt1" CssClass="TxtBox2" Text="" runat="server" ToolTip="2.20"></asp:TextBox></td>
                                <td><asp:TextBox ID="eechTxt1" CssClass="TxtBox2" Text="" runat="server" ToolTip="1.80"></asp:TextBox></td>
                                <td><asp:TextBox ID="eechsTxt1" CssClass="TxtBox2" Text="" runat="server" ToolTip="3.00"></asp:TextBox></td>
                                <td><asp:TextBox ID="eefamTxt1"  CssClass="TxtBox2" Text="" runat="server"></asp:TextBox></td>
                            </tr>
                        </table>
                        
                     </td>
                 </tr>
          
   
     
               
                  <tr>
                      <td>
                          <asp:Label ID="sicL" runat="server" Text="SIC Code:"></asp:Label>
                      </td>
                      <td style="text-align:left;padding-left:10px;">
                          <asp:DropDownList ID="Sicddl1" AppendDataBoundItems="true" runat="server" DataSourceID="SqlDataSource1" DataTextField="siccode-desc" DataValueField="siccode-desc" AutoPostBack="True">
                             <Items>
       <asp:ListItem Text="000-National Average" Value="" />
   </Items>
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClarosAdvisorConnectionString %>" SelectCommand="SELECT (CAST(SIC_Code AS nvarchar(50)) + '-' + Industry_Description) AS 'siccode-desc' FROM [ClarosAdvisor].[STA].[MEM_Industries]"></asp:SqlDataSource>
                      </td>

                      <td ><asp:Label ID="Rxcov" runat="server" Text="Rx Covered:"></asp:Label> </td>
                  
                      <td style="text-align:left;padding-left:10px;">
                         
                      <asp:CheckBox ID="CheckBox1" Checked="true" runat="server"  CssClass="chkBoxcls"/></td>
                      
                  </tr>
                     <tr>
                         <td> <div>
      <div class="ui-widget">
        <select id="combobox" runat="server" class="form-control">
          <option value="">Select your option</option>
          <option value="Apple">Apple</option>
          <option value="Banana">Banana</option>
          <option value="Cherry">Cherry</option>
          <option value="Date">Date</option>
          <option value="Fig">Fig</option>
          <option value="Grape">Grape</option>
          <option value="Kiwi">Kiwi</option>
          <option value="Mango">Mango</option>
          <option value="Orange">Orange</option>
          <option value="Pumpkin">Pumpkin</option>
          <option value="Strawberry">Strawberry</option>
          <option value="Tomato">Tomato</option>
          <option value="Watermelon">Watermelon</option>
        </select>
      </div>

    </div></td>
                     </tr>
                                  
                 </table> <!-- accordion table-->
             </div> <!--content -->
       </div> 
        <div class="panel">
            <h1><span class="glyphicon glyphicon-tags"  runat="server" ></span>Age Gender<span class="caret"></span></h1>
             <div class="content">
               <table>
                   <tr>
                       <td>
                           <asp:Label ID="ageL" runat="server" Text="Average EE Age:"></asp:Label></td>
                       <td>
                           <asp:TextBox ID="ageTxt" CssClass="TxtBox11" runat="server" ToolTip="41"></asp:TextBox></td>
                       <td>
                           <asp:Label ID="persMaleL" runat="server" Text="Percent Male"></asp:Label></td>
                       <td>
                           <asp:TextBox ID="persMaleTxt" CssClass="TxtBox11" runat="server" ToolTip="50"></asp:TextBox><span id="sp2" runat="server" class="pers">%</span></td>
                       <!-- mutually exclusive group buttons -->        
                      <td style="text-align:left;padding-left:10px;">
                      <div class="btn-group" role="group" >
  <input type="radio" class="btn-check"  name="Agenchk" id="Eechk" value="1" autocomplete="off">
  <label class="btn btn-outline-primary multiSel" for="Eechk">EE</label>

  <input type="radio" class="btn-check" id="Cov_Tierchk"  name="Agenchk" value="2" autocomplete="off">
  <label class="btn btn-outline-primary multiSel" for="Cov_Tierchk">Coverage Tiers</label>
 
</div>
                      </td>
                   </tr>
               </table>
                  

    <asp:Panel ID="AgePanel2"  runat="server">

        <table  id="AgeGen2" style="border:solid 1px black" runat="server">
           <!-- <tr>
                <th>Employee </th>
                <th></th>
                <th></th>

            </tr>-->
            <tr>

                <td>Age Band</td>
                <td class="ee">Male</td>
                <td class="ee">Female</td>

            </tr>
            <tr>
                <td><20</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox1" CssClass="AGtxtB" OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox2" CssClass="AGtxtB" OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>


            </tr>
            <tr>
                <td>20-24</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox11" CssClass="AGtxtB" OnKeyPress="return isNumberKey2(this, event);" runat="server" OnChange="TbTrigger(this);" OnTextChanged="TextBox11_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox12" CssClass="AGtxtB" OnKeyPress="return isNumberKey2(this, event);" runat="server" OnChange="TbTrigger(this);" OnTextChanged="TextBox12_TextChanged"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td>25-29</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox21" CssClass="AGtxtB" OnKeyPress="return isNumberKey2(this, event);" runat="server" OnChange="TbTrigger(this);" OnTextChanged="TextBox21_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox22" CssClass="AGtxtB" OnKeyPress="return isNumberKey2(this, event);" runat="server" OnChange="TbTrigger(this);" OnTextChanged="TextBox22_TextChanged"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>30-34</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox31" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox31_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox32" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox32_TextChanged"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>35-39</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox41" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox41_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox42" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox42_TextChanged"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>40-44</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox51" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox51_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox52" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox52_TextChanged"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>45-49</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox51a" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox51a_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox52a" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox52a_TextChanged"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>50-54</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox61" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox61_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox62" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox62_TextChanged"></asp:TextBox>
                </td>

            </tr>

            <tr>
                <td>55-59</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox71" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox71_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox72" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox72_TextChanged"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>60-64</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox81" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox81_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox82" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox82_TextChanged"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>65-69</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox91" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox91_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox92" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox92_TextChanged"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>70-74</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox101" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox101_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox102" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox102_TextChanged"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>75-79</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox111" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox111_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox112" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox112_TextChanged"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>80+</td>
                <td class="ee">
                    <asp:TextBox ID="TextBox121" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox121_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="TextBox122" CssClass="AGtxtB" runat="server" OnChange="TbTrigger(this);" OnKeyPress="return isNumberKey2(this, event);" OnTextChanged="TextBox122_TextChanged"></asp:TextBox>
                </td>

            </tr>

        </table>
    </asp:Panel>

    <asp:Panel ID="AgePanel3"  runat="server">
        <table  onkeydown="javascript:if(window.event.keyCode == 13) window.event.keyCode = 9;" style="border:1px solid black" id="ageGen" runat="server">
            <tr>
                <th></th>
                <th colspan="2" class="ee">EE</th>
                <th colspan="2" class="sp">EE+Spouse</th>
                <th colspan="2" class="ch">EE+Child</th>
                <th colspan="2" class="chs">EE+Children</th>
                <th colspan="2" class="fam">EE+Family</th>
            </tr>
            <tr>

                <td>Age Band</td>
                <td class="ee">Male</td>
                <td class="ee">Female</td>
                <td class="sp">Male</td>
                <td class="sp">Female</td>
                <td class="ch">Male</td>
                <td class="ch">Female</td>
                <td class="chs">Male</td>
                <td class="chs">Female</td>
                <td class="fam">Male</td>
                <td class="fam">Female</td>

            </tr>
            <tr>
                <td><20</td>
                <td class="ee">
                    <asp:TextBox ID="eem1Txt" TabIndex="31"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);"  CssClass="ET AGtxtB" runat="server" OnTextChanged="Eem1Txt_TextChanged"></asp:TextBox>

                </td>
                <td class="ee">
                    <asp:TextBox ID="eef1Txt" TabIndex="32"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);"  CssClass="ET AGtxtB" runat="server" OnTextChanged="Eef1Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm1Txt" TabIndex="33"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);"  CssClass="ET AGtxtB" runat="server" OnTextChanged="Spm1Txt_TextChanged"></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf1Txt" TabIndex="34"   OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" CssClass="ET AGtxtB" runat="server" OnTextChanged="Spf1Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm1Txt" TabIndex="35"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);"  CssClass="ET AGtxtB" runat="server" OnTextChanged="Chm1Txt_TextChanged"></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf1Txt" TabIndex="36"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" CssClass="ET AGtxtB" runat="server" OnTextChanged="Chf1Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm1Txt" TabIndex="37" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsm1Txt_TextChanged"></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf1Txt" TabIndex="38" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsf1Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm1Txt" TabIndex="39" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famm1Txt_TextChanged"></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf1Txt" TabIndex="40" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famf1Txt_TextChanged"></asp:TextBox>
                </td>

            </tr>
            <tr>

                <td>20-24</td>
                <td class="ee">
                    <asp:TextBox ID="eem2Txt" TabIndex="41" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Eem2Txt_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef2Txt" TabIndex="42" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Eef2Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm2Txt" TabIndex="43" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Spm2Txt_TextChanged"></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf2Txt" TabIndex="44" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Spf2Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm2Txt" TabIndex="45" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chm2Txt_TextChanged"></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf2Txt" TabIndex="46" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chf2Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm2Txt" TabIndex="47" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsm2Txt_TextChanged"></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf2Txt" TabIndex="48" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsf2Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm2Txt" TabIndex="49" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famm2Txt_TextChanged"></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf2Txt" TabIndex="50" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famf2Txt_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>25-29</td>
                <td class="ee">
                    <asp:TextBox ID="eem3Txt" TabIndex="51" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Eem3Txt_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef3Txt" TabIndex="52" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Eef3Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm3Txt" TabIndex="53" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Spm3Txt_TextChanged"></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf3Txt" TabIndex="54" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Spf3Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm3Txt" TabIndex="55" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chm3Txt_TextChanged"></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf3Txt" TabIndex="56" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chf3Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm3Txt" TabIndex="57" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsm3Txt_TextChanged"></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf3Txt" TabIndex="58" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsf3Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm3Txt" TabIndex="59" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famm3Txt_TextChanged"></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf3Txt" TabIndex="60" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famf3Txt_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>

                <td>30-34</td>
                <td class="ee">
                    <asp:TextBox ID="eem4Txt" TabIndex="61" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Eem4Txt_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef4Txt" TabIndex="62" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Eef4Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm4Txt" TabIndex="63" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Spm4Txt_TextChanged"></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf4Txt" TabIndex="64" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Spf4Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm4Txt" TabIndex="65" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chm4Txt_TextChanged"></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf4Txt" TabIndex="66" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chf4Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm4Txt" TabIndex="67" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsm4Txt_TextChanged"></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf4Txt" TabIndex="68" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsf4Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm4Txt" TabIndex="69" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famm4Txt_TextChanged"></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf4Txt" TabIndex="70" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famf4Txt_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>35-39</td>
                <td class="ee">
                    <asp:TextBox ID="eem5Txt" TabIndex="71" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Eem5Txt_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef5Txt" TabIndex="72" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Eef5Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm5Txt" TabIndex="73" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Spm5Txt_TextChanged"></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf5Txt" TabIndex="74" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Spf5Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm5Txt" TabIndex="75" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chm5Txt_TextChanged"></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf5Txt" TabIndex="76" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chf5Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm5Txt" TabIndex="77" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsm5Txt_TextChanged"></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf5Txt" TabIndex="78" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsf5Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm5Txt" TabIndex="79" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famm5Txt_TextChanged"></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf5Txt" TabIndex="80" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famf5Txt_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>40-44</td>
                <td class="ee">
                    <asp:TextBox ID="eem6Txt" TabIndex="81" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Eem6Txt_TextChanged"></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef6Txt" TabIndex="82" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Eef6Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm6Txt" TabIndex="83" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Spm6Txt_TextChanged"></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf6Txt" TabIndex="84" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Spf6Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm6Txt" TabIndex="85" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chm6Txt_TextChanged"></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf6Txt" TabIndex="86" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chf6Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm6Txt" TabIndex="87" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsm6Txt_TextChanged"></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf6Txt" TabIndex="88" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Chsf6Txt_TextChanged"></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm6Txt" TabIndex="89" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famm6Txt_TextChanged"></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf6Txt" TabIndex="90" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" OnTextChanged="Famf6Txt_TextChanged" style="height: 19px"></asp:TextBox>
                </td>
            </tr>
            <tr>

                <td>45-49</td>
                <td class="ee">
                    <asp:TextBox ID="eem7Txt" TabIndex="91" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef7Txt" TabIndex="92" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm7Txt" TabIndex="93" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf7Txt" TabIndex="94" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm7Txt" TabIndex="95" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf7Txt" TabIndex="96" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm7Txt" TabIndex="97" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf7Txt" TabIndex="98" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm7Txt" TabIndex="99" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf7Txt" TabIndex="100" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>50-54</td>
                <td class="ee">
                    <asp:TextBox ID="eem8Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef8Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm8Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf8Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm8Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf8Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm8Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf8Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm8Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf8Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>55-59</td>
                <td class="ee">
                    <asp:TextBox ID="eem9Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef9Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm9Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf9Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm9Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf9Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm9Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf9Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm9Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf9Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>60-64</td>
                <td class="ee">
                    <asp:TextBox ID="eem10Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef10Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm10Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf10Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm10Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf10Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm10Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf10Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm10Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf10Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>65-69</td>
                <td class="ee">
                    <asp:TextBox ID="eem11Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef11Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm11Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf11Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm11Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf11Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm11Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf11Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm11Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf11Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>70-74</td>
                <td class="ee">
                    <asp:TextBox ID="eem12Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef12Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm12Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf12Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm12Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf12Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm12Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf12Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm12Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf12Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>75-79</td>
                <td class="ee">
                    <asp:TextBox ID="eem13Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef13Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm13Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf13Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm13Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf13Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm13Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf13Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm13Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf13Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>80+</td>
                <td class="ee">
                    <asp:TextBox ID="eem14Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ee">
                    <asp:TextBox ID="eef14Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="sp">
                    <asp:TextBox ID="spm14Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="sp">
                    <asp:TextBox ID="spf14Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="ch">
                    <asp:TextBox ID="chm14Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="ch">
                    <asp:TextBox ID="chf14Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="chs">
                    <asp:TextBox ID="chsm14Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="chs">
                    <asp:TextBox ID="chsf14Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
                <td class="fam">
                    <asp:TextBox ID="famm14Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox></td>
                <td class="fam">
                    <asp:TextBox ID="famf14Txt" CssClass="ET  AGtxtB"  OnKeyPress="return isNumberKey2(this, event);" OnChange="TbTrigger(this);" runat="server" ></asp:TextBox>
                </td>
            </tr>


        </table>
    </asp:Panel>

                 
             </div>
         </div>
        <div class="panel">
            <h1> <span class="glyphicon glyphicon-road"   runat="server" ></span>Geographic Area<span class="caret"></span></h1>
             <div class="content">
             </div>
          </div>  

        </div> <!--accordion-->
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div class="accordion" >    
        <div class="panel">
           <h1>Basic Group Information</h1>
             <div class="content">
                 
             </div> <!--content -->
       </div> 
        <div class="panel">
            <h1><span class="glyphicon glyphicon-tags"  runat="server" ></span>Age Gender<span class="caret"></span></h1>
             <div class="content">
               
             </div>
         </div>
        <div class="panel">
            <h1> <span class="glyphicon glyphicon-road"   runat="server" ></span>Geographic Area<span class="caret"></span></h1>
             <div class="content">
                
   

             </div>
          </div>  

        </div> <!--accordion-->
            </asp:View>
            <asp:View ID="View3" runat="server">
                 <div class="accordion" >    
        <div class="panel">
           <h1>Basic Group Information</h1>
             <div class="content">
                 
             </div> <!--content -->
       </div> 
        <div class="panel">
            <h1><span class="glyphicon glyphicon-tags"  runat="server" ></span>Age Gender<span class="caret"></span></h1>
             <div class="content">
               
             </div>
         </div>
        <div class="panel">
            <h1> <span class="glyphicon glyphicon-road"   runat="server" ></span>Geographic Area<span class="caret"></span></h1>
             <div class="content">
                
   

             </div>
          </div>  

        </div> <!--accordion-->
            </asp:View>
            </asp:MultiView>
        </asp:Panel>
        </td>
                 <td style="width:40%"></td>
             </tr>
         </table>
    
    
    
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
                    minDate: new Date(2015, 1, 1),
                    maxDate: new Date(2029, 12, 31),
                  
                    onClose: function (date) {
                        $(this).focus();
                    }
                });

            });

           $('.fa-calendar').click(function () {
                $('#CalTxt').focus();
            });

            
           
            $('.TxtBox1').on('change', function () {
                var txtBox = $(this);

                var txt = txtBox.val();

                if (((parseInt(txt)) > 0 && (parseInt(txt)) <= 1000000000) || (txt == "")) {
                    /* if (!isNaN(txt) && isFinite(txt) && txt.length != 0) {
                         var rounded = Math.round(txt * 100) / 100;
                         txtBox.value = rounded.toFixed(2);
                     }*/
                   
                    txtBox.css('color', 'black');
                    if (txt != "")
                        $(this).val(parseInt(txt).toLocaleString());
                    else
                        $(this).val('');

                }
                else {
                    // alert('Invalid Input, Value must be 0 to 100');
                    txtBox.prop('value', '*');
                    txtBox.css('color', '#FF0000');
                    txtBox.focus();
                    //The following two statements can be used instead the 3rd statement
                    // var mt = document.getElementById('errMessL');
                    // mt.innerText = "Invalid Input, Value must be 0 to 10";
                    alert('Invalid Input, Value must be 0 to 1,000,000,000')
                    }
            });

            $('.TxtBox1').keypress(function (evt) {
                var txtBox = $(this);
                var txt = txtBox.val();

                var dotcontainer = txtBox.val().split('.');

                var charCode = (evt.which) ? evt.which : evt.keyCode;

                if (!(dotcontainer.length == 1 && charCode == 46) && (charCode > 31) && (charCode < 48 || charCode > 57))
                    return false; return true;

            });

            $('.TxtBox11').on('change', function () {
                var txtBox = $(this);

                var txt = txtBox.val();

                if (((parseInt(txt)) >= 22 && (parseInt(txt)) <= 60) || (txt == "")) {
                    /* if (!isNaN(txt) && isFinite(txt) && txt.length != 0) {
                         var rounded = Math.round(txt * 100) / 100;
                         txtBox.value = rounded.toFixed(2);
                     }*/
                   
                    txtBox.css('color', 'black');
                 }
                else {
                    // alert('Invalid Input, Value must be 0 to 100');
                    txtBox.prop('value', '*');
                    txtBox.css('color', '#FF0000');
                    txtBox.css('border-color', 'black');
                    txtBox.focus();
                    //The following two statements can be used instead the 3rd statement
                    // var mt = document.getElementById('errMessL');
                    // mt.innerText = "Invalid Input, Value must be 0 to 10";
                    alert('Invalid Input, Value must be 22 to 60')


                }
            });
            $('.TxtBox11').keypress(function (evt) {
                var txtBox = $(this);
                var txt = txtBox.val();

                var dotcontainer = txtBox.val().split('.');

                var charCode = (evt.which) ? evt.which : evt.keyCode;

                if (!(dotcontainer.length == 1 && charCode == 46) && (charCode > 31) && (charCode < 48 || charCode > 57))
                    return false; return true;

            });

           
            $('#btncheck1').click(function () {
                $("#btncheck1").checked = true;
                //alert('checked');
            });

            
            function btngRroup() {
                let btn1 = document.querSelector('#btncheck1').value
                let btn2 = document.querSelector('#btncheck2').value
                let btn3 = document.querSelector('#btncheck3').value

                //logic
            }
            $('#eeTxt1').prop('readonly', true);
            $('#enTiertab td:nth-child(5),th:nth-child(5)').hide();
            $('input[name=tiers]').click(function () {
               // alert($('input[name=tiers]:checked').val());
                if (($('input[name=tiers]:checked').val()) == 4) {

                     
                    $('#eeTxt1').val("1.00");
                   
                    $('#eespTxt1').attr('title', '2.20');
                    $('#eechTxt1').attr('title', '1.80');
                    $('#eechsTxt1').attr('title', '3.00');
                  
                    $('#enTiertab td:nth-child(1),th:nth-child(1)').show();
                    $('#enTiertab td:nth-child(2),th:nth-child(2)').show();
                    $('#enTiertab td:nth-child(3),th:nth-child(3)').show();
                    $('#enTiertab td:nth-child(4),th:nth-child(4)').show();
                    $('#enTiertab td:nth-child(5),th:nth-child(5)').hide();
                }
                if (($('input[name=tiers]:checked').val()) == 3) {

                   // jQuery('li#menu-item-75 a').attr('data-tooltip', 'w00t');
                    $('#eeTxt1').val("1.00");
                    $('#eespTxt1').attr('title', '2.00');
                    $('#eechTxt1').attr('title', '2.70');
                    $('#enTiertab td:nth-child(1),th:nth-child(1)').show();
                    $('#enTiertab td:nth-child(2),th:nth-child(2)').show();
                    $('#enTiertab td:nth-child(3),th:nth-child(3)').show();
                    $('#enTiertab td:nth-child(4),th:nth-child(4)').hide();
                    $('#enTiertab td:nth-child(5),th:nth-child(5)').hide();

                }
                if (($('input[name=tiers]:checked').val()) == 2) {
                    $('#eeTxt1').val('1.00');
                    $('#eefamTxt1').attr('title', '2.30');
                    $('#enTiertab td:nth-child(1),th:nth-child(1)').show();
                    $('#enTiertab td:nth-child(2),th:nth-child(2)').hide();
                    $('#enTiertab td:nth-child(3),th:nth-child(3)').hide();
                    $('#enTiertab td:nth-child(4),th:nth-child(4)').hide();
                    $('#enTiertab td:nth-child(5),th:nth-child(5)').show();

                }
                if (($('input[name=tiers]:checked').val()) == 5) {
                   
                    $("#eeTxt1").val("1.00");
                  //jQuery('li#menu-item-75 a').attr('data-tooltip', 'w00t');
                    jQuery('#eespTxt1').attr('title', '2.20');
                    $('#eechTxt1').attr('title', '1.50');
                    $('#eechsTxt1').attr('title', '2.18');
                    $('#eefamTxt1').attr('title', '3.00');
                    
                    $('#enTiertab td:nth-child(1),th:nth-child(1)').show();
                    $('#enTiertab td:nth-child(2),th:nth-child(2)').show();
                    $('#enTiertab td:nth-child(3),th:nth-child(3)').show();
                    $('#enTiertab td:nth-child(4),th:nth-child(4)').show();
                    $('#enTiertab td:nth-child(5),th:nth-child(5)').show();
                   

                }
                if (($('input[name=tiers]:checked').val()) == 1) {
                    $('#eeTxt1').val("1.00");
                    $('#enTiertab td:nth-child(1),th:nth-child(1)').show();
                    $('#enTiertab td:nth-child(2),th:nth-child(2)').hide();
                    $('#enTiertab td:nth-child(3),th:nth-child(3)').hide();
                    $('#enTiertab td:nth-child(4),th:nth-child(4)').hide();
                    $('#enTiertab td:nth-child(5),th:nth-child(5)').hide();

                }
            });


            $('.TxtBox2').on('change', function () {
                var txtBox = $(this);
                //alert(txtBox.val());
                var txt = txtBox.val();
                if ((parseFloat(txt) >= 0 && parseFloat(txt) <= 100) || (txt == "")) {
                   // var dec = parseFloat(txt, 10).toFixed(2);
                    var dec = parseFloat($(this).val(),10).toFixed(2);
                    /* if (!isNaN(txt) && isFinite(txt) && txt.length != 0) {
                         var rounded = Math.round(txt * 100) / 100;
                         txtBox.value = rounded.toFixed(2);
                         }*/
                    txtBox.value = dec;
                         txtBox.css('color', 'black');
                     
                    
                   

                }
                else {
                    
                    txtBox.prop('value', '*');
                    txtBox.css('color', '#FF0000');
                    txtBox.focus();
                   

                   // $("#errMessL").prop('innerText', 'Invalid Input, Value must be 0 to 100');
                    alert('Invalid Input, Value must be 0 to 100');

                }
            });


            $('.TxtBox2').keypress(function (evt) {
                var txtBox = $(this);
                var txt = txtBox.val();

                var dotcontainer = txtBox.val().split('.');

                var charCode = (evt.which) ? evt.which : evt.keyCode;

                if (!(dotcontainer.length == 1 && charCode == 46) && (charCode > 31) && (charCode < 48 || charCode > 57))
                    return false; return true;
            });

           

            $('.AGtxtB').on('input', function () {
                var txtBox = $(this);
                //alert(txtBox.val());
                var txt = txtBox.val();
                if ((parseFloat(txt) >= 0 && parseFloat(txt) <= 1000000) || txt == "") {
                    /* if (!isNaN(txt) && isFinite(txt) && txt.length != 0) {
                         var rounded = Math.round(txt * 100) / 100;
                         txtBox.value = rounded.toFixed(2);
                     }*/
                    $("#errMessRow").hide();
                    txtBox.css('color', 'black');

                }
                else {

                    // alert('Invalid Input, Value must be 0 to 1000000');
                    txtBox.prop('value', '*');
                    txtBox.css('color', 'red');
                    txtBox.focus();
                    //The following two statements can be used instead the 3rd statement
                    // var mt = document.getElementById('errMessL');
                    // mt.innerText = "Invalid Input, Value must be 0 to 10";

                    $("#errMessL").prop('innerText', 'Invalid Input, Value must be 0 to 1000000');
                    $("#errMessRow").show();

                }
            });


            $('.AGtxtB').keypress(function (evt) {
                var txtBox = $(this);
                var txt = txtBox.val();

                var dotcontainer = txtBox.val().split('.');

                var charCode = (evt.which) ? evt.which : evt.keyCode;

                if (!(dotcontainer.length == 1 && charCode == 46) && (charCode > 31) && (charCode < 48 || charCode > 57))
                    return false; return true;
            });
         
        });
        function enterToTab(e) {
            var intKey = window.Event ? e.which : e.KeyCode;

            if (intKey == 13) {
                e.keyCode = 9;
                return e;
            }
        }
        function isNumberKey(sender, evt) {
            var txt = sender.value;
            var dotcontainer = txt.split('.');
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (!(dotcontainer.length == 1 && charCode == 46) && charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

            return true;
        }
        function TbTrigger(source) {
            var txtBox = source;
            var txt = txtBox.value;
            if ((parseFloat(txt) >= 0 && parseFloat(txt) <= 1000000) || txt == "") {
                /* if (!isNaN(txt) && isFinite(txt) && txt.length != 0) {
                     var rounded = Math.round(txt * 100) / 100;
                     txtBox.value = rounded.toFixed(2);
                 }*/

                $("#errMessRow").hide();
                // txtBox.css('color', 'black');

                txtBox.style.color = "black";
            }
            else {
                txtBox.value = "*";
                txtBox.style.color = "red";
                txtBox.focus();


                $("#errMessL").prop('innerText', 'Invalid Input, Value must be 0 to 1000000');
                $("#errMessRow").show();

            }
        }


         
 /* for combo drop down*/
                (function($) {
      $.widget("custom.combobox", {
        _create: function() {
          this.wrapper = $("<span>")
            .addClass("custom-combobox")
            .insertAfter(this.element);

          this.element.hide();
          this._createAutocomplete();
          this._createShowAllButton();
        },

        _createAutocomplete: function() {
          var selected = this.element.children(":selected"),
            value = selected.val() ? selected.text() : "";

          this.input = $("<input>")
            .appendTo(this.wrapper)
            .val(value)
            .attr("title", "")
            .addClass("custom-combobox-input ui-widget ui-widget-content ui-state-default ui-corner-left")
            .autocomplete({
              delay: 0,
              minLength: 0,
              source: $.proxy(this, "_source")
            })
            .tooltip({
              tooltipClass: "ui-state-highlight"
            });

          this._on(this.input, {
            autocompleteselect: function(event, ui) {
              ui.item.option.selected = true;
              this._trigger("select", event, {
                item: ui.item.option
              });
            },

            autocompletechange: "_removeIfInvalid"
          });
        },

        _createShowAllButton: function() {
          var input = this.input,
            wasOpen = false;

          $("<a>")
            .attr("tabIndex", -1)
            .attr("title", "Show All Items")
            .tooltip()
            .appendTo(this.wrapper)
            .button({
              icons: {
                primary: "ui-icon-triangle-1-s"

              },
              text: false
            })
            .removeClass("ui-corner-all")
            .addClass("custom-combobox-toggle ui-corner-right")
            .mousedown(function() {
              wasOpen = input.autocomplete("widget").is(":visible");
            })
            .click(function() {
              input.focus();

              // Close if already visible
              if (wasOpen) {
                return;
              }

              // Pass empty string as value to search for, displaying all results
              input.autocomplete("search", "");
            });
        },

        _source: function(request, response) {
          var matcher = new RegExp($.ui.autocomplete.escapeRegex(request.term), "i");
          response(this.element.children("option").map(function() {
            var text = $(this).text();
            if (this.value && (!request.term || matcher.test(text)))
              return {
                label: text,
                value: text,
                option: this
              };
          }));
        },

        _removeIfInvalid: function(event, ui) {

          // Selected an item, nothing to do
          if (ui.item) {
            return;
          }

          // Search for a match (case-insensitive)
          var value = this.input.val(),
            valueLowerCase = value.toLowerCase(),
            valid = false;
          this.element.children("option").each(function() {
            if ($(this).text().toLowerCase() === valueLowerCase) {
              this.selected = valid = true;
              return false;
            }
          });

          // Found a match, nothing to do
          if (valid) {
            return;
          }

          // Remove invalid value
          this.input
            .val("")
            .attr("title", value + " didn't match any item")
            .tooltip("open");
          this.element.val("");
          this._delay(function() {
            this.input.tooltip("close").attr("title", "");
          }, 2500);
          this.input.autocomplete("instance").term = "";
        },

        _destroy: function() {
          this.wrapper.remove();
          this.element.show();
        }
      });
    })(jQuery);

    $(function() {
      $("#combobox").combobox();
      $("#toggle").click(function() {
        $("#combobox").toggle();
      });
    });
    
    </script>

   
   
<style>
 

 table tr td{
/*border: 1px solid black;*/
white-space:nowrap;
padding:10px;
margin:2px;
    }
 .ChkBoxClass input {width:25px; height:25px; color:#00AEC0;}
 .chkBoxcls input{
    width: 25px;
    height: 25px;
   color:#00AEC0;
  
}
/*Code for calendar custom color*/
.ui-datepicker td span, .ui-datepicker td a {
    color: black; /* Numbers color */
   /* fill:gainsboro;*/
}

.ui-datepicker td {
    background: white; /* #54bdbf Numbers background */
}

.ui-datepicker-calendar .ui-state-hover {
    color: black; /* Numbers color on hover */
}

.ui-datepicker-calendar .ui-state-active {
    color: gray; /* teal Selected date color */
}

.ui-datepicker select.ui-datepicker-month,
.ui-datepicker select.ui-datepicker-year {
   /* color: teal !important;*/

}
    .ui-state-highlight, .ui-widget-content .ui-state-highlight, .ui-widget-header .ui-state-highlight {
        border:1px solid gainsboro;
    }

.ui-datepicker {
    display: table-cell;
   
}
#ui-datepicker-div{
    display:none;
}
 

 /* For combo dropdown box*/

 
     .custom-combobox {
      position: relative;
      display: inline-block;
    }
    .custom-combobox-toggle {
      position: absolute;
      top: 0;
      bottom: 0;
      margin-left: -1px;
      padding: 0;
    }
    .custom-combobox-input {
      margin: 0;
      padding: 5px 10px;
    }
    .ui-state-default,
    .ui-widget-content .ui-state-default,
    .ui-widget-header .ui-state-default {
      border: 1px solid #421D1D;
      background: #ffffff url("images/ui-bg_glass_75_e6e6e6_1x400.png") 50% 50% repeat-x !important;
      font-weight: normal;
      color: #555555;
    }
    /* Corner radius */
    .ui-corner-all,
    .ui-corner-top,
    .ui-corner-left,
    .ui-corner-tl {
      border-top-left-radius: 0px !important;
    }
    .ui-corner-all,
    .ui-corner-top,
    .ui-corner-right,
    .ui-corner-tr {
      border-top-right-radius: 0px !important;
    }
    .ui-corner-all,
    .ui-corner-bottom,
    .ui-corner-left,
    .ui-corner-bl {
      border-bottom-left-radius: 0px !important;
    }
    .ui-corner-all,
    .ui-corner-bottom,
    .ui-corner-right,
    .ui-corner-br {
      border-bottom-right-radius: 0px !important;
    }
  
      
</style>

</asp:Content>
