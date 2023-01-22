<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EntityTask2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 59%;
        }
        .auto-style2 {
            width: 264px;
        }
        .auto-style3 {
            width: 554px;
        }
        .auto-style4 {
            width: 264px;
            height: 26px;
        }
        .auto-style5 {
            width: 554px;
            height: 26px;
        }
        .auto-style6 {
            width: 264px;
            height: 29px;
        }
        .auto-style7 {
            width: 554px;
            height: 29px;
        }
        .auto-style8 {
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Customer Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Customer Age</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">City</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Photo</td>
                <td class="auto-style7">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ADD" runat="server" OnClick="ADD_Click" Text="Add" CssClass="auto-style8" Width="111px" />
                    </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;<br />
        <br />
        <br />
        <asp:Label ID="labTabel" runat="server"></asp:Label>
        <br />
        
    </form>
</body>
</html>
