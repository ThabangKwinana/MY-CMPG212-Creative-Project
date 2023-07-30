<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindMembers.aspx.cs" Inherits="_34862145_Kwinana_CMPG_212_Assessment_2.FindMembers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 113px;
        }
        .auto-style2 {
            width: 466px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 133px;
        }
        .auto-style5 {
            width: 466px;
            text-align: right;
        }
        .auto-style6 {
            width: 133px;
            height: 109px;
        }
        .auto-style7 {
            height: 109px;
        }
        .auto-style8 {
            width: 466px;
            height: 64px;
        }
        .auto-style9 {
            width: 133px;
            height: 64px;
        }
        .auto-style10 {
            height: 64px;
        }
        .auto-style11 {
            width: 133px;
            height: 53px;
        }
        .auto-style12 {
            height: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Search/Delete Group Members"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" rowspan="6">
                    <asp:GridView ID="gViewM" runat="server" Height="212px" Width="288px">
                    </asp:GridView>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblSearch" runat="server" Text="Search by color:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSearch" runat="server" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Search" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lblSearch0" runat="server" Text="Delete by surname:"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtDelete" runat="server" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" Font-Bold="True" OnClick="btnDelete_Click" Text="Delete" />
&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblDeleted" runat="server" Text="[Double click to delete!]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:HyperLink ID="hypLinkAdd" runat="server" NavigateUrl="~/Insert.aspx">Click here to add a student</asp:HyperLink>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
