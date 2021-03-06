<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PebbleLitePlus.Default1" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
     <title>Data Center</title>
     <link type="text/css" rel="stylesheet" runat="server" media="all" href="LitePlusStyleSheet1.css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
     <link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />

     <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
     <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,700;1,600&display=swap" rel="stylesheet">
 <script>
        $(document).ready(function () {
                $("#Ca").on("click", function () {
                location.replace("Plan1.aspx")
            });

        });
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <!--   <br />
    <br />
    <br />
    <div style="text-align:center">
        <h3 style="color:#0099A8; font-family:Open Sans, sans-serif;">Health Benefits Consulting Suite</h3>
    </div>
    <br />
    <br />
    <br />-->
        <div class="container-fluid" style="margin:auto">
            <header>

        <div class="row sticky" style="margin:auto;padding:0px;width:98%;vertical-align:top;border-color:gainsboro;border:1px outset">
                  
                         <div class="col-3"  style="width:210px; margin:0px;padding:0px;" ><img src="Images/Logo.png"  alt="Claros Analytics" />
                     
                           </div>
                
                         <div class="col-6" style="padding:0px; vertical-align:central; text-align:center; border-color:gainsboro "  >
         
                
                                <h3 style="color:#0099A8; padding-top:10px; text-align:center; font-family: Open Sans, sans-serif;">Health Benefits Consulting Suite</h3>
      
                    
                               </div> 
                    </div>

                </header>
            </div>

     <br />
    <br />
    <br />
     <br />
    <br />
    <br />
   
   <div class="container">
    <div class="row">
       
        <div class="LandPageBtn"   id="Ca">
        <span style="font-size:25px; text-align:center; color:white;">Claros Assistant</span> <br /> <span style="font-size:16px;text-align:center;color:black;">Plan Cost Dynamics Analysis</span>
        </div>
        
        <div class="LandPageBtn1"  id="Cd"> 
             <span style="font-size:25px; text-align:center; color:white;">Claros Decision</span> <br /> <span style="font-size:16px;text-align:center;color:black;">Stop Loss Risk/Reward Profiles</span>
        </div>
       
        <div class="LandPageBtn1"  id="Cb">
             <span style="font-size:25px; text-align:center; color:white;">Claros Budget</span> <br /> <span style="font-size:16px;text-align:center;color:black;">Robust Experience Analysis</span>
        </div>
         
   </div>
  </div>
            
 </form>
   
</body>
</html>
