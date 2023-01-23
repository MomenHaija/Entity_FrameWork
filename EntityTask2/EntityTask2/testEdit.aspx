<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testEdit.aspx.cs" Inherits="EntityTask2.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 161px;
        }
        .auto-style3 {
            width: 316px;
        }
        .auto-style4 {
            width: 161px;
            height: 26px;
        }
        .auto-style5 {
            width: 316px;
            height: 26px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 161px;
            height: 72px;
        }
        .auto-style8 {
            width: 316px;
            height: 72px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Customer Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Customer Age:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Customer Phone:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Customer Email:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Image:</td>
                    <td class="auto-style8">
                        <asp:Image ID="Image1" runat="server" width="60px" Heigh="60px" />
                    </td>
                </tr>
                <tr>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
