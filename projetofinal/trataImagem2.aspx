<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="trataImagem2.aspx.vb" Inherits="trataImagem2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">




</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="imagemID" DataSourceID="SqlDataSource1" Height="100px" 
        Width="100px" AllowPaging="True" AllowSorting="True">
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
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\ImagensBD.mdf;Integrated Security=True;User Instance=True" 
    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Imagens]">
</asp:SqlDataSource>
<asp:AccessDataSource ID="AccessDataSource1" runat="server">
</asp:AccessDataSource>



</asp:Content>

