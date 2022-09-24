<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegister.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RestaurantManagement.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-6">
            <div class="card">
                <h1 align="center">Register</h1>
                <div class="card-body">
                    <form class="needs-validation" novalidate>
                        <div class="mb-3">
                            <label for="InputUserName" class="form-label">Username</label>
                            <asp:TextBox ID="UsernameTextBox" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="InputPassword" class="form-label">Password</label>
                            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="ReInputPassword" class="form-label">Re-enter Password</label>
                            <asp:TextBox ID="RepasswordTextBox" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" class="btn btn-primary"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
