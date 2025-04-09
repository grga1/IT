<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row" style="background-color:yellow">
            <div class="col-md-3">
                <p>Validaciona grupa 1:</p>
                <asp:TextBox ID="input1" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="input1" runat="server" ErrorMessage="Vnesi ime na ispit" ForeColor="Red" Display="Static" ValidationGroup="group1"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-3">
            <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="group1" />
                </div>
        </div>

        <div class="row" style="background-color:grey">
    <div class="col-md-3">
        <p>Validaciona grupa 2:</p>
        <asp:TextBox ID="input2" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="input2" runat="server" ErrorMessage="Vnesi ime na ispit" ForeColor="Red" Display="Static" ValidationGroup="group2"></asp:RequiredFieldValidator>
    </div>
            <div class="col-md-3">
    <asp:Button ID="Button2" runat="server" Text="Button" ValidationGroup="group2" />
  </div>
</div>

     

   

    </div>
</asp:Content>
