Sub Stocks2():

    Dim tckrTypeCount As Integer
    Dim stockVol As Long

    'Dim i As Intger

    'Dim yearsOpeningPrice As Double
    'Dim yearsClosingPrice As Double
    'Dim yearsChange As Long
    'Dim percentChange As Double



    'Initialize vars'
    tckrTypeCount = 0
    stockVol = 0

    'For every row starting with the the second row
    For i = 2 To 760192

        'If current row's ticker symbol is the same as previous row's ticker symbol
        If Cells(i, 1).Value = Cells(i - 1, 1).Value Then

            'Keep a running total for  the sum of each daily stock volume
            stockVol = stockVol + Cells(i, 7).Value
            
    
        Else


            'Keep Count for every new stock add 1'
            tckrTypeCount = tckrTypeCount + 1

            'Set new ticker symbol to ticker column'
            Cells(1 + tckrTypeCount, 9).Value = Cells(i, 1).Value

            'dump stock volume into Total Stock Volume cell
             Cells(1 + tckrTypeCount, 12).Value = stockVol

            'reset stock volume counter before adding stock's volume again
            'stockVol = 0
            'stockVol = stockVol + Cells(i, 7).Value

            'collect the opening price from, current stock's initial row
            'yearOpeningPrice = Cells(i, 3).Value
                
        'End If

        'If the stock in the next row differs from the stock in current row (has different ticker symbol)
        'If (Cells(i + 1, 1).Value <> Cells(i, 1).Value) Then

            'collect the closing price from current stock's last row
            'yearsClosingPrice = Cells(i, 6).Value

        End If

            'yearsChange = long(yearsClosingPrice - yearsOpeningPrice)
            'percentChange = double((((yearsClosingPrice*100)/(yearsOpeningPrice)) - 100)) & "%"
            
    Next i
                
End Sub