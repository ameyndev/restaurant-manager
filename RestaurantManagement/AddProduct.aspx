<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="RestaurantManagement.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-left: 100px; margin-right: 100px">
        <h1 align="center">Add Product</h1><hr />
        <div>
            <h2 align="center">Add new product</h2>
            <asp:Table ID="AddProductTable" runat="server" class="table">
                <asp:TableRow>
                    <asp:TableHeaderCell>Enter Product Name: </asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:TextBox ID="ProductNameTb" runat="server" class="form-control"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell>Enter Product Category: </asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-select">
                            <asp:ListItem>snacks</asp:ListItem>
                            <asp:ListItem>lunch</asp:ListItem>
                            <asp:ListItem>dinner</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell>Enter Product Price: </asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:TextBox ID="ProductPriceTb" runat="server" class="form-control"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button ID="AddProductButton" runat="server" Text="Add Product" class="btn btn-primary" OnClick="AddProductButton_Click"/>
        </div>
    </div>
</asp:Content>
