<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xViewAllPlayers.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
    
        <asp:SqlDataSource ID="sql_playerFacts" runat="server" ConnectionString="Data Source=apollo.biz.uiowa.edu;Initial Catalog=msci3300_g4;Persist Security Info=True;User ID=msci3300_g4;Password=pAssw0rd!#" DeleteCommand="DELETE FROM [natoli_HW7] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [natoli_HW7] ([player_name], [player_position], [player_team], [player_totalpoints], [player_avgpoints], [player_totaltouchdowns], [player_totalyards]) VALUES (@player_name, @player_position, @player_team, @player_totalpoints, @player_avgpoints, @player_totaltouchdowns, @player_totalyards)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [natoli_HW7]" UpdateCommand="UPDATE [natoli_HW7] SET [player_name] = @player_name, [player_position] = @player_position, [player_team] = @player_team, [player_totalpoints] = @player_totalpoints, [player_avgpoints] = @player_avgpoints, [player_totaltouchdowns] = @player_totaltouchdowns, [player_totalyards] = @player_totalyards WHERE [playerID] = @playerID">
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
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_playerFacts">
            <Columns>
                <asp:BoundField DataField="player_name" HeaderText="Player Name" SortExpression="player_name" />
                <asp:BoundField DataField="player_team" HeaderText="NFL Team" SortExpression="player_team" />
                <asp:HyperLinkField DataNavigateUrlFields="playerID" DataNavigateUrlFormatString="PlayerDetails.aspx?playerID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
