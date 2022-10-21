<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="cropManagment.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
    <a href="Login.aspx">Already Registered?</a>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem>buyer</asp:ListItem>
                <asp:ListItem>seller</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="conregbtn" runat="server" OnClick="conregbtn_Click" Text="Continue Registration" />
            <br />
            <br />
            <asp:Label ID="lblmessage" runat="server">Please Select Category.</asp:Label>
            .<br />
        </div>
    </form>
    </center>
</body>
</html>
