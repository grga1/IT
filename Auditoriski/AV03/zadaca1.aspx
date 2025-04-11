<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zadaca.aspx.cs" Inherits="lab1v.zadaca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="lista"  runat="server">
                <asp:ListItem>Skopje</asp:ListItem>
                <asp:ListItem>Veles</asp:ListItem>
                <asp:ListItem>Ohrid</asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:Button ID="btn" runat="server" Text="Prikazi grad" OnClick="btn_Click" />
            <br />
            Selektiraniot grad e:<asp:Label ID="labela" runat="server" Text="(none)"></asp:Label>
        </div>
    </form>
</body>
</html>
