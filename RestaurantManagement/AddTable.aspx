<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="AddTable.aspx.cs" Inherits="RestaurantManagement.AddTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-left: 100px; margin-right: 100px">
        <h1 align="center">Add Table</h1><hr />
        <div>
            <h2 align="center">Add new table</h2>
            <asp:Table ID="AddTableTable" runat="server" class="table">
                <asp:TableRow>
                    <asp:TableHeaderCell>Enter Table Number: </asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TableNumberTb" runat="server" class="form-control"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell>Enter Status: </asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-select">
                            <asp:ListItem>active</asp:ListItem>
                            <asp:ListItem>inactive</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button ID="AddTableButton" runat="server" Text="Add Table" class="btn btn-primary" OnClick="AddTableButton_Click"/>
        </div>
    </div>
</asp:Content>
