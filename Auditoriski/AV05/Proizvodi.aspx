<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proizvodi.aspx.cs" Inherits="A5.Proizvodi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 93px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="naslov" runat="server" Text="(none)"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Proizvodi"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Ceni"></asp:Label>
                    </td>
                </tr>

            <tr>
                <td> 
                    <asp:ListBox ID="proizvod" runat="server" AutoPostBack="True" OnSelectedIndexChanged="proizvod_SelectedIndexChanged"></asp:ListBox>
                </td>
                <td>
                    <asp:ListBox ID="ceni" runat="server"></asp:ListBox>
                </td>
            </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="katalog" runat="server" OnClick="katalog_Click">Каталог</asp:LinkButton>
                    </td>
                    <td>
                        Total:<asp:Label ID="total" runat="server" Text="0"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="dodadi" runat="server" Text="Додади во кошничката" OnClick="dodadi_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ListBox ID="kosnicka" Height="300px" Width="300px" runat="server"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="kupi" runat="server" Text="Kupi" OnClick="kupi_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
