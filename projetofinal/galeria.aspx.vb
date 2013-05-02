


Partial Class galeria
    Inherits System.Web.UI.Page

    Protected Sub btnEnviaFicheiro_Click(sender As Object, e As System.EventArgs) Handles btnEnviaFicheiro.Click

    Protected Sub btnEnviaFicheiro_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEnviaFicheiro.Click
        Dim tamanho As Integer
        Dim vetor As Byte()
        If FileUpload.PostedFile Is Nothing Then
            lblStatus.Text = "Nenhum ficheiro definido."
            Exit Sub
        Else
            Dim nomeFicheiro As String = FileUpload.PostedFile.FileName
            Dim ext As String = nomeFicheiro.Substring(nomeFicheiro.LastIndexOf("."))
            ext = ext.ToLower

            Dim imgTipo = FileUpload.PostedFile.ContentType
            If ext = ".jpg" Then
            ElseIf ext = ".bmp" Then
            ElseIf ext = ".gif" Then
            ElseIf ext = "jpg" Then
            ElseIf ext = "bmp" Then
            ElseIf ext = "gif" Then
            End If
Else   
            lblStatus.Text = "Somente são suportados ficheiros nos formatos: gif, bmp, ou jpg."
            Exit Sub
        End If
        tamanho = Convert.ToInt32(FileUpload.PostedFile.InputStream.Length)
        ReDim vetor(tamanho)
        FileUpload.PostedFile.InputStream.Read(vetor, 0, tamanho)
If SalvaImagem(txtTituloImagem.Text.Trim, vetor, t amanho, imgTipo) = True Then    
            lblStatus.Text = "Imagem enviada com sucesso..."
        Else : lblStatus.Text = "Ocorreu um erro durante o envio da imagem... Tente novamente..."
        End If
End If 
    End Sub




End Class

Protected Function SalvaImagem(ByVal imgTitulo As String, ByVal img As Byte(), ByVal imgTamanho As Integer, ByVal imgTipo As String) As Boolean
    Try
        Dim cnn As Data.SqlClient.SqlConnection
        Dim cmd As Data.SqlClient.SqlCommand
        Dim param As Data.SqlClient.SqlParameter
        Dim strSQL As String
        strSQL = "Insert Into Imagens(imagem,imagemTitulo,imagenTipo,imagemTamanho) "
Values(@img,@imgTitulo,@imgTipo,@imgTamanho)"
        'defina a string de ligação e cria uma nova ligação 
        Dim connString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=""|DataDirectory|\DataBase.mdf"";Integrated Security=True;User Instance=True"
        cnn = New Data.SqlClient.SqlConnection(connString)
        'define o comando a ser executado 
        cmd = New Data.SqlClient.SqlCommand(strSQL, cnn)

        'recebe os parâmetros 
        param = New Data.SqlClient.SqlParameter("@img", Data.SqlDbType.Image)
        param.Value = img
        cmd.Parameters.Add(param)

        param = New Data.SqlClient.SqlParameter("@imgTitulo", Data.SqlDbType.VarChar)
        param.Value = imgTitulo
        cmd.Parameters.Add(param)

        param = New Data.SqlClient.SqlParameter("@imgTipo", Data.SqlDbType.VarChar)
        param.Value = imgTipo
        cmd.Parameters.Add(param)

        param = New Data.SqlClient.SqlParameter("@imgTamanho", Data.SqlDbType.BigInt)
        param.Value = imgTamanho
        cmd.Parameters.Add(param)
        'abre a ligação 
        cnn.Open()
        'executa a instrução SQL se retornar 
        cmd.ExecuteNonQuery()
        'fecha a ligação 
        cnn.Close()
        Return True
    Catch ex As Exception
        Return False
    End Try
End Function
End Class