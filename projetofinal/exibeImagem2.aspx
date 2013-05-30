<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="exibeImagem2.aspx.vb" Inherits="exibeImagem2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="imagemID" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="imagemID" HeaderText="imagemID" 
            InsertVisible="False" ReadOnly="True" SortExpression="imagemID" 
            Visible="False" />
        <asp:BoundField DataField="imagemTitulo" HeaderText="imagemTitulo" 
            SortExpression="imagemTitulo" />
        <asp:BoundField DataField="imagemTipo" HeaderText="imagemTipo" 
            SortExpression="imagemTipo" Visible="False" />
        <asp:BoundField DataField="imagemTamanho" HeaderText="imagemTamanho" 
            SortExpression="imagemTamanho" Visible="False" />
        <asp:ImageField DataImageUrlField="imagemID" 
            DataImageUrlFormatString="~/trataImagem2.aspx?id={0}" ReadOnly="True">
            <ControlStyle Height="200px" Width="400px" />
            <HeaderStyle Height="100px" Width="100px" />
        </asp:ImageField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\ImagensBD.mdf;Integrated Security=True;User Instance=True" 
    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Imagens]">
</asp:SqlDataSource>
</asp:Content>

