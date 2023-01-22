<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="EntityTask2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    
 <style>
    @import url(https://unpkg.com/@webpixels/css@1.1.5/dist/index.css);

/* Bootstrap Icons */
@import url("https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.4.0/font/bootstrap-icons.min.css");
  </style>
    <style>
           .wrapper .sidebar{
               z-index:10;
           }
    .wrapper .sidebar .profile{
    margin-bottom: 30px;
    text-align: center;

}
   
.headertitle{
  
    
}
.section{
    display:none;
}
   @media screen and (min-width:1100px) {
         .con{
        width:83%;
        margin-left:16%;
    }
    }
   


@media screen and (min-width:0px) and (max-width:1100px) {
    .section{
        display: block;

    }

 .headertitle{
  width: 100%;
  height: 50px;
  margin-left: 0%;
  display: flex;
  padding-top:0.5%;
  background-color: #2ac89b;
  justify-content: center;
  font-size:x-large;
}
}
@media screen and (min-width:0px) and (max-width:500px) {
    
.wrapper .section{
        margin-top: -37px;
}
              .wrapper   .sidebar{
                     z-index:4;
                 }
       }

.wrapper .sidebar .profile img{
    display: block;
    width: 100px;
    height: 100px;
    border-radius: 50%;
    margin: 0 auto;
}

.wrapper .sidebar .profile h3{
    color: #ffffff;
    margin: 10px 0 5px;
}

.wrapper .sidebar .profile p{
    color: rgb(206, 240, 253);
    font-size: 14px;
}
body.active .wrapper .sidebar{
    left: -225px;
}

body.active .wrapper .section{
    margin-left: 0;
    width: 100%;
}

*{
    list-style: none;
    text-decoration: none;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif;
}

body{
    background: #f5f6fa;
}

.wrapper .sidebar{
    background:#49796b;
    position: fixed;
    top: 0;
    left: 0;
    width: 225px;
    height: 100%;
    padding: 20px 0;
    transition: all 0.5s ease;
}
.wrapper .sidebar .profile{
    margin-bottom: 30px;
    text-align: center;
}
.wrapper .sidebar ul li a{
    display: block;
    padding: 13px 30px;
    border-bottom: 1px solid #49796b;
    color: rgb(241, 237, 237);
    font-size: 16px;
    position: relative;
}
.wrapper .sidebar ul li a:hover,
.wrapper .sidebar ul li a.active{
    color:#49796b;

    background:white;
    border-right: 2px solid #49796b;
}
.wrapper .section{
    width: calc(100% - 225px);
    margin-left: 225px;
    transition: all 0.5s ease;
}

.wrapper .section .top_navbar{
    background: #49796b;
    height: 50px;
    display: flex;
    align-items: center;
    padding: 0 30px;

}

.wrapper .section .top_navbar .hamburger a{
    font-size: 28px;
    color: #f4fbff;
}

.wrapper .section .top_navbar .hamburger a:hover{
    color: #2ac89b;
}

.wrapper .sidebar ul li a:hover .icon,
.wrapper .sidebar ul li a.active .icon{
    color: #49796b;
}

.wrapper .sidebar ul li a:hover:before,
.wrapper .sidebar ul li a.active:before{
    display: block;
}

.wrapper .sidebar ul li a .icon{
    color: #dee4ec;
    width: 30px;
    display: inline-block;
}


.account-settings .user-profile {
    margin: 0 0 1rem 0;
    padding-bottom: 1rem;
    text-align: center;
}
.account-settings .user-profile .user-avatar {
    margin: 0 0 1rem 0;
}
.account-settings .user-profile .user-avatar img {
    width: 90px;
    height: 90px;
    -webkit-border-radius: 100px;
    -moz-border-radius: 100px;
    border-radius: 100px;
}
.account-settings .user-profile h5.user-name {
    margin: 0 0 0.5rem 0;
}
.account-settings .user-profile h6.user-email {
    margin: 0;
    font-size: 0.8rem;
    font-weight: 400;
    color: #9fa8b9;
}
.account-settings .about {
    margin: 2rem 0 0 0;
    text-align: center;
}
.account-settings .about h5 {
    margin: 0 0 15px 0;
    color: #007ae1;
}
.account-settings .about p {
    font-size: 0.825rem;
}
.form-control {
    border: 1px solid #cfd1d8;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    font-size: .825rem;
    background: #ffffff;
    color: #2e323c;
}

.card {
    background: #ffffff;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    border: 0;
    margin-bottom: 1rem;
}
.left{
    width:15%;
    height:700px;
    background-color:#49796b;
    position:absolute;
}
.right{
     width:85%;
    height:150px;
    background-color:#49796b;
    position:absolute;
    float:right;
    /*border:3px solid black;*/
    left:15%;
}
.center{
     width:85%;
    height:940px;
   /* background-color:gray;*/
    position:absolute;
    float:right;
   /* border:3px solid black;*/
    left:15%;
    top:150px;
   /* background-color:	#eeeeee;*/
   /*background-image: url('img/back1.jpg');*/
  /* background-repeat:no-repeat;*/
   /*background-size:contain;*/
  

}
ul li{
     width: 109%;
    margin-left: -9%;
    }

   @media screen and (min-width:0px) and (max-width:768px) {
         #form1{
                margin-top:-40px !important;
       
    }
    }
       .headertitle{
  background-color:#b2d3c2;
  width:87%;
  margin-left:13%;
  justify-content:center;
  align-items:center;
  font-size:x-large;
  font-weight:bold;
  
   
}
    .headertitle h3 {
        text-align: center;
        height: 65px;
        margin-top: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        font-weight: 900;
        font-size: x-large;
    }
    @media screen and (min-width:0px) and (max-width:1100px) {
        .section {
            display: block;
        }

        .headertitle {
            width: 100%;
            height: 50px;
            margin-left: 0%;
            display: flex;
            padding-top: 0.5%;
            background-color: #b2d3c2;
            justify-content: center;
            font-size: x-large;
            margin-bottom:3%;
        }
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
             <main class="py-6 bg-surface-secondary">
          <iv class="container-fluid">
              <!-- Card stats -->
              <div class="row g-6 mb-6">
                  <div class="col-xl-3 col-sm-6 col-12">
                      <div class="card shadow border-0">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col">
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Number of customers</h5></span>
                                      <span class="h3 font-bold mb-0"> <asp:Label ID="Label1" runat="server" Text=""></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                                          <i class="bi bi-book"></i>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="col-xl-3 col-sm-6 col-12">
                      <div class="card shadow border-0">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col">
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Avg of Age</h5></span>
                                      <span class="h3 font-bold mb-0"> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                                        <i class="bi bi-people"></i>
                                      </div>
                                  </div>
                                </div>
                          </div>
                      </div>
                  </div>
                  <br />
                  <div class="col-xl-3 col-sm-6 col-12">
                      <div class="card shadow border-0">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col" >
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Max Age</h5></span>
                                      <span class="h3 font-bold mb-0"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-info text-white text-lg rounded-circle">
                                        <i class="bi bi-people"></i>
                                      </div>
                                  </div>
                              </div>
                             
                          </div>
                      </div>
                  </div>
                  </main>
                 
</asp:Content>
