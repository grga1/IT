<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vezba.aspx.cs" Inherits="A5.vezba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Ime</p>
            <asp:TextBox ID="ime" runat="server"></asp:TextBox>
            <br />
            <p>Cena</p>
            <asp:TextBox ID="cena" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Dodaj" runat="server" Text="Dodaj" OnClick="Dodaj_Click" />
            <br />
            <asp:ListBox ID="lista" runat="server"></asp:ListBox>
            <br />
            <asp:Button ID="Brisi" runat="server" Text="Brisi" OnClick="Brisi_Click" />
        </div>
    </form>
</body>
</html>
