<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="chasemoney.Payments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Portal</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        body {
            background-image: url('pictures/download (2).jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
        }
        .payment-card {
            max-width: 500px;
            margin: 50px auto;
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
        }
        .payment-title {
            text-align: center;
            color: #198754;
            margin-bottom: 25px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="payment-card">
            <h2 class="payment-title">Welcome to the Payment Portal</h2>

            <div class="mb-3">
                <asp:Label ID="Label2" runat="server" AssociatedControlID="txtEmail" CssClass="form-label" Text="Email Address:"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Label ID="Label3" runat="server" AssociatedControlID="txtCardNO" CssClass="form-label" Text="Card Number:"></asp:Label>
                <asp:TextBox ID="txtCardNO" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Label ID="Label4" runat="server" AssociatedControlID="txtCardName" CssClass="form-label" Text="Card Holder Name:"></asp:Label>
                <asp:TextBox ID="txtCardName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Label ID="Label5" runat="server" CssClass="form-label" Text="Expiry Date:"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#dee2e6" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Width="100%" CssClass="rounded">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#198754" ForeColor="White" />
                    <TitleStyle BackColor="#f8f9fa" BorderColor="#dee2e6" BorderWidth="1px" Font-Bold="True" Font-Size="12pt" ForeColor="#198754" />
                    <TodayDayStyle BackColor="#e9ecef" />
                </asp:Calendar>
            </div>

            <div class="mb-4">

                <asp:Label ID="Label6" runat="server" AssociatedControlID="Txtcvv" CssClass="form-label" Text="CVV Number:"></asp:Label>
                <asp:TextBox ID="Txtcvv" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="d-flex justify-content-between">
                <asp:Button ID="btncon" runat="server" Text="Confirm Payment" CssClass="btn btn-success" BackColor="#33CC33" OnClick="btncon_Click" />
                <asp:Button ID="btncan" runat="server" Text="Cancel Payment" CssClass="btn btn-outline-secondary" BackColor="#CC0000" OnClick="btncan_Click" />
            </div>
        </div>
    </form>
</body>
</html>