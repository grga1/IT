<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UspesnoGlasanje.aspx.cs" Inherits="Ispit.UspesnoGlasanje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p> <asp:Label ID="ime" runat="server" Text=""></asp:Label> Ви благодариме за учеството во анкетата на ФИНКИ. Вашиот избор беше <asp:Label ID="predmet" runat="server" Text=""></asp:Label>
                Потврдата за пополнување на анкетата ќе ги добиете по електронска пошта, на <asp:Label ID="email" runat="server" Text=""></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
