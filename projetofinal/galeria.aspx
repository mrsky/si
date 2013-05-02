<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="galeria.aspx.vb" Inherits="galeria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            color: #000000;
        }
        .style3
        {
            height: 57px;
            font-weight: 700;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <strong>Imagem</strong></td>
            <td>
                <asp:FileUpload ID="tt" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="tt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                titulo imagem</td>
            <td class="style3">
                <asp:TextBox ID="txtTituloImagem" runat="server" Width="201px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtTituloImagem"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnEnviaFicheiro" runat="server" Height="30px" Text="Enviar" 
                    Width="129px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="r" runat="server" NavigateUrl="~/exibeImagem.aspx">Ver Imagens</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

