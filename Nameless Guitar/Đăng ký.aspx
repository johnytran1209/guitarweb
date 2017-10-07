<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Đăng ký.aspx.cs" Inherits="Đăng_ký" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dang ky</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 248px;
        }
        .auto-style5 {
            height: 26px;
            width: 248px;
        }
        .auto-style6 {
            height: 23px;
            width: 248px;
        }
        .auto-style7 {
            width: 121px;
            text-align: left;
        }
        .auto-style8 {
            height: 26px;
            width: 121px;
            text-align: left;
        }
        .auto-style9 {
            height: 23px;
            width: 121px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">Username:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">E-mail:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="E-mail must be valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Confirm password:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Confirm password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Must match with password" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                        <input id="Reset1" type="reset" value="Reset" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
