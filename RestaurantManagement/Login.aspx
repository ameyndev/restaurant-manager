<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegister.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RestaurantManagement.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-6">
            <div class="card">
                <h1 align="center">Login</h1>
                <div class="card-body">
                    <form class="needs-validation" novalidate>
                        <div class="mb-3">
                            <label for="UserName" class="form-label">Username</label>
                            <asp:TextBox ID="InputUsername" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="Password" class="form-label">Password</label>
                            <asp:TextBox ID="InputPassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:Button ID="LoginButton" runat="server" Text="Login" class="btn btn-primary" OnClick="LoginButton_Click1"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
