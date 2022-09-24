<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="RestaurantManagement.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-left: 100px; margin-right: 100px;">
        <h1 align="center">Products</h1><hr />
        <asp:GridView ID="GridView1" runat="server" class="table" AutoGenerateColumns="False" DataSourceID="ProductsDataSource">
            <Columns>
                <asp:BoundField DataField="pro_name" HeaderText="Name" SortExpression="pro_name" />
                <asp:BoundField DataField="pro_category" HeaderText="Category" SortExpression="pro_category" />
                <asp:BoundField DataField="pro_price" HeaderText="Price" SortExpression="pro_price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ProductsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RestUsersConnectionString %>" SelectCommand="SELECT * FROM [rest_products]"></asp:SqlDataSource>
        <a role="button" class="btn btn-primary" href="AddProduct.aspx" >Add Product</a>
    </div>
</asp:Content>
