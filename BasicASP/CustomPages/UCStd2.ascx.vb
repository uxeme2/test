
Partial Class CustomPages_UCStd2
    Inherits System.Web.UI.UserControl
    Private Sub BtImgCal_Click(sender As Object, e As ImageClickEventArgs) Handles BtImgCal.Click
        Cal1.Visible = True
        TxtDate.Visible = False
        BtImgCal.Visible = False
    End Sub
    Private Sub Cal1_SelectionChanged(sender As Object, e As EventArgs) Handles Cal1.SelectionChanged
        Cal1.Visible = False
        TxtDate.Visible = True
        BtImgCal.Visible = True
        TxtDate.Text = Cal1.SelectedDate.ToShortDateString()
    End Sub
End Class
