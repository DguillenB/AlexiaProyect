<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IntroduirNotes.aspx.cs" Inherits="IntroduirNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">Introducció de notes</h3>
        </div>
        <div class="panel-body">

            <div class="form-horizontal">
                <div class="form-group">
                    <label for="select" class="col-lg-2 col-md-2 control-label">Cicle</label>
                    <div class="col-lg-8 col-md-8">
                        <asp:DropDownList ID="DropDownListCicleIN" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="form-horizontal">
                <div class="form-group">
                    <label for="select" class="col-lg-2 col-md-2 control-label">Curs</label>
                    <div class="col-lg-8 col-md-8">
                        <asp:DropDownList ID="DropDownListCursosIN" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="form-horizontal">
                <div class="form-group">
                    <label for="select" class="col-lg-2 col-md-2 control-label">Mòdul Professional</label>
                    <div class="col-lg-8 col-md-8">
                        <asp:DropDownList ID="DropDownListModulsProfIN" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="form-horizontal">
                <div class="form-group">
                    <label for="select" class="col-lg-2 col-md-2 control-label">Unitat Formativa</label>
                    <div class="col-lg-8 col-md-8">
                        <asp:DropDownList ID="DropDownListUFIN" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="form-horizontal">
                <div class="form-group">
                    <label for="select" class="col-lg-2 col-md-2 control-label">Avaluació</label>
                    <div class="col-lg-8 col-md-8">
                        <asp:DropDownList ID="DropDownListAvaluacioIN" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Alumnes</h3>
                </div>
                <div class="panel-body">
                    <%--S'ha de canviar el "campo de datos" d'aquesta Grid--%>
                    <asp:GridView ID="GridViewAlumnesIN" runat="server" AutoGenerateColumns="False">
                        
                    </asp:GridView>
                </div>
            </div>
        </div>
</asp:Content>

