<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Base.aspx.cs" Inherits="PebbleLitePlus.Base" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <link type="text/css" rel="stylesheet" runat="server" media="all" href="LitePlusStyleSheet1.css" />

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bs-stepper/dist/css/bs-stepper.min.css" rel="stylesheet" />


    <div class="container">
  <div class="bs-stepper">
  <div class="bs-stepper-header" role="tablist">
    <!-- your steps here -->
    <div class="step" data-target="#logins-part">
      <button type="button" class="step-trigger" role="button" aria-controls="logins-part" id="logins-part-trigger">
        <span class="bs-stepper-circle">1</span>
        <span class="bs-stepper-label">Logins</span>
      </button>
    </div>
   <!-- <div class="line"></div>-->
    <div class="step" data-target="#information-part">
      <button type="button" class="step-trigger" role="tab" aria-controls="information-part" id="information-part-trigger">
        <span class="bs-stepper-circle">2</span>
        <span class="bs-stepper-label">Various information</span>
      </button>
    </div>
  </div>
  <div class="bs-stepper-content">
    <!-- your steps content here -->
    <div id="logins-part" class="content" role="tabpanel" aria-labelledby="logins-part-trigger">Login</div>
    <div id="information-part" class="content" role="tabpanel" aria-labelledby="information-part-trigger">Various information</div>
  </div>
</div>
</div>

   <div class="container">
   <ul id="ulid" class="stepper">
   <li id="no1"class="stepper__item complete"><span class="bs-stepper-circle">1</span>Basic Information</li>
   <li id="no2" class="stepper__item current"><span class="bs-stepper-circle">2</span> Provider Network & Utilization</li>
   <li id="no3" class="stepper__item"><span class="bs-stepper-circle">3</span>Plan Design(Medical & RX)</li>
   </ul>
   </div>

   <script src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js" ></script>
    <script src="bs-stepper.min.js"></script>
   <script>
       window.addEventListener('load', function () {
           var stepperEl = document.querySelector('.bs-stepper')

           stepperEl.addEventListener('shown.bs-stepper', function (ev) {
               console.warn(ev)
           })
           var stepper = new Stepper(stepperEl, {
               linear: false
           })
  

      
       })

       $("#no1").on("click", function () {
           $(this).css("class", "changed");


       });
       $("#no2").on("click", function () {
           $(this).css("class", "changed");


       });
       $("#no3").on("click", function () {
           $(this).css("class", "changed");


       }); 
   </script>

    <style>
.stepper {
  display: flex;
  margin: 25px;
  padding: 0;
  width: 60rem;
  list-style: none;
  position: relative;
  border:solid 1px grey;
}
.changed {
   background:teal;
  font-weight: bold;
  font-size: 14px;
  
}
.stepper::before {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  content: "";
  width: calc(100% - 20px);
  background: #e7e7e7;
}

.stepper__item {
  flex: 100%;
  padding: 20px 20px 20px 40px;
  margin: 0 0 0 -19px;
  background: #fff;
  font-weight: bold;
  font-size: 14px;
  -webkit-clip-path: polygon(20px 50%, 0% 0%, calc(100% - 20px) 0%, 100% 50%, calc(100% - 20px) 100%, 0% 100%);
}
.stepper__item.current {
  background: #fff;
  font-weight: bold;
  font-size: 14px;
}
.stepper__item.complete {
  background: #fff;
  font-weight: bold;
  font-size: 14px;
}
.stepper__item:first-child {
  padding: 20px;
  -webkit-clip-path: polygon(0% 0%, calc(100% - 20px) 0%, 100% 50%, calc(100% - 20px) 100%, 0% 100%);
}
.stepper__item:last-child {
  -webkit-clip-path: polygon(20px 50%, 0% 0%, 100% 0%, 100% 100%, 0% 100%);
}
    </style>
   
</asp:Content>
