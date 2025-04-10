<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Plakjanje.aspx.cs" Inherits="A5.Plakjanje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 86px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <p>Sodrzina na kupuvackata kosnicka</p>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:ListBox ID="kosnicka" runat="server"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    Vkupno: <asp:Label ID="vkupno" runat="server" Text="vkupno"></asp:Label> Denari
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
