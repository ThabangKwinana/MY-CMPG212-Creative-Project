<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_34862145_Kwinana_CMPG_212_Assessment_2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 92px;
        }
        .auto-style2 {
            width: 153px;
            height: 88px;
        }
        .auto-style3 {
            width: 153px;
            height: 48px;
            text-align: center;
        }
        .auto-style5 {
            width: 153px;
            height: 35px;
            text-align: center;
        }
        .auto-style6 {
            height: 35px;
        }
        .auto-style8 {
            text-align: left;
            width: 544px;
            height: 62px;
        }
        .auto-style9 {
            width: 544px;
        }
        .auto-style10 {
            width: 75px;
            text-align: left;
        }
        .auto-style11 {
            width: 75px;
            text-align: left;
            height: 62px;
        }
        .auto-style12 {
            height: 62px;
        }
        .auto-style14 {
            height: 88px;
        }
        .auto-style15 {
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style14">
                    <asp:Label ID="lblLogin" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Log in"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Italic="True" Text="Indicates That No Empty Spaces Are Allowed."></asp:Label>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Surname:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtLogSurname" runat="server" Width="202px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLogSurname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtLogEmail" runat="server" Width="214px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLogEmail" ErrorMessage="Invalid Email!!!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style6"></td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="30px" OnClick="Button1_Click" Text="Log in" Width="160px" />
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
