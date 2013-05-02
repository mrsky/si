<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="Upload" Width="121px" 
    onclick="Button1_Click" />
<br />
<br />
<br />
<asp:Label ID="lblMensagem" runat="server" Text="lblMensagem"></asp:Label>
</asp:Content>

