Imports System.Data.sqlclient
Imports System.data
Partial Class exibeImagem
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim ds As New DataSet
        Dim da As SqlDataAdapter
        Dim strSQL As String



        strSQL = "Select imagemID,imagemTitulo from Imagens"

        Dim connString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\ImagensBD.mdf;Integrated Security=True;User Instance=True"

        da = New SqlClient.SqlDataAdapter(strSQL, connString)

        da.Fill(ds)



        ds.Tables(0).Columns.Add("imagem")


        For Each tempRow As DataRow In ds.Tables(0).Rows

            tempRow.Item("imagem") = ("trataImagem.aspx?id=" & tempRow.Item("imagemID"))

        Next



        imgGrid.DataSource = ds

        imgGrid.DataBind()


    End Sub
End Class
