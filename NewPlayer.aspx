﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewPlayer.aspx.vb" Inherits="PlayerDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_playerData" runat="server" ConnectionString="Data Source=apollo.biz.uiowa.edu;Initial Catalog=msci3300_g4;Persist Security Info=True;User ID=msci3300_g4;Password=pAssw0rd!#" DeleteCommand="DELETE FROM [natoli_HW7] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [natoli_HW7] ([player_name], [player_position], [player_team], [player_totalpoints], [player_avgpoints], [player_totaltouchdowns], [player_totalyards]) VALUES (@player_name, @player_position, @player_team, @player_totalpoints, @player_avgpoints, @player_totaltouchdowns, @player_totalyards)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [natoli_HW7]" UpdateCommand="UPDATE [natoli_HW7] SET [player_name] = @player_name, [player_position] = @player_position, [player_team] = @player_team, [player_totalpoints] = @player_totalpoints, [player_avgpoints] = @player_avgpoints, [player_totaltouchdowns] = @player_totaltouchdowns, [player_totalyards] = @player_totalyards WHERE [playerID] = @playerID">
            <DeleteParameters>
                <asp:Parameter Name="playerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="player_name" Type="String" />
                <asp:Parameter Name="player_position" Type="String" />
                <asp:Parameter Name="player_team" Type="String" />
                <asp:Parameter Name="player_totalpoints" Type="Single" />
                <asp:Parameter Name="player_avgpoints" Type="Single" />
                <asp:Parameter Name="player_totaltouchdowns" Type="Single" />
                <asp:Parameter Name="player_totalyards" Type="Single" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="player_name" Type="String" />
                <asp:Parameter Name="player_position" Type="String" />
                <asp:Parameter Name="player_team" Type="String" />
                <asp:Parameter Name="player_totalpoints" Type="Single" />
                <asp:Parameter Name="player_avgpoints" Type="Single" />
                <asp:Parameter Name="player_totaltouchdowns" Type="Single" />
                <asp:Parameter Name="player_totalyards" Type="Single" />
                <asp:Parameter Name="playerID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="playerID" DataSourceID="sql_playerData" Height="50px" Width="397px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="player_name" HeaderText="Player Name" SortExpression="player_name" />
                <asp:BoundField DataField="player_position" HeaderText="Position" SortExpression="player_position" />
                <asp:BoundField DataField="player_team" HeaderText="NFL Team" SortExpression="player_team" />
                <asp:BoundField DataField="player_totalpoints" HeaderText="Total Fantasy Points" SortExpression="player_totalpoints" />
                <asp:BoundField DataField="player_avgpoints" HeaderText="Average Fantasy Points" SortExpression="player_avgpoints" />
                <asp:BoundField DataField="player_totaltouchdowns" HeaderText="Touchdowns" SortExpression="player_totaltouchdowns" />
                <asp:BoundField DataField="player_totalyards" HeaderText="Yards" SortExpression="player_totalyards" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
