using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SegundoParcial_Badra
{
    public partial class Archivos : System.Web.UI.Page
    {
        string rutaArchivo = "";

        protected void Page_Load(object sender, EventArgs e)
        {
         
                if (this.Session["nombreUsuario"] != null)
                {
                rutaArchivo = $"{Server.MapPath(".")}\\{this.Session["nombreUsuario"]}";
                CargarGrilla();
                }
          
        }

        protected void GridArchivos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Descargar")
            {
                GridViewRow row = GridArchivos.Rows[Convert.ToInt32(e.CommandArgument)];
                string ruta = row.Cells[2].Text;

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(rutaArchivo));
                Response.TransmitFile(ruta);
                Response.End();
            }
        }
        private void CargarARchivo()
        {

            try
            {
                if (!Directory.Exists(rutaArchivo))
                {
                    Directory.CreateDirectory(rutaArchivo);
                }

                foreach (HttpPostedFile archivo in FileUpload1.PostedFiles)
                {


                    if (!(File.Exists($"{rutaArchivo}\\{archivo.FileName}")))
                    {



                        if (FileUpload1.HasFile)
                        {

                            FileUpload1.SaveAs($"{rutaArchivo}\\{archivo.FileName}");
                            lblInfo.Text = "Archivo cargado correctamente";
                            CargarGrilla();

                        }
                        else
                        {
                            lblInfo.Text = "No hay Archivos para cargar.";
                        }
                    }



                }
            }
            catch (Exception)
            {

                lblInfo.Text="Ingrese un Archivo";
            }

           

          


        }
        public void CargarGrilla()
        {

            if (Directory.Exists(rutaArchivo))
            {
                string[] archivo = Directory.GetFiles(rutaArchivo);
                List<ArchivosModelo> fileList = new List<ArchivosModelo>();
                foreach (string file in archivo)
                {

                    var newFile = new ArchivosModelo
                    {
                        name = Path.GetFileName(file),
                        path = file,
                    };

                    fileList.Add(newFile);
                }
                GridArchivos.DataSource = fileList;
                GridArchivos.DataBind();
              
            }
        }


        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (this.Session["nombreUsuario"] != null)
            {
                CargarARchivo();



                CargarGrilla();
            }
            else
            {
                lblInfo.Text = "No hay Usuario Regsitrado";
            }
        }
    }
}