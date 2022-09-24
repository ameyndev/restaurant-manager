<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="RestaurantManagement.Dashboard1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-left: 100px; margin-right: 100px;">
        <h1 align="center">Dashboard</h1><hr />
        <div class="row">
            <div class="col-sm-2">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Total Products</h5>
                        <asp:Label ID="ProCountLabel" runat="server" Text="" class="card-text"></asp:Label><br />
                        <a href="Products.aspx" class="card-link">See more</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Total Users</h5>
                        <asp:Label ID="UserCountLabel" runat="server" Text="" class="card-text"></asp:Label><br />
                        <a href="#" class="card-link">See more</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Total Tables</h5>
                        <asp:Label ID="TableCountLabel" runat="server" Text="" class="card-text"></asp:Label><br />
                        <a href="Tables.aspx" class="card-link">See more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
