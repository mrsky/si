Imports System.Data

Partial Class trataImagem2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try

            Dim ds As New DataSet
            Dim da As SqlClient.SqlDataAdapter
            Dim vetor As Byte()
            Dim dr As DataRow
            Dim strSql As String

            strSql = "Select * from Imagens Where imagemId=" & Request.QueryString("ID")

            Dim connString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\ImagensBD.mdf;Integrated Security=True;User Instance=True"

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

    End Sub

End Class
