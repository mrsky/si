<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="trataImagem2.aspx.vb" Inherits="trataImagem2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">




</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

Try 
  
Dim ds As New DataSet   
Dim da As SqlClient.SqlDataAdapter   
Dim vetor As Byte()   
Dim dr As DataRow   
Dim strSql As String 

strSql = "Select * from Imagens Where imagemId=" & Request.QueryString("ID") 

Dim connString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=""|DataDirectory|\DataBase.mdf"";Integrated Security=True;User Instance=True" 
da = New SqlClient.SqlDataAdapter(strSql, connString)    
da.Fill(ds)    
dr = ds.Tables(0).Rows(0) 
vetor = CType(dr.Item("imagem"), Byte())
Dim conTipo As String = dr.Item("imagemTipo").ToString()

Response.ContentType = conTipo    
Response.OutputStream.Write(vetor, 0, dr.Item("imagemTamanho"))    
Response.End() 

Catch ex As Exception
End Try 


</asp:Content>

