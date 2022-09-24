<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="RestaurantManagement.UserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-left: 100px; margin-right: 100px;">
        <div>
            <h3 align="center">User Profile</h3><hr />
            <asp:Table ID="Table1" runat="server" class="table">
                <asp:TableRow>
                    <asp:TableHeaderCell Scope="Row">Username</asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:Label ID="UsernameLabel" runat="server" Text="UsernameLabel"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell Scope="Row">Password</asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:Label ID="PasswordLabel" runat="server" Text="PasswordLabel"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell Scope="Row">Name</asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:Label ID="NameLabel" runat="server" Text="NameLabel"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </div>
</asp:Content>
