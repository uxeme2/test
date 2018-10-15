
Partial Class CustomPages_StandardControls
    Inherits System.Web.UI.Page
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Button1.Text <> "Change Photo" Then
            If FileUpload1.HasFile Then
                FileUpload1.SaveAs(Server.MapPath("~//UserImages/" + FileUpload1.FileName))
                Image1.ImageUrl = "~//UserImages/" + FileUpload1.FileName
                FileUpload1.Visible = False
                Button1.Text = "Change Photo"
            End If
        Else
            FileUpload1.Visible = True
            Button1.Text = "Upload"
        End If
    End Sub
End Class
