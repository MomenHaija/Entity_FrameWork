<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="text.aspx.cs" Inherits="EntityTask2.text" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="customer_id" DataNavigateUrlFormatString="testEdit.aspx?id={0}" Text="Edit" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
