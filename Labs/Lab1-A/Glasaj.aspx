<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="LAB1.Glasaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="m-4">
                    <img src="https://www.finki.ukim.mk/sites/default/files/styles/large/public/default_images/finki_52_1_2_1_62_0.png?itok=miZDgQ_6" alt="ФИНКИ"/> <br />
                    <asp:Label ID="lblProfesor" runat="server" Text=""></asp:Label> <br />
                    <asp:ListBox ID="lbPredmeti" runat="server" OnSelectedIndexChanged="lbPredmeti_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
                    <asp:ListBox ID="lbKrediti" runat="server"></asp:ListBox> 
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Гласајте" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
        <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lbKrediti"  ErrorMessage="Избери број на кредити"></asp:RequiredFieldValidator>
                    </p>
        <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lbPredmeti" ErrorMessage="Избери предмет"></asp:RequiredFieldValidator>
                    </p>
    </form>
</body>
</html>
