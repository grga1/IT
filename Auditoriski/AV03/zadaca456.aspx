<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zadaca.aspx.cs" Inherits="lab1v.zadaca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Valuta<asp:TextBox ID="valuta" runat="server"></asp:TextBox>
            <br />
            Vrednost<asp:TextBox ID="vrednost" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn" runat="server" Text="Dodadi" OnClick="btn_Click" />
            <br />
            Vkupno valuti:<asp:Label ID="vkupno" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="brisi" runat="server" Text="Brisi" OnClick="brisi_Click" />
            <br />
            <asp:RadioButtonList ID="lista" runat="server" OnSelectedIndexChanged="lista_SelectedIndexChanged" AutoPostBack="True"></asp:RadioButtonList>
         <br />
            Vnesi iznos:<asp:TextBox ID="iznos" runat="server"></asp:TextBox>
            <br />
            Iznosot vo denari e:<asp:Label ID="convert" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
