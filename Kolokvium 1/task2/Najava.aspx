<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="Ispit.Najava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                Ime<asp:TextBox ID="ime" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Vnesete ime" ControlToValidate="ime" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Imeto mora da sodrzi samo bukvi" ControlToValidate="ime" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
            </div>
            <div>
                Lozinka<asp:TextBox ID="lozinka" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Vnesi lozinka" ControlToValidate="lozinka" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Lozinkata mora da sodrzi samo bukvi i broevi" ControlToValidate="lozinka" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]+$" ></asp:RegularExpressionValidator>
            </div>
            <div>
                e-adresa<asp:TextBox ID="email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Vnesi email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Ne e vo red formatot na emailot" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <asp:Button ID="najavi" runat="server" Text="Najavete se" OnClick="najavi_Click" />
        </div>
    </form>
</body>
</html>
