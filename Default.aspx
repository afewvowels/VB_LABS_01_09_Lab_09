<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Sale Calculator</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td colspan="3"><h3>R 'n R Book Sales</h3></td>
            </tr>
            <tr>
                <td class="col1 heading">Title</td>
                <td class="col2">
                    <asp:TextBox class='textbox' ID="TitleTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="col3">
                    <asp:RequiredFieldValidator ID="rfvTitleTextBox" runat="server" ErrorMessage="You must enter a title" ControlToValidate="TitleTextBox" ForeColor="Red">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="col1 heading">Quantity</td>
                <td class="col2">
                    <asp:TextBox class='textbox' ID="QuantityTextBox" runat="server"></asp:TextBox>

                </td>
                <td class="col3">
                    <asp:RequiredFieldValidator ID="rfvQuantityTextBox" runat="server" ErrorMessage="You must enter a quantity" ForeColor="Red" ControlToValidate="QuantityTextBox">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvQuantityTextBox" runat="server" ErrorMessage="You must enter a quantity between 1-255" ControlToValidate="QuantityTextBox" ForeColor="Red" MaximumValue="255" MinimumValue="1" Type="Integer">1-255</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="col1 heading">Price</td>
                <td class="col2">
                    <asp:TextBox class='textbox' ID="PriceTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="col3">
                    <asp:RequiredFieldValidator ID="rfvPriceTextBox" runat="server" ErrorMessage="You must enter a price" ControlToValidate="PriceTextBox" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPriceTextBox" runat="server" ErrorMessage="RangeValidator" ControlToValidate="PriceTextBox" ForeColor="Red" MaximumValue="9999" MinimumValue="0" Type="Currency">$0-$9999</asp:RangeValidator></td>
            </tr>
            <tr>
                <td class="col1 heading">Extended Price</td>
                <td class="col2">
                    <asp:TextBox class='textbox' ID="ExtendedPriceTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="col3">&nbsp;</td>
            </tr>
            <tr>
                <td class="col1 heading">15% Discount</td>
                <td class="col2">
                    <asp:TextBox class='textbox' ID="DiscountAmountTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="col3">&nbsp;</td>
            </tr>
            <tr>
                <td class="col1 heading">Discounted Price</td>
                <td class="col2">
                    <asp:TextBox class='textbox' ID="DiscountedPriceTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="col3">
                    <asp:HiddenField ID="hfDiscountAccumulator" runat="server" Value="0" />
                </td>
            </tr>
            <tr>
                <td class="col1"></td>
                <td class="col2 button_container">
                    <asp:Button class='button' ID="SubmitButton" runat="server" Text="Submit" />
                </td>
                <td class="col3">
                    <asp:Label ID="DiscountLabel" runat="server" Text=""></asp:Label>

                </td>
            </tr>
            <tr>
                <td class="col1"></td>
                <td class="col2 button_container">
                    <asp:Button class='button' ID="ClearButton" runat="server" Text="Clear" CausesValidation="False" />
                </td>
                <td class="col3">
                    <asp:Button class='button' ID="DiscountButton" runat="server" Text="Discount" />
                </td>
            </tr>
            <tr>
                <td class="col1"></td>
                <td class="col2 error_container">
                    <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
                </td>
                <td class="col3">&nbsp;</td>
            </tr>
            <tr>
                <td class="col1"></td>
                <td class="col2 error_container">
                    <asp:ValidationSummary ID="ValidationSummary" runat="server" DisplayMode="List" />
                </td>
                <td class="col3 contact_us_container"><a href="ContactUs.aspx">Contact Us</a></td>
            </tr>
        </table>
    </form>
</body>
</html>
