<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="inseririmagem.aspx.vb" Inherits="Cmd_inseririmagem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="imgGrid" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataKeyNames="imagemID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="imagemID" HeaderText="imagemID" 
                InsertVisible="False" ReadOnly="True" SortExpression="imagemID" />
            <asp:BoundField DataField="imagemTitulo" HeaderText="imagemTitulo" 
                SortExpression="imagemTitulo" />
            <asp:BoundField DataField="imagemTipo" HeaderText="imagemTipo" 
                SortExpression="imagemTipo" />
            <asp:BoundField DataField="imagemTamanho" HeaderText="imagemTamanho" 
                SortExpression="imagemTamanho" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\ImagensBD.mdf;Integrated Security=True;User Instance=True" 
        ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT [imagem], [imagemID], [imagemTitulo], [imagemTipo], [imagemTamanho] FROM [Imagens]">
    </asp:SqlDataSource>
</asp:Content>

