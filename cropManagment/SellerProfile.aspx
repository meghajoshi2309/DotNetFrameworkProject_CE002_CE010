<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerProfile.aspx.cs" Inherits="cropManagment.SellerProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 516px;
        }
        .auto-style3 {
            width: 285px;
        }
        .auto-style4 {
            width: 285px;
            height: 26px;
        }
        .auto-style5 {
            width: 516px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="fname" runat="server" Text="Frist Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="fn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lname" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="ln" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="em" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="mn" runat="server" Text="Mobile No."></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="mno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="cmp" runat="server" Text="Company"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="company" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="cmpa" runat="server" Text="Company Activity"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="companyActivity" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="updatebtn" runat="server" OnClick="updatebtn_Click" Text="Update" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="logoutbtn" runat="server" OnClick="logoutbtn_Click" Text="Logout" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
