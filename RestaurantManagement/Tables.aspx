<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Tables.aspx.cs" Inherits="RestaurantManagement.Tables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-left: 100px; margin-right: 100px">
        <h1 align="center">Tables</h1>
        <hr />
        <asp:GridView ID="GridView1" runat="server" class="table" AutoGenerateColumns="False" DataSourceID="TablesDataSource">
            <Columns>
                <asp:BoundField DataField="tab_num" HeaderText="Table Number" SortExpression="tab_num" />
                <asp:BoundField DataField="tab_status" HeaderText="Status" SortExpression="tab_status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="TablesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RestUsersConnectionString %>" SelectCommand="SELECT * FROM [rest_tables]"></asp:SqlDataSource>
        <a role="button" class="btn btn-primary" href="AddTable.aspx" >Add Table</a>
    </div>
</asp:Content>
