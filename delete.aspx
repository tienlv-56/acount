<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
        .auto-style2 {
            font-size: large;
            color: #0066FF;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            margin-left: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style4">
    
        <strong><span class="auto-style2">
        <br />
        <br />
        Bạn muốn hủy thành viên của mình trên didong.com</span></strong><br />
        <br />
        <span class="auto-style3">Điền thông tin vào để xóa acount của bạn</span><br />
        <br />
        <strong>
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        </strong>
        <br />
        <br />
        <asp:TextBox ID="txtEmail" runat="server" Width="164px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email không đúng định dạng" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </strong>
    
        <br />
        <br />
        <strong>
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        </strong>
        <br />
        <br />
        <asp:TextBox ID="txtPassword" runat="server" Width="164px" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
        <asp:Label ID="lblError" runat="server" ForeColor="#FF0066"></asp:Label>
        </strong>
        <br />
        <br />
        <strong>
        <asp:Button ID="btnDelete" runat="server" CssClass="auto-style1" OnClick="btnDelete_Click" Text="Delete" />
        </strong>
        <br />
    
    </div>
    </form>
</body>
</html>
