<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="EntityTask2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
              <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <style>
        .btn{
                margin-left: -1px;
                height: 39px;
                display: block;
                display: flex;
                justify-content: center;
                align-items: center;
        }
        .input-group{
            display:flex;
            flex-direction:row;
            justify-content:center;
        }
        #TextBox1{
                display:block;
                height:50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="input-group">
  <div id="search-autocomplete" class="form-outline">
   <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"  OnTextChanged="TextBox1_TextChanged" PlaceHolder="Search By Id Or Name" Height="39px"></asp:TextBox>
  </div>
  <button type="button" class="btn btn-primary">
    <i class="fas fa-search"></i>
  </button>
</div>



&nbsp;<br />
        <br />
        <br />
        <asp:Label ID="labTabel" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="customer_id" DataNavigateUrlFormatString="Edit.aspx?id={0}" Text="Edit" />
                <asp:HyperLinkField DataNavigateUrlFields="customer_id" DataNavigateUrlFormatString="DeleteUser.aspx?id={0}" Text="Delete" />
            </Columns>
    </asp:GridView>
</asp:Content>

