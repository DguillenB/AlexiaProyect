using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections.Specialized;
using System.IO;

public partial class Assignar_UF_Alumnes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownListCicle_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownListCurs_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    //PRIMER DROPDOWN CASCADING
    //Recordar desacvitar AutoPostBack para evitar petada
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
    }

    //2º CASCADING DROPDOWN (hereda del primero)
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
    }


}