<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Katalog.aspx.cs" Inherits="A5.Katalog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Каталог</p>
            <asp:LinkButton ID="tehnicka_literatura" runat="server" OnClick="tehnicka_literatura_Click">Техничка литература</asp:LinkButton>
            <br />
            <asp:LinkButton ID="naucna_fantastika" runat="server" OnClick="naucna_fantastika_Click">Научна фантастика</asp:LinkButton>
            <br />
            <asp:LinkButton ID="avtomobili" runat="server" OnClick="avtomobili_Click">автомобили</asp:LinkButton>
        </div>
    </form>
</body>
</html>
