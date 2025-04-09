<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row">
            <div class="col-md-3">
                Name:<asp:TextBox ID="Name" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Vnesi ime" ControlToValidate="Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">
                Password:<asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  runat="server" ErrorMessage="Vnesi password" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Passwordot mora da ima od 4 do 10 znaci" ControlToValidate="Password" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
                </div>
        </div>


        <div class="row">
            <div class="col-md-6">

                Confirm Password:<asp:TextBox ID="Cpassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Vnesi go paswordot povtorno" ControlToValidate="Cpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not same password" ControlToCompare="Cpassword" ControlToValidate="Password"></asp:CompareValidator>
            </div>
            <div class="col-md-3 text-left">
            </div>
        </div>

        <asp:Button ID="Button1" runat="server" Text="Button" />


    </div>


</asp:Content>
