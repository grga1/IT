<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-3">
                Ime na ispitot:<asp:TextBox ID="ime_na_ispit" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="ime_na_ispit" runat="server" ErrorMessage="Vnesi ime na ispit" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">
                Dobiena ocena:<asp:TextBox ID="ocena" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="ocena" runat="server" ErrorMessage="Vnesi ocena" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Ocenkata ne e vo opsegot" ControlToValidate="ocena" MinimumValue="5" MaximumValue="10" Type="Integer" Display="None"></asp:RangeValidator>
            </div>

        <div class="row">
            <div class="col-md-3">
                Datum na ispitot:<asp:TextBox ID="datum"  TextMode="Date" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="datum" runat="server" ErrorMessage="Nemas izbrano datum" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="datum" ErrorMessage="Vneseniot datum ne e pred 05.05.2025" Operator="LessThan" Type="Date" ValueToCompare="05.05.2025" Display="None"></asp:CompareValidator>
            </div>
        </div>


        <asp:Button ID="Button1" runat="server" Text="Button"/>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

    </div>


    </div>
</asp:Content>
