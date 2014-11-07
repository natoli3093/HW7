<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xNewPlayer.aspx.vb" Inherits="PlayerDetails" %>

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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="playerID" DataSourceID="sql_playerData" DefaultMode="Insert">
            <EditItemTemplate>
                playerID:
                <asp:Label ID="playerIDLabel1" runat="server" Text='<%# Eval("playerID") %>' />
                <br />
                player_name:
                <asp:TextBox ID="player_nameTextBox" runat="server" Text='<%# Bind("player_name") %>' />
                <br />
                player_position:
                <asp:TextBox ID="player_positionTextBox" runat="server" Text='<%# Bind("player_position") %>' />
                <br />
                player_team:
                <asp:TextBox ID="player_teamTextBox" runat="server" Text='<%# Bind("player_team") %>' />
                <br />
                player_totalpoints:
                <asp:TextBox ID="player_totalpointsTextBox" runat="server" Text='<%# Bind("player_totalpoints") %>' />
                <br />
                player_avgpoints:
                <asp:TextBox ID="player_avgpointsTextBox" runat="server" Text='<%# Bind("player_avgpoints") %>' />
                <br />
                player_totaltouchdowns:
                <asp:TextBox ID="player_totaltouchdownsTextBox" runat="server" Text='<%# Bind("player_totaltouchdowns") %>' />
                <br />
                player_totalyards:
                <asp:TextBox ID="player_totalyardsTextBox" runat="server" Text='<%# Bind("player_totalyards") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>



                <table>
                    <tr>
                        <td style="text-align:right;">
                            Player Name:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_playerName" runat="server" Text='<%# Bind("player_name") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_playername" runat="server" ErrorMessage="You Must enter a player's name!" ControlToValidate="tb_playerName" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                            
                    <tr>
                        <td style="text-align:right;">
                            Position:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_playerPosition" runat="server" Text='<%# Bind("player_position") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_playerposition" runat="server" ErrorMessage="You Must enter a player's position!" ControlToValidate="tb_playerPosition" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            NFL Team:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_Team" runat="server" Text='<%# Bind("player_team") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_playerteam" runat="server" ErrorMessage="You Must enter a player's NFL Team!" ControlToValidate="tb_Team" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td  style="text-align:right;">
                            Total Fantasy Points:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="tb_totalPoints" runat="server" Text='<%# Bind("player_totalpoints") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td  style="text-align:right;">
                            Average Fantasy Points:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="tb_averagePoints" runat="server" Text='<%# Bind("player_avgpoints") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td  style="text-align:right;">
                            Touchdowns:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="tb_Touchdowns" runat="server" Text='<%# Bind("player_totaltouchdowns") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td  style="text-align:right;">
                            Yards:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_Yards" runat="server" Text='<%# Bind("player_totalyards") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                           <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /> 
                        </td>
                        <td style="text-align:left;">
                            <asp:Button ID="Cancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </table>
               
            </InsertItemTemplate>
           
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
