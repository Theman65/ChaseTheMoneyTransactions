<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="chasemoney.Payments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-position: center top; background-image: url('pictures/download (2).jpg'); background-repeat: inherit; background-attachment: fixed;">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 147px;
        }
        .auto-style2 {
            width: 357px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <asp:Label ID="Label1" runat="server" style="color: #00FF99; font-size: xx-large" Text="Welcome to the Payment portal:"></asp:Label>
        </div>
        <table style="width: 100%; height: 324px;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" style="color: #000000" Text="Email Address:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" style="color: #000000" Text="Card Number:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCardNO" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" style="color: #000000" Text="Card holder name:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCardName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" style="color: #000000" Text="expiry date"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="586px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" style="color: #000000" Text="CVV number:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="confirm Payment" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Text="Cancel Payment" Width="157px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
