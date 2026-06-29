using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Veterinaria
{
    public partial class ConsVeterinario : System.Web.UI.Page
    {
        private void CargarVeterinarios()
        {
            /*try
            {
                VeterinarioBL objBL = new VeterinarioBL();
                gvVeterinarios.DataSource = objBL.ListarVeterinario();
                gvVeterinarios.DataBind();
            }
            catch (Exception ex)
            {
                // Handle the exception
            }*/
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarVeterinarios();
            }
        }
        protected void btnConsultar_Click(object sender, EventArgs e)
        {

        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {

        }
        protected void gvVeterinarios_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}