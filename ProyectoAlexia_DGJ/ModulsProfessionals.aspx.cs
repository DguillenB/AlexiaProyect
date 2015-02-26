using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ModulsProfessionals : System.Web.UI.Page
{
    static string _where = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownListCicleMP_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (int.Parse(DropDownListCicleMP.SelectedValue) == 0)
        {
            _where = "";
            EntityDataSourceMP.Where = _where;
        }
        else
        {
            _where = "it.cursos.id_cicle = " + DropDownListCicleMP.SelectedValue;
            EntityDataSourceMP.Where = _where;
        }

        GridViewsMP.PageIndex = 0;
    }

}