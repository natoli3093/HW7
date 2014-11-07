<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="PlayerDetails.aspx.vb" Inherits="PlayerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:SqlDataSource ID="sql_playerFacts" runat="server" ConnectionString="Data Source=apollo.biz.uiowa.edu;Initial Catalog=msci3300_g4;Persist Security Info=True;User ID=msci3300_g4;Password=pAssw0rd!#" 
            SelectCommand="SELECT * FROM [natoli_HW7] WHERE ([playerID] = @playerID)" >
            <SelectParameters>
                <asp:QueryStringParameter Name="playerID" QueryStringField="playerID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="playerID" DataSourceID="sql_playerFacts" Height="50px" Width="365px">
            <Fields>
                <asp:BoundField DataField="playerID" HeaderText="Player ID" InsertVisible="False" ReadOnly="True" SortExpression="playerID" />
                <asp:BoundField DataField="player_name" HeaderText="Player Name" SortExpression="player_name" />
                <asp:BoundField DataField="player_position" HeaderText="Position" SortExpression="player_position" />
                <asp:BoundField DataField="player_team" HeaderText="NFL Team" SortExpression="player_team" />
                <asp:BoundField DataField="player_totalpoints" HeaderText="Total Fantasy Points" SortExpression="player_totalpoints" />
                <asp:BoundField DataField="player_avgpoints" HeaderText="Average Fantasy Points" SortExpression="player_avgpoints" />
                <asp:BoundField DataField="player_totaltouchdowns" HeaderText="Touchdowns" SortExpression="player_totaltouchdowns" />
                <asp:BoundField DataField="player_totalyards" HeaderText="Yards" SortExpression="player_totalyards" />
            </Fields>
        </asp:DetailsView>
    
    </div>
</asp:Content>

