<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <asp:ListBox ID="listbox1" runat="server">
                    <asp:ListItem>Strumica</asp:ListItem>
                    <asp:ListItem>Skopje</asp:ListItem>
                    <asp:ListItem>Solun</asp:ListItem>
                </asp:ListBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="listbox1" runat="server" ErrorMessage="Nemas izbrano grad od listata"></asp:RequiredFieldValidator>
            </div>
        </div>

        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:Label ID="grad" runat="server" Text="Label"></asp:Label>
    </div>


</asp:Content>
