<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">


        <asp:MultiView ID="mvRegistracija" runat="server">
            <asp:View ID="vwCekor1" runat="server">
                <p>Ime</p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <p>Prezime</p>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="&gt;&gt;" OnClick="Button1_Click" />
            </asp:View>
            <asp:View ID="vwCekor2" runat="server">
                <p>Datum na raganje</p>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <p>Mesto na raganje</p>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="&lt;&lt;" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="&gt;&gt;" />

            </asp:View>
            <asp:View ID="vwCekor3" runat="server">

                <p>Adresa</p>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <p>Telefon</p>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:Button ID="Button4" runat="server"  Text="&lt;&lt;" OnClick="Button4_Click" />
                <asp:Button ID="Button5" runat="server"  Text="&gt;&gt;" OnClick="Button5_Click" />
            </asp:View>
        </asp:MultiView>






    </div>
</asp:Content>
