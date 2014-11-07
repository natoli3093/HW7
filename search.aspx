<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
        <asp:GridView ID="GridView1" CssClass="gridview" runat="server" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_playerFacts" Width="871px">
            <Columns>
                <asp:BoundField DataField="player_name" HeaderText="Player Name" SortExpression="player_name" />
                <asp:BoundField DataField="player_position" HeaderText="Position" SortExpression="player_position" />
                <asp:BoundField DataField="player_team" HeaderText="NFL Team" SortExpression="player_team" />
                <asp:BoundField DataField="player_totalpoints" HeaderText="Total Fantasy Points" SortExpression="player_totalpoints" />
                <asp:BoundField DataField="player_avgpoints" HeaderText="Average Fantasy Points" SortExpression="player_avgpoints" />
                <asp:BoundField DataField="player_totaltouchdowns" HeaderText="Touchdowns" SortExpression="player_totaltouchdowns" />
                <asp:BoundField DataField="player_totalyards" HeaderText="Yards" SortExpression="player_totalyards" />
            </Columns>
        </asp:GridView>
        <% End If%>
    
    </div>
</asp:Content>

