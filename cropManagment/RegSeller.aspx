<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegSeller.aspx.cs" Inherits="cropManagment.RegSeller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 297px;
        }
        .auto-style3 {
            width: 297px;
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Seller Registration</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td id="fnames" class="auto-style2">First Name</td>
                <td>
                    <asp:TextBox ID="fn" runat="server" OnTextChanged="fn_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fn" ErrorMessage="First Name Is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="lnames" class="auto-style2">Last Name</td>
                <td>
                    <asp:TextBox ID="ln" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ln" ErrorMessage="Last Name Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="emails" class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Email Is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="mns" class="auto-style2">Mobile NUmber</td>
                <td>
                    <asp:TextBox ID="mn" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="mn" ErrorMessage="Mobile Number Is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="companys" class="auto-style2">Company</td>
                <td>
                    <asp:TextBox ID="cmp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cmp" ErrorMessage="Company Name Is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="cas" class="auto-style2">Company Activitity</td>
                <td>
                    <asp:DropDownList ID="cmpa" runat="server">
                        <asp:ListItem>Select One</asp:ListItem>
                        <asp:ListItem>Farming Production</asp:ListItem>
                        <asp:ListItem>Imports/Exports</asp:ListItem>
                        <asp:ListItem>Food Industry</asp:ListItem>
                        <asp:ListItem>Retail</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="cmpa" ErrorMessage="What Is Your Company Activity?" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="zips" class="auto-style3">Zip Code</td>
                <td class="auto-style4">
                    <asp:TextBox ID="zip" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="contrys" class="auto-style2">Contry</td>
                <td>
                    <asp:DropDownList ID="cnt" runat="server">
                        <asp:ListItem>Select Contry</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Us</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td id="passs" class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pass" ErrorMessage="Password Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="cpasss" class="auto-style2">Confirm Password</td>
                <td>
                    <asp:TextBox ID="cpass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="cpass" ErrorMessage="Confirm password Is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="singnups" runat="server" Text="Sign Up" OnClick="singnups_Click" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
    </center>
</body>
</html>
