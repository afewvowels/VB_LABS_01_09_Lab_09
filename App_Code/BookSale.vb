'Class Name:		BookSale
'Programmer:		Your Name
'Date:				Today's Date
'Description:		Handle book sale information.
'Project:			Lab 9

Public Class BookSale
    Private Const DISCOUNT_RATE_Decimal As Decimal = 0.15D

    Private TitleString As String
    Private QuantityInteger As Integer
    Private PriceDecimal, ExtendedPriceDecimal As Decimal

    Public Property Discount As Decimal
    Public Property DiscountedPrice As Decimal

    Public Sub New(ByVal TitleIn As String, ByVal QuantityIn As Integer,
      ByVal PriceIn As Decimal)
        ' Assign the property Values.

        Title = TitleIn
        Quantity = QuantityIn
        Price = PriceIn

        ' determine price
        CalculateExtendedPrice()

        ' determine discount
        Discount = ExtendedPrice * DISCOUNT_RATE_Decimal

        ' determine discounted price
        DiscountedPrice = ExtendedPrice - Discount
    End Sub

    Property Title() As String
        Get
            Return TitleString
        End Get
        Set(ByVal Value As String)
            TitleString = Value
        End Set
    End Property

    Property Quantity() As Integer
        Get
            Return QuantityInteger
        End Get
        Set(ByVal Value As Integer)
            If Value >= 0 Then
                QuantityInteger = Value
            End If
        End Set
    End Property

    Property Price() As Decimal
        Get
            Return PriceDecimal
        End Get
        Set(ByVal Value As Decimal)
            If Value >= 0 Then
                PriceDecimal = Value
            End If
        End Set
    End Property

    ReadOnly Property ExtendedPrice() As Decimal
        Get
            Return ExtendedPriceDecimal
        End Get
    End Property



    Protected Sub CalculateExtendedPrice()
        ' Calculate the extended price.

        ExtendedPriceDecimal = Quantity * Price
    End Sub




End Class
