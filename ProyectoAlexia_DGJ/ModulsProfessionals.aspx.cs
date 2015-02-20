using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ModulsProfessionals : System.Web.UI.Page
{
    alexiaEntities contexto = new alexiaEntities();


    protected void Page_Load(object sender, EventArgs e)
    {
        List<cicles> ciclos =
            (from c in contexto.cicles
             orderby c.codi ascending
             select c).ToList();

        DropDownListCicleMP.DataTextField = "codi";
        DropDownListCicleMP.DataValueField = "id";

        DropDownListCicleMP.DataSource = ciclos;
        DropDownListCicleMP.DataBind();
    }
    
}