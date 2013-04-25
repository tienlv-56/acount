<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            color: #0066FF;
            font-size: large;
        }
        .auto-style1 {
            font-size: small;
        }
        .auto-style3 {
            font-weight: bold;
        }
        .auto-style4 {
            margin-left: 80px;
        }
        .auto-style5 {
            font-size: xx-small;
        }
        .auto-style7 {
            color: #FF0066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style4">
    
        <span class="auto-style2"><strong>Bạn muốn đổi mật khẩu acount của bạn</strong></span><br />
        <br />
        <span class="auto-style1">Hãy điền vào thông tin phía dưới để thay đổi pasword</span><br />
        <br />
        <strong>
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <br />
        <br />
        </strong>
        <asp:TextBox ID="txtEmail" runat="server" Width="159px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email không đúng định dạng" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </strong>
    
        <br />
        <br />
        <strong>
        <asp:Label ID="lblOldPassword" runat="server" Text=" Old Password"></asp:Label>
        </strong>
        <br />
        <br />
        <asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password" Width="159px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style7"><strong>Nhập mật khẩu cũ</strong></span><br />
        <br />
        <strong>
        <asp:Label ID="lblNewPassword" runat="server" Text="New Password"></asp:Label>
        <br />
        </strong>
        <br />
        <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" Width="159px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
        <asp:CompareValidator ID="cvdNewPassword" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtReNewPassword" ErrorMessage="Password không khớp" ForeColor="#FF0066" SetFocusOnError="True"></asp:CompareValidator>
        <span class="auto-style5">&nbsp;<span class="auto-style7">&nbsp;
        <asp:Label ID="lblError0" runat="server" ForeColor="#FF0066" CssClass="auto-style1"></asp:Label>
        </span></span>
        </strong>
    
        <br />
        <br />
        <strong>
        <asp:Label ID="lbReNewPassword" runat="server" Text="Re - New Password"></asp:Label>
        <br />
        </strong>
        <br />
        <asp:TextBox ID="txtReNewPassword" runat="server" TextMode="Password" Width="159px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
        <asp:Label ID="lblError" runat="server" ForeColor="#FF0066"></asp:Label>
        </strong>
        <br />
        <br />
        <strong>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="Change Password" Width="126px" />
        </strong>
    
    </div>
    </form>
</body>
</html>
