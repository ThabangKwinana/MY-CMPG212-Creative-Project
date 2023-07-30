<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="_34862145_Kwinana_CMPG_212_Assessment_2.Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 111px;
        }
        .auto-style3 {
            width: 169px;
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            width: 169px;
        }
        .auto-style5 {
            width: 428px;
        }
        .auto-style6 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblAddD" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Add Student Details"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblSurname" runat="server" Text="Surname:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtSurname" runat="server" Width="223px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSurname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Home</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmail" runat="server" Width="238px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid e-mail!!!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:RadioButton ID="rdBlue" runat="server" Text="Blue" GroupName="Color" OnCheckedChanged="RadioButton1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdRed" runat="server" Text="Red" GroupName="Color" OnCheckedChanged="RadioButton1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdGreen" runat="server" Text="Green" GroupName="Color" OnCheckedChanged="RadioButton1_CheckedChanged" />
                </td>
                <td rowspan="6">
                    <asp:Button ID="lblAddAndView" runat="server" Font-Bold="True" Text="Add/View" OnClick="lblAddAndView_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="gAddView" runat="server" Height="148px" Width="307px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblEmail0" runat="server" Text="Campus:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCampus" runat="server" Width="238px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCampus" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Calendar ID="myCalendar" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblAdd" runat="server" Text="[Added]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="BackBtn" runat="server" Font-Bold="True" OnClick="BackBtn_Click" Text="Back" />
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</body>
</html>
