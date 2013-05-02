using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
            try
            {
                FileUpload1.SaveAs("C:\\MeusUploads\\" + FileUpload1.FileName);
                lblMensagem.Text = "Nome do arquivo: " +
                FileUpload1.PostedFile.FileName + "<br>" +
                FileUpload1.PostedFile.ContentLength + " kb<br>" +
                "Tipo de arquivo: " +
                FileUpload1.PostedFile.ContentType;
            }
            catch (Exception ex)
            {
                lblMensagem.Text = "ERRO: " + ex.Message.ToString();
            }
        else
        {
            lblMensagem.Text = "Selecione o arquivo.";
        }
    }
}


   