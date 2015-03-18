<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Assignar_UF_Alumnes.aspx.cs" Inherits="Assignar_UF_Alumnes" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">Assignar Unitats Formatives</h3>
        </div>
        <div class="panel-body">
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="select" class="col-lg-2 col-md-2 control-label">Cicle</label>
                    <div class="col-lg-10 col-md-10">
                        <asp:DropDownList ID="DropDownListCicle" runat="server" CssClass="form-control" DataSourceID="EntityDataSourceCicles" DataTextField="nom" DataValueField="nom" OnSelectedIndexChanged="DropDownListCicle_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>                  
                        <asp:CascadingDropDown ID="DropDownListCicle_CascadingDropDown" runat="server" Category="ciclos" Enabled="True" PromptText="Escoge un ciclo" ServiceMethod="GetDropDownContents" TargetControlID="DropDownListCicle" UseContextKey="True">
                        </asp:CascadingDropDown>
                        <asp:EntityDataSource ID="EntityDataSourceCicles" runat="server" ConnectionString="name=alexiaEntities" DefaultContainerName="alexiaEntities" EnableFlattening="False" EntitySetName="cicles" Select="it.[nom], it.[id]">
                        </asp:EntityDataSource>
                    </div>
                </div>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="select" class="col-lg-2 col-md-2 control-label">Curs</label>
                    <div class="col-lg-10 col-md-10">
                        <asp:DropDownList ID="DropDownListCurs" runat="server" CssClass="form-control" DataSourceID="EntityDataSourceCursos" DataTextField="nom" DataValueField="id" OnSelectedIndexChanged="DropDownListCurs_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>                  
                        <asp:CascadingDropDown ID="DropDownListCurs_CascadingDropDown" runat="server" Category="cursos" EmptyText="No hay cursos" Enabled="True" ParentControlID="DropDownListCicle" PromptText="Escoge un curso" ServiceMethod="GetDropDownContents2" TargetControlID="DropDownListCurs" UseContextKey="True">
                        </asp:CascadingDropDown>
                        <asp:EntityDataSource ID="EntityDataSourceCursos" runat="server" ConnectionString="name=alexiaEntities" DefaultContainerName="alexiaEntities" EnableFlattening="False" EntitySetName="cursos" EnableUpdate="True">
                        </asp:EntityDataSource>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <!--PRINCIPIO PANEL ALUMNOS -->
                <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Alumnes</h3>
                </div>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" CssClass="table table-striped table-hover" AllowSorting="True" DataKeyNames="id" DataSourceID="EntityDataSourcePersonasAlumno">
                        <Columns>
                            <asp:BoundField DataField="dni" HeaderText="dni" SortExpression="dni" />
                            <asp:BoundField DataField="cognom1" HeaderText="cognom1" SortExpression="cognom1" />
                            <asp:BoundField DataField="cognom2" HeaderText="cognom2" SortExpression="cognom2" />
                            <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                        </Columns>
                    </asp:GridView>
                    
                </div>
        <!--FIN PANEL ALUMNOS -->
        <!--INICIO PANEL UFs -->
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Unitats Formatives</h3>
                </div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField HeaderText="Curs" SortExpression="curs">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("curs") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("curs") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Codi" SortExpression="codi">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("codi") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("codi") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nom" SortExpression="nom">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("nom") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("nom") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>                       
                    </asp:GridView>
                </div>
        <!--PRINCIPIO PANEL UFs -->
        </div>
    </div>

    <asp:EntityDataSource ID="EntityDataSourcePersonasAlumno" runat="server" ConnectionString="name=alexiaEntities" DefaultContainerName="alexiaEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="persones" Include="alumnes">
    </asp:EntityDataSource>

    </asp:Content>

