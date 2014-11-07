
Partial Class players
    Inherits System.Web.UI.MasterPage


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim todayDate As Date
        todayDate = Today
        lbl_date.Text = todayDate

        Dim todayTime As Date
        todayTime = TimeOfDay
        lbl_time.Text = todayTime

    End Sub
End Class

