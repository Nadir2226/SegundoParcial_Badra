using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SegundoParcial_Badra
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            HttpCookie cookePassword = new HttpCookie("password", this.txtPassword.Text);
            cookePassword.Expires = new DateTime(2024, 01, 15);
            this.Response.Cookies.Add(cookePassword);

            this.Session["nombreUsuario"] = this.txtUsuario.Text;

            lblInfo.Text = "Usuario registrado correctamente.";
        }
    }
}