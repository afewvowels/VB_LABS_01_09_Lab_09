' Author: Keith Smith
' Date: 19 November 2018
' Project: Lab #9
' Description: Simple book sale calculator

Option Explicit On
Option Strict On
Partial Class _Default
    Inherits System.Web.UI.Page

    Dim DiscountDecimal As Decimal

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack Then
            ' If they clicked the button
            DiscountDecimal = Convert.ToDecimal(hfDiscountAccumulator.Value)
        Else
            ' The first time the page loads
        End If
    End Sub

    Protected Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
        Dim TheBookSale As BookSale

        Try
            TheBookSale = New BookSale(TitleTextBox.Text,
                                       Convert.ToInt32(QuantityTextBox.Text),
                                       Convert.ToDecimal(PriceTextBox.Text))

            With TheBookSale
                ExtendedPriceTextBox.Text = .ExtendedPrice.ToString("C")
                DiscountAmountTextBox.Text = .Discount.ToString("C")
                DiscountedPriceTextBox.Text = .DiscountedPrice.ToString("C")
            End With

            DiscountDecimal = DiscountDecimal + TheBookSale.Discount

            hfDiscountAccumulator.Value = DiscountDecimal.ToString

            DisplayDiscount()
        Catch ex As Exception
            ErrorLabel.Text = "Bad data provided"
        End Try

    End Sub

    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        ' Clear the form
        TitleTextBox.Text = String.Empty
        QuantityTextBox.Text = String.Empty
        PriceTextBox.Text = String.Empty
        ExtendedPriceTextBox.Text = String.Empty
        DiscountAmountTextBox.Text = String.Empty
        DiscountedPriceTextBox.Text = String.Empty
    End Sub

    Protected Sub DiscountButton_Click(sender As Object, e As EventArgs) Handles DiscountButton.Click
        DisplayDiscount()
    End Sub

    Private Sub DisplayDiscount()
        DiscountLabel.Text = DiscountDecimal.ToString("C")
    End Sub

End Class
