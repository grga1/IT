<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="lab1v.Najava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Име<asp:TextBox ID="ime" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ime" ErrorMessage="Внеси име"></asp:RequiredFieldValidator>
          <br />
            Лозинка<asp:TextBox ID="lozinka" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lozinka" ErrorMessage="Внеси лозинка"></asp:RequiredFieldValidator>
           <br />
            е-адреса<asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Внеси е-адреса"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Невалиден формат" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Најавете се" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
