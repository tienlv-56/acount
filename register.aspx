<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: small;
        }
        .auto-style2 {
            font-size: large;
            color: #0066FF;
        }
        .auto-style3 {
            margin-left: 80px;
        }
        .auto-style4 {
            font-weight: bold;
        }
        .auto-style5 {
            font-size: xx-small;
        }
        .auto-style6 {
            font-size: small;
            color: #FF0066;
        }
        .auto-style7 {
            color: #FF0066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style3">
    
        <strong><span class="auto-style2">Chào mừng bạn sắp là thành viên của didong.com</span></strong><br />
        <br />
        <span class="auto-style1">Hãy điền vào thông tin phía dưới để hoàn tất đăng kí</span><br />
        <br />
        <br />
        <strong>
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtEmail" runat="server" Width="153px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email không đúng định dạng" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="153px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="cvdPassword" runat="server" ControlToCompare="txtRePassword" ControlToValidate="txtPassword" ErrorMessage="Password không khớp" ForeColor="#FF0066" SetFocusOnError="True"></asp:CompareValidator>
        &nbsp;<span class="auto-style5"> <span class="auto-style7">&nbsp;</span></span></strong><span class="auto-style6"><strong><asp:Label ID="lblError0" runat="server" ForeColor="#FF0066"></asp:Label>
        </strong></span>
        <br class="auto-style5" />
        <strong>
        <br />
        <asp:Label ID="lblRePassword" runat="server" Text="Re - Password"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password" Width="153px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblError" runat="server" ForeColor="#FF0066"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnRegister" runat="server" CssClass="auto-style4" OnClick="btnRegister_Click" Text="Register" />
        <br />
        </strong>
    
    </div>
    </form>
</body>
</html>
