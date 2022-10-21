<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="cropManagment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin: auto;
            align-content:center;
        }
        .auto-style5 {
            width: 435px;
        }
        .auto-style6 {
            width: 94px;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</head>

<body style="width: 1327px; height: 538px;" >
    <center>
    <form id="form1" runat="server">
        &nbsp;
        <table class="auto-style1" >
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2"><strong>User Login</strong></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RadioButtonList ID="catagory" runat="server">
                        <asp:ListItem>Buyer</asp:ListItem>
                        <asp:ListItem>Seller</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Email :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email is requried." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
                &nbsp;
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Password Is Requried" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="logbtn" runat="server" Text="Login" OnClick="logbtn_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:HyperLink ID="HyperRegi" runat="server" NavigateUrl="~/Registration.aspx">Not Register Yet? SignUp</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblmessage" runat="server" Text="Please Select Catagory"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="wrongCred" runat="server" Text="Invalid Credentials."></asp:Label>
                </td>
            </tr>
        </table>
    </form>
        </center>
</body>

</html>
