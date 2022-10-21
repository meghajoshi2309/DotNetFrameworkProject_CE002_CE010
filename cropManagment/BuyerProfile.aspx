<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyerProfile.aspx.cs" Inherits="cropManagment.BuyerProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 216px;
        }
        .auto-style3 {
            width: 216px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">First Name</td>
                    <td>
                        <asp:TextBox ID="fn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Last Name</td>
                    <td>
                        <asp:TextBox ID="ln" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mobile No.</td>
                    <td>
                        <asp:TextBox ID="mno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Preffered Product</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="prefprod" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="updatebtn" runat="server" Text="Update" OnClick="updatebtn_Click" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="logoutbtn" runat="server" Text="Logout" OnClick="logoutbtn_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
