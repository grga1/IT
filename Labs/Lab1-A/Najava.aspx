<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="LAB1.Najava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container text-center">
            <div class="row">
                <div class="m-4"  >
                    Име<asp:TextBox ID="Name" runat="server" ControlToValidate="Name"  style="margin-left: 43px" Width="174px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"  ErrorMessage="Внеси име" ControlToValidate="Name"></asp:RequiredFieldValidator>
                </div>
                <div class="m-4" >
                    Лозинка<asp:TextBox ID="Password" runat="server" Width="179px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ForeColor="Red" ControlToValidate="Password"  ErrorMessage="Внеси пасворд"></asp:RequiredFieldValidator>
                </div>
                <div class="m-4" >
                    е-адреса<asp:TextBox ID="Mail" runat="server" Width="177px" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegexValidatorEmail"  runat="server" ControlToValidate="Mail" ErrorMessage="Невалиден е-маил" ForeColor="Red" ValidationExpression="^[^@\s]+@[^@\s]+\.(com)$"> </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Mail" runat="server" ErrorMessage="Внеси е-маил" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="m-4">
                    <asp:Button ID="Btn" runat="server"  Text="Најавете се" OnClick="Btn_Click" style="margin-left: 84px" Width="173px" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
