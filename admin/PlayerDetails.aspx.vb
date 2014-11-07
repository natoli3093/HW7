﻿
Partial Class admin_PlayerDetails
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim deletedPlayer As String = e.Values("player_name").ToString()

        lbl_deletedPlayer.Text = deletedPlayer & " has been deleted from the ESPN Fantasy database."

        Response.Redirect("./ViewAllPlayers.aspx")

    End Sub

    
    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.AddHeader("REFRESH", "3:URL=./ViewAllPlayers.aspx")
    End Sub

End Class
