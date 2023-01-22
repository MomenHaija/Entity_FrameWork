<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="EntityTask2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-xl-9">
  
  
          <div class="card" style="border-radius: 15px;">
            <div class="card-body">
  
              <div class="row align-items-center pt-4 pb-3">
                <div class="col-md-3 ps-5">
  
                  <h6 class="mb-0">Full name</h6>
  
                </div>
                <div class="col-md-9 pe-5">
  
                      <asp:TextBox ID="txtname" runat="server" class="form-control form-control-lg" ></asp:TextBox>
  
                </div>
              </div>
  
              <hr class="mx-n3">
  
              <div class="row align-items-center py-3">
                <div class="col-md-3 ps-5">
  
                  <h6 class="mb-0">Email address</h6>
  
                </div>
                <div class="col-md-9 pe-5">
  
                        <asp:TextBox ID="txtemail" runat="server" class="form-control form-control-lg" placeholder="example@example.com"></asp:TextBox>

                </div>
              </div>
  
              <hr class="mx-n3">


              <div class="row align-items-center py-3">
                <div class="col-md-3 ps-5">
  
                  <h6 class="mb-0">Phone Number</h6>
  
                </div>
                <div class="col-md-9 pe-5">
  
                      <asp:TextBox ID="txtphone" runat="server" class="form-control form-control-lg" ></asp:TextBox>

                </div>
              </div>
              <hr class="mx-n3">

              <div class="row align-items-center py-3">
                <div class="col-md-3 ps-5">
  
                  <h6 class="mb-0">City</h6>

                </div>
                <div class="col-md-9 pe-5">
  
                     <asp:DropDownList ID="DropDownList1" class="form-control form-control-lg" runat="server">
                    </asp:DropDownList>
                </div>
              </div>

                     <hr class="mx-n3">

              <div class="row align-items-center py-3">
                <div class="col-md-3 ps-5">
  
                  <h6 class="mb-0">Customer Age</h6>
  
                </div>
                <div class="col-md-9 pe-5">
                        <asp:TextBox ID="txtage" runat="server" class="form-control form-control-lg"></asp:TextBox>

                </div>
              </div>
  


  
             

              <hr class="mx-n3">
  
              <div class="row align-items-center py-3">
                <div class="col-md-3 ps-5">
  
                  <h6 class="mb-0">Upload Photo</h6>
  
                </div>
                <div class="col-md-9 pe-5">
  
             <asp:FileUpload ID="FileUpload1" class="form-control form-control-lg"  runat="server" />

                </div>
              </div>
  
              <hr class="mx-n3">
  
              <div class="px-5 py-4">


              </div>
                <asp:Button ID="ADD" runat="server"  class="btn btn-primary btn-lg"  Text="Add" OnClick="ADD_Click"  />
            </div>
          </div>
  
        </div>
      </div>
    </div>
</asp:Content>
