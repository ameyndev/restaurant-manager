<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="RestaurantManagement.Settings" %>
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
                        <asp:TextBox ID="UserNameTextBox" runat="server" class="form-control"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell Scope="Row">Password</asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:TextBox ID="PasswordTextBox" runat="server" class="form-control"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell Scope="Row">Name</asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:TextBox ID="NameTextBox" runat="server" class="form-control"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button ID="SaveChangesButton" runat="server" Text="Save Changes" class="btn btn-primary" OnClick="SaveChangesButton_Click"/>
        </div>
    </div>

</asp:Content>
