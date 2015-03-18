using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;


public partial class ModulsProfessionals : System.Web.UI.Page
{
    static UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
    static UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
    static string _where = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownListCicleMP_SelectedIndexChanged(object sender, EventArgs e)
    {
        LabelMensajeGrid.Text = "";
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

    protected void GridViewsMP_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        LabelMensajeGrid.Text = "";
        if (e.Exception != null)
        {
            LabelMensajeGrid.Text = EsborrarModul(e.Exception);
            e.ExceptionHandled = true;
        }
        else
        {
            LabelMensajeGrid.Text = "";
        }
    }

    public static string EsborrarModul(Exception ex)
    {
        SqlException sqlEx = (SqlException)ex.InnerException;
        return MensajeError(sqlEx);
    }

    public static string MensajeError(SqlException ex)
    {
        string mensaje = "";

        switch (ex.Number)
        {
            case 547:
                mensaje = "El regitro que se quiere eliminar tiene elementos relacionados";
                break;
            case 2627:
                mensaje = "Registro duplicado";
                break;
            default:
                mensaje = ex.Number + " - " + ex.Message;
                break;
        }

        return (mensaje);
    }
    protected void LinkButtonNou_Click(object sender, EventArgs e)
    {
        DropDownListCicleForm.ClearSelection();
        DropDownListCursForm.ClearSelection();
        TextBoxCodiForm.Text = "";
        TextBoxNomForm.Text = "";
        TextBoxHoresForm.Text = "";
        TextBoxHoresElecForm.Text = "";
        DropDownListProfeForm.ClearSelection();

        LinkButtonNou_ModalPopupExtender.Show();
    }

    protected void GridViewsMP_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string nombre = GridViewsMP.Rows[e.NewSelectedIndex].Cells[3].Text;
        IdentityUser u = manager.FindByName(nombre);

        //DropDownListCicleMP.
        //TextBoxNomUsuari.Text = u.UserName;
        //TextBoxCorreu.Text = u.Email;
        //TextBoxTelefon.Text = u.PhoneNumber;
        //int horesEleccio;

        //TextBox txt = (TextBox)GridViewsMP.Rows[e.RowIndex].Cells[5].FindControl("TextBox3");

        //if (!int.TryParse(txt.Text, out telefono))
        //{
        //    LabelMensajeGrid.Text = "El teléfono ha de ser numérico";
        //    txt.Focus();
        //    e.Cancel = true;
        //}

        //else
        //{
        //    LabelMensajeGrid.Text = "";
        LinkButtonNou_ModalPopupExtender.Show();
        //}
    }
}