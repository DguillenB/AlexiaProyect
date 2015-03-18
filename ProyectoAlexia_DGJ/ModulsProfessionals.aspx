<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModulsProfessionals.aspx.cs" Inherits="ModulsProfessionals" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <asp:HiddenField ID="HiddenFieldPopup" runat="server" />
    <asp:ModalPopupExtender ID="LinkButtonNou_ModalPopupExtender" runat="server" Enabled="True" TargetControlID="HiddenFieldPopup" CancelControlID="ButtonCancelForm" OkControlID="ButtonAcceptarForm" PopupControlID="PanelFormMP">
    </asp:ModalPopupExtender>
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">
                <asp:LinkButton ID="LinkButtonNou" runat="server" CssClass="btn btn-info" OnClick="LinkButtonNou_Click" CausesValidation="False">NOU</asp:LinkButton>
            </h3>
        </div>

        <div class="panel-body">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Mòduls Professionals</h3>
                </div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label for="select" class="col-lg-2 col-md-2 control-label">Cicle</label>
                            <div class="col-lg-8 col-md-8">
                                <asp:DropDownList ID="DropDownListCicleMP" runat="server" CssClass="form-control" DataSourceID="EntityDataSourceCicles" DataTextField="nom" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="DropDownListCicleMP_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <asp:GridView ID="GridViewsMP" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSourceMP" DataKeyNames="id" CssClass="table table-striped table-hover " OnRowDeleted="GridViewsMP_RowDeleted" OnSelectedIndexChanging="GridViewsMP_SelectedIndexChanging">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButtonSeleccionar" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar"></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonEliminar" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                                    <asp:ModalPopupExtender ID="LinkButtonEliminar_ModalPopupExtender" runat="server" Enabled="True" PopupControlID="modalAvis" TargetControlID="LinkButtonEliminar" CancelControlID="ButtonCancelar" OkControlID="ButtonAceptar">
                                    </asp:ModalPopupExtender>
                                    <asp:Panel ID="modalAvis" runat="server" CssClass="panel panel-info">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Avís</h3>
                                        </div>
                                        <div class="panel-body">
                                            <p>Estàs segur de que vols esborrar el registre?</p>
                                            <br></br>
                                            <asp:Button ID="ButtonCancelar" runat="server" Text="Cancel.lar" CssClass="btn btn-default" />
                                            <asp:Button ID="ButtonAceptar" runat="server" Text="Acceptar" CssClass="btn btn-primary" />
                                        </div>
                                    </asp:Panel>
                                    <asp:ConfirmButtonExtender ID="LinkButtonEliminar_ConfirmButtonExtender" runat="server" ConfirmText="" Enabled="True" DisplayModalPopupID="LinkButtonEliminar_ModalPopupExtender" TargetControlID="LinkButtonEliminar">
                                    </asp:ConfirmButtonExtender>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Curs" SortExpression="id_curs">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("id_curs") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("cursos.codi") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                            <asp:BoundField DataField="codi" HeaderText="codi" SortExpression="codi" />
                            <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                            <asp:BoundField DataField="hores" HeaderText="hores" SortExpression="hores" Visible="False" />
                            <asp:BoundField DataField="hores_lliures" HeaderText="hores_lliures" SortExpression="hores_lliures" Visible="False" />
                            <asp:BoundField DataField="id_professor" HeaderText="id_professor" SortExpression="id_professor" Visible="False" />
                        </Columns>
                    </asp:GridView>
                    <asp:Label ID="LabelMensajeGrid" runat="server" CssClass="text-danger"></asp:Label>
                </div>

                //EnttitysDataSources Modul, Cicles y professors con cursos en include

                <asp:EntityDataSource ID="EntityDataSourceMP" runat="server" ConnectionString="name=alexiaEntities" DefaultContainerName="alexiaEntities" EnableFlattening="False" EntitySetName="moduls_prof" EnableDelete="True" EnableInsert="True" EnableUpdate="True" Include="cursos">
                </asp:EntityDataSource>
                <asp:EntityDataSource ID="EntityDataSourceCicles" runat="server" ConnectionString="name=alexiaEntities" DefaultContainerName="alexiaEntities" EnableFlattening="False" EntitySetName="cicles" Include="cursos" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
                </asp:EntityDataSource>
                <asp:EntityDataSource ID="EntityDataSourceProfessors" runat="server" ConnectionString="name=alexiaEntities" DefaultContainerName="alexiaEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="professors" Include="cursos">
                </asp:EntityDataSource>

                //Label Formulario popup
                <asp:Panel ID="PanelFormMP" runat="server" CssClass="panel panel-info formMP">
                    <div class="panel-heading">
                        <h3 class="panel-title">Mòdul Professional</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label for="select" class="col-lg-2 col-md-2 control-label">Cicle</label>
                                <div class="col-lg-8 col-md-8">
                                    <asp:DropDownList ID="DropDownListCicleForm" runat="server" CssClass="form-control" DataSourceID="EntityDataSourceCicles" DataTextField="nom" DataValueField="id" OnSelectedIndexChanged="DropDownListCicleMP_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="select" class="col-lg-2 col-md-2 control-label">Curs</label>
                                <div class="col-lg-8 col-md-8">
                                    <asp:DropDownList ID="DropDownListCursForm" runat="server" CssClass="form-control" DataSourceID="EntityDataSourceCicles" DataTextField="nom" DataValueField="id" OnSelectedIndexChanged="DropDownListCicleMP_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="select" class="col-lg-2 col-md-2 control-label">Codi</label>
                                <div class="col-lg-9 col-md-9">
                                    <asp:TextBox ID="TextBoxCodiForm" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxCodiForm" runat="server" ErrorMessage="Campo vacío" Display="Dynamic" ControlToValidate="TextBoxCodiForm" CssClass="label label-primary"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="select" class="col-lg-2 col-md-2 control-label">Nom</label>
                                <div class="col-lg-9 col-md-9">
                                    <asp:TextBox ID="TextBoxNomForm" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxNomForm" runat="server" ErrorMessage="Campo vacío" Display="Dynamic" ControlToValidate="TextBoxNomForm" CssClass="label label-primary"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="select" class="col-lg-2 col-md-2 control-label">Hores</label>
                                <div class="col-lg-10 col-md-10">
                                    <asp:TextBox ID="TextBoxHoresForm" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxHoresForm" runat="server" ErrorMessage="Campo vacío" Display="Dynamic" ControlToValidate="TextBoxHoresForm" CssClass="label label-primary"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="select" class="col-lg-2 col-md-2 control-label">Hores lliures elecció</label>
                                <div class="col-lg-10 col-md-10">
                                    <asp:TextBox ID="TextBoxHoresElecForm" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="select" class="col-lg-2 col-md-2 control-label">Professor</label>
                                <div class="col-lg-10 col-md-10">
                                    <asp:DropDownList ID="DropDownListProfeForm" runat="server" CssClass="form-control" DataSourceID="EntityDataSourceProfessors" DataTextField="nom" DataValueField="id" OnSelectedIndexChanged="DropDownListCicleMP_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <asp:Button ID="ButtonCancelForm" runat="server" Text="Cancel.lar" CssClass="btn btn-default" />
                        <asp:Button ID="ButtonAcceptarForm" runat="server" Text="Acceptar" CssClass="btn btn-primary" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

