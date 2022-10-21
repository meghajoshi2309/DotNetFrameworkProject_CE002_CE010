<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegBuyer.aspx.cs" Inherits="cropManagment.RegBuyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 314px;
        }
        .auto-style4 {
            height: 26px;
            width: 314px;
        }
        .auto-style5 {
            width: 314px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><strong>Buyer Registration</strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td id="fname" class="auto-style3">First Name</td>
                    <td>
                        <asp:TextBox ID="fnameb" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td id="lname" class="auto-style3">Last Name</td>
                    <td>
                        <asp:TextBox ID="lnameb" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td id="email" class="auto-style3">Email</td>
                    <td>
                        <asp:TextBox ID="emailb" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td id="mno" class="auto-style4">Mobile Number</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="mnb" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td id="zip" class="auto-style3">Zip Code</td>
                    <td>
                        <asp:TextBox ID="zipb" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td id="contry" class="auto-style3">Contry</td>
                    <td>
                        <asp:DropDownList ID="contryb" runat="server">
                            <asp:ListItem Value="SelectCountry">Select Country</asp:ListItem>
                            <asp:ListItem>india</asp:ListItem>
                            <asp:ListItem>us</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td id="preferedProduct" class="auto-style3">Peffered Products</td>
                    <td>
                        <asp:DropDownList ID="pefferdb" runat="server">
                            <asp:ListItem>Select One</asp:ListItem>
                            <asp:ListItem>Rice</asp:ListItem>
                            <asp:ListItem>Olive Oil</asp:ListItem>
                            <asp:ListItem>Wheat</asp:ListItem>
                            <asp:ListItem>Pinuts</asp:ListItem>
                            <asp:ListItem>Hazle Nut</asp:ListItem>
                            <asp:ListItem>Coffee</asp:ListItem>
                            <asp:ListItem>Pastash</asp:ListItem>
                            <asp:ListItem>Cacshew</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td id="pass" class="auto-style3">Password</td>
                    <td>
                        <asp:TextBox ID="passb" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td id="cpass" class="auto-style5">Confirm Password</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="cpassb" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td id="cpass" class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="singupb" runat="server" Text="Sign Up" OnClick="singupb_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
