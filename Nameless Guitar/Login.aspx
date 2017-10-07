<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: left;
            height: 19px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Login Page</strong><table class="auto-style2">
                <tr class="auto-style3">
                    <td class="auto-style4">Username:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr class="auto-style3">
                    <td class="auto-style5">Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr class="auto-style3">
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="100px" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr class="auto-style3">
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
