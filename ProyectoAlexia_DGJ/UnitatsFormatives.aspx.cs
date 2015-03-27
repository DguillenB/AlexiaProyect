using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UnitatsFormatives : System.Web.UI.Page
{
    static string amostrar = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    /*---------------------------Cascades per omplir les DropDowns de pagina Unitats Formatives----------------------------*/

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static AjaxControlToolkit.CascadingDropDownNameValue[] GetDropDownContents(string knownCategoryValues, string category)
    {
        alexiaEntities contexto = new alexiaEntities();

        List<cicles> ciclos =
            (from c in contexto.cicles
             select c).ToList();

        AjaxControlToolkit.CascadingDropDownNameValue[] resultados = new AjaxControlToolkit.CascadingDropDownNameValue[ciclos.Count];
        int i = 0;

        foreach (cicles item in ciclos)
        {
            AjaxControlToolkit.CascadingDropDownNameValue res = new AjaxControlToolkit.CascadingDropDownNameValue();

            res.name = item.codi;
            res.value = item.id.ToString();

            resultados[i] = res;

            i++;
        }


        return (resultados);

        //return default(AjaxControlToolkit.CascadingDropDownNameValue[]);
    }


    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static AjaxControlToolkit.CascadingDropDownNameValue[] GetDropDownContents2(string knownCategoryValues, string category)
    {

        alexiaEntities contexto = new alexiaEntities();

        StringDictionary kv = AjaxControlToolkit.CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);

        int id_ciclo = int.Parse(kv["ciclos"]);

        List<cursos> l_cursos =
            (from c in contexto.cursos
             where c.id_cicle == id_ciclo
             select c).ToList();

        AjaxControlToolkit.CascadingDropDownNameValue[] resultados = new AjaxControlToolkit.CascadingDropDownNameValue[l_cursos.Count];
        int i = 0;

        foreach (cursos item in l_cursos)
        {
            AjaxControlToolkit.CascadingDropDownNameValue res = new AjaxControlToolkit.CascadingDropDownNameValue();

            res.name = item.codi;
            res.value = item.id.ToString();

            resultados[i] = res;

            i++;
        }

        return resultados;
    
        //return default(AjaxControlToolkit.CascadingDropDownNameValue[]);
    }




    /*---------------------------------Condicio per per omplir la grid segons l'ultima DropDown----------------------------*/



    protected void DropDownListCursUF_SelectedIndexChanged(object sender, EventArgs e)
    {
        RefrescarGridUfs();
       
    }

    public void RefrescarGridUfs() {
        if (int.Parse(DropDownListCursUF.SelectedValue) == 0)
        {
            amostrar = "";
            EntityDataSource_GridViewUF.Where = amostrar;
        }
        else
        {
            amostrar = "it.moduls_prof.id_curs = " + DropDownListCursUF.SelectedValue;
            EntityDataSource_GridViewUF.Where = amostrar;
        }

        GridViewUF.PageIndex = 0;
    }



    /*---------------------Cascades per omplir les DropDowns del Modal de la pagina Unitats Formatives---------------------*/



    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static AjaxControlToolkit.CascadingDropDownNameValue[] GetDropDownContents3(string knownCategoryValues, string category)
    {
        alexiaEntities contexto = new alexiaEntities();

        List<cicles> ciclos =
            (from c in contexto.cicles
             select c).ToList();

        AjaxControlToolkit.CascadingDropDownNameValue[] resultados = new AjaxControlToolkit.CascadingDropDownNameValue[ciclos.Count];
        int i = 0;

        foreach (cicles item in ciclos)
        {
            AjaxControlToolkit.CascadingDropDownNameValue res = new AjaxControlToolkit.CascadingDropDownNameValue();

            res.name = item.codi;
            res.value = item.id.ToString();

            resultados[i] = res;

            i++;
        }

        return (resultados);

    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static AjaxControlToolkit.CascadingDropDownNameValue[] GetDropDownContents4(string knownCategoryValues, string category)
    {
        alexiaEntities contexto = new alexiaEntities();

        StringDictionary kv = AjaxControlToolkit.CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);

        int id_ciclo = int.Parse(kv["ciclos"]);

        List<cursos> l_cursos =
            (from c in contexto.cursos
             where c.id_cicle == id_ciclo
             select c).ToList();

        AjaxControlToolkit.CascadingDropDownNameValue[] resultados = new AjaxControlToolkit.CascadingDropDownNameValue[l_cursos.Count];
        int i = 0;

        foreach (cursos item in l_cursos)
        {
            AjaxControlToolkit.CascadingDropDownNameValue res = new AjaxControlToolkit.CascadingDropDownNameValue();

            res.name = item.codi;
            res.value = item.id.ToString();

            resultados[i] = res;

            i++;
        }

        return resultados;
    }


    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static AjaxControlToolkit.CascadingDropDownNameValue[] GetDropDownContents5(string knownCategoryValues, string category)
    {
        alexiaEntities contexto = new alexiaEntities();

        StringDictionary kv = AjaxControlToolkit.CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);

        int id_curso = int.Parse(kv["cursos"]);

        List<moduls_prof> l_moduls =
           (from c in contexto.moduls_prof
            where c.id_curs == id_curso
            select c).ToList();

        AjaxControlToolkit.CascadingDropDownNameValue[] resultados = new AjaxControlToolkit.CascadingDropDownNameValue[l_moduls.Count];
        int i = 0;

        foreach (moduls_prof item in l_moduls)
        {
            AjaxControlToolkit.CascadingDropDownNameValue res = new AjaxControlToolkit.CascadingDropDownNameValue();

            res.name = item.nom;
            res.value = item.id.ToString();

            resultados[i] = res;

            i++;
        }

        return resultados;

    
    }


    /*------------------------------------Crear una nova UF ------------------------------------*/

    //Clicar el botó, esborrar camps anteriors i mostrar PopUp
    protected void LinkButtonNovaUF_Click(object sender, EventArgs e)
    {
        TextBox_UF_NovaUF.Text = "";

        HiddenFieldModalUFs_ModalPopupExtender.Show();
    }

    protected void ButtonAcceptar_ModalUF_Click(object sender, EventArgs e)
    {
        alexiaEntities contexto = new alexiaEntities();
        ufs uf = new ufs();

        uf.nom = TextBox_UF_NovaUF.Text;
        uf.id_modul_prof = int.Parse(DropDownListUF_Modal_ModulsProf.SelectedValue);

        contexto.ufs.Add(uf);

        try
        {
            contexto.SaveChanges();
            RefrescarGridUfs();


        }
        catch(Exception) {
            LabelErrorBotons.Text = "No s'ha pogut guardar";
        }
    }

    /*----------------------------------------Esborrar UFs-----------------------------------*/

    //Missatge d'error si no s'ha borrat
    protected void GridViewUF_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        MissatgeErrorBorrarUF.Text = "";
        if (e.Exception != null)
        {
            MissatgeErrorBorrarUF.Text = EsborrarModul(e.Exception);
            e.ExceptionHandled = true;
        }
        else
        {
            MissatgeErrorBorrarUF.Text = "";
        }
    }

    //Va a buscar el tipus de excepcio i retorna la funcio k retorna el missatge a mostrar
    public static string EsborrarModul(Exception ex)
    {
        SqlException sqlEx = (SqlException)ex.InnerException;
        return MensajeError(sqlEx);
    }

    //Misatge d'error segon la excepcio
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

    /*----------------------------------DropDownList Moduls editar-----------------------------------*/

    //Mostra els moduls_prof del curs triat en una drop down

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static AjaxControlToolkit.CascadingDropDownNameValue[] GetDropDownContents6(string knownCategoryValues, string category)
    {
        alexiaEntities contexto = new alexiaEntities();

        StringDictionary kv = AjaxControlToolkit.CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);

        int id_curso = int.Parse(kv["cursos"]);

        List<moduls_prof> l_moduls =
           (from c in contexto.moduls_prof
            where c.id_curs == id_curso
            select c).ToList();

        AjaxControlToolkit.CascadingDropDownNameValue[] resultados = new AjaxControlToolkit.CascadingDropDownNameValue[l_moduls.Count];
        int i = 0;

        foreach (moduls_prof item in l_moduls)
        {
            AjaxControlToolkit.CascadingDropDownNameValue res = new AjaxControlToolkit.CascadingDropDownNameValue();

            res.name = item.nom;
            res.value = item.id.ToString();

            resultados[i] = res;

            i++;
        }

        return resultados;
     
    }
    protected void GridViewUF_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        alexiaEntities contexto = new alexiaEntities();

        //var cust =
        //(from c in contexto.moduls_prof
        // where c.CustomerID == "ALFKI"
        // select c).First();
    }
}