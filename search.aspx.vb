
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tbPlayer_TextChanged(sender As Object, e As EventArgs) Handles tbPlayer.TextChanged
        Dim searchWord As String
        searchWord = "Select * From natoli_HW7 where (player_name Like '%" + tbPlayer.Text.ToString() + "%')"
        sql_playerFacts.SelectCommand = searchWord

    End Sub


    Protected Sub tbAnotherplayer_TextChanged(sender As Object, e As EventArgs) Handles tbAnotherplayer.TextChanged
        Dim searchWord As String
        searchWord = "Select * From natoli_HW7 where (player_name Like '%" + tbAnotherplayer.Text.ToString() + "%')"
        sql_playerFacts.SelectCommand = searchWord

    End Sub

End Class
