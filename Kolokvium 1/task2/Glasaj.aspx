<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="Ispit.Glasaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="data:image/png;base64,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" alt="Медиа | ФИНКИ"/>
            <br />
            <p>Ocenka</p>
            <asp:TextBox ID="ocenka" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mora da vneses ocenka" ForeColor="Red" ControlToValidate="ocenka"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Ocenkata mora da bide pomegu 5 i 10" MaximumValue="10" MinimumValue="5" Type="Integer" ControlToValidate="ocenka"></asp:RangeValidator>
            <br />
            <p>Profesori</p>
            <asp:ListBox ID="lsprofesori" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lsprofesori_SelectedIndexChanged"></asp:ListBox>
            <p>Predmeti</p>
            <asp:ListBox ID="predmeti" runat="server" AutoPostBack="True" OnSelectedIndexChanged="predmeti_SelectedIndexChanged1"></asp:ListBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Izberi predmet" ControlToValidate="predmeti" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Button ID="glasaj" runat="server" Text="Glasajte" OnClick="glasaj_Click" />
            <asp:Label ID="result" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
