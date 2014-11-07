<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .center_img {
        height: 702px;
        width: 878px;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <h3>Welcome to the Admin Page!!</h3>
    <ul>
        <li><asp:HyperLink ID="link_Player" runat="server" NavigateUrl="~/admin/ViewAllPlayers.aspx">Edit a Player</asp:HyperLink></li>
        <li><asp:HyperLink ID="link_newPlayer" runat="server" NavigateUrl="~/admin/NewPlayer.aspx">Add a New Player</asp:HyperLink></li>
        <li><asp:HyperLink ID="link_manageUsers" runat="server" NavigateUrl="~/site_mgr/UserMgmt.aspx">Manage Users</asp:HyperLink></li>
        <li><asp:HyperLink ID="link_manageRoles" runat="server" NavigateUrl="~/site_mgr/RoleMgmt.aspx">Manage Roles</asp:HyperLink></li>
    </ul>
    <img class="center_img" src="../images/NFL.jpg" alt="NFL teams logo"  />

</asp:Content>

