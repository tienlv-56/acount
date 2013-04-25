<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            color: #0066FF;
        }
        .auto-style2 {
            font-size: small;
        }
        .auto-style3 {
            font-weight: bold;
        }
    </style>
</head>
<body style="margin-left: 120px">
    <form id="form1" runat="server">
    <div>
    
        <strong>
        <br />
        <span class="auto-style1">Chào mừng bạn đến với didong.com</span><br class="auto-style1" />
        <br />
        </strong><span class="auto-style2">Dùng tài khoản của bạn từ didong.com để login</span><br />
        <strong>
        <br />
    
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        </strong>
        <br />
        <br />
        <asp:TextBox ID="txtEmail" runat="server" Width="153px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không đúng định dạng" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </strong>
        <br />
        <br />
        <strong>
        <asp:Label ID="lblPass" runat="server" Text="Pass"></asp:Label>
        </strong>
        <br />
        <br />
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
        <asp:Label ID="lblError" runat="server" ForeColor="#FF0066"></asp:Label>
        </strong>
        <br />
        <br />
        <strong>
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" CssClass="auto-style3" Height="27px" Width="55px" />
        </strong>
        <br />
    
    </div>
    </form>
</body>
</html>
