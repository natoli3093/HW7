<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_playerFacts" runat="server" ConnectionString="Data Source=apollo.biz.uiowa.edu;Initial Catalog=msci3300_g4;Persist Security Info=True;User ID=msci3300_g4;Password=pAssw0rd!#" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [natoli_HW7]"></asp:SqlDataSource>
        <br />

        <%If Not IsPostBack Then%>

        Search for a player by name:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPlayer" runat="server"></asp:TextBox>
        <br />
        <br />

        <% Else%>
        Search for another player by name:&nbsp;
        <asp:TextBox ID="tbAnotherplayer" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_playerFacts">
            <Columns>
                <asp:BoundField DataField="playerID" HeaderText="playerID" InsertVisible="False" ReadOnly="True" SortExpression="playerID" />
                <asp:BoundField DataField="player_name" HeaderText="player_name" SortExpression="player_name" />
                <asp:BoundField DataField="player_position" HeaderText="player_position" SortExpression="player_position" />
                <asp:BoundField DataField="player_team" HeaderText="player_team" SortExpression="player_team" />
                <asp:BoundField DataField="player_totalpoints" HeaderText="player_totalpoints" SortExpression="player_totalpoints" />
                <asp:BoundField DataField="player_avgpoints" HeaderText="player_avgpoints" SortExpression="player_avgpoints" />
                <asp:BoundField DataField="player_totaltouchdowns" HeaderText="player_totaltouchdowns" SortExpression="player_totaltouchdowns" />
                <asp:BoundField DataField="player_totalyards" HeaderText="player_totalyards" SortExpression="player_totalyards" />
            </Columns>
        </asp:GridView>
        <% End If%>
    
    </div>
    </form>
</body>
</html>
