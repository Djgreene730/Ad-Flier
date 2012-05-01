Imports System.Windows
Imports System.Windows.Controls
Imports System.Windows.Media
Imports System.IO.Ports
Imports System.Text

Class MainWindow

    Private Sub initializeSerial()
        Dim buffer As New StringBuilder
        Using comPort = My.Computer.Ports.OpenSerialPort(DirectCast(userInput_COMPORT.SelectedItem, ComboBoxItem).Content, Integer.Parse(userInput_BAUDRATE.Text), Parity.None)
            Do
                Dim line = comPort.ReadLine()
                If line Is Nothing Then
                    Exit Do
                Else
                    IncomingDataBox.AppendText(line)
                End If
            Loop
        End Using

    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles Button2.Click
        ' Clear current ports...
        userInput_COMPORT.Items.Clear()

        ' Get all ports available...
        For Each item As String In My.Computer.Ports.SerialPortNames
            Dim itemPort As New ComboBoxItem
            itemPort.Content = item
            userInput_COMPORT.Items.Add(itemPort)
        Next
    End Sub

    Private Sub userInput_COMPORT_ContextMenuOpening(ByVal sender As System.Object, ByVal e As System.Windows.Controls.ContextMenuEventArgs) Handles userInput_COMPORT.ContextMenuOpening
        ' Clear current ports...
        userInput_COMPORT.Items.Clear()

        ' Get all ports available...
        For Each item As String In My.Computer.Ports.SerialPortNames
            Dim itemPort As New ComboBoxItem
            itemPort.Content = item
            userInput_COMPORT.Items.Add(itemPort)
        Next
    End Sub
End Class
