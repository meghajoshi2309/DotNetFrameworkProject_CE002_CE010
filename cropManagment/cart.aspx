<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="cropManagment.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridViewcart" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductName], [Price] FROM [cart] WHERE ([bid] = @bid)">
                <SelectParameters>
                    <asp:SessionParameter Name="bid" SessionField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="purchase" runat="server" OnClick="purchase_Click" Text="Purchase" />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="backbtn" runat="server" OnClick="backbtn_Click" Text="Back To Home" />
        </div>
    </form>
</body>
</html>
