<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
       
        <div class="row">
            <div class="col-md-3">
                Telefonski broj:<asp:TextBox ID="phone" TextMode="Phone" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="phone" runat="server" ErrorMessage="Nemas vneseno telefon" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone" ErrorMessage="Pogresen format na telefon" ValidationExpression="07[01567]\d{6}"></asp:RegularExpressionValidator>
            </div>
        </div>

        <asp:Button ID="Button1" runat="server" Text="Button"/>
        
    </div>


    </div>
</asp:Content>
