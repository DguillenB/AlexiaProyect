<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UnitatsFormatives.aspx.cs" Inherits="UnitatsFormatives" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">
                <asp:Button ID="LinkButtonNovaUF" runat="server" CssClass="btn btn-info" Text="NOVA" CausesValidation="False" OnClick="LinkButtonNovaUF_Click"/>
                <asp:HiddenField ID="HiddenFieldModalUFs" runat="server" /> 
                <asp:ModalPopupExtender ID="HiddenFieldModalUFs_ModalPopupExtender" runat="server" DynamicServicePath="" Enabled="True" PopupControlID="ModalUF" TargetControlID="HiddenFieldModalUFs">
                </asp:ModalPopupExtender>

                
            </h3>
        </div>
        <div class="panel-body">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Unitats Formatives</h3>
                </div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label for="select" class="col-lg-2 col-md-2 control-label">Cicle</label>
                            <div class="col-lg-8 col-md-8">
                                <asp:DropDownList ID="DropDownListCicleUF" runat="server" CssClass="form-control"></asp:DropDownList>
                                <asp:CascadingDropDown ID="DropDownListCicleUF_CascadingDropDown" runat="server" Enabled="True" ServiceMethod="GetDropDownContents" Category="ciclos" TargetControlID="DropDownListCicleUF" UseContextKey="True" PromptText="Esull un cicle">
                                </asp:CascadingDropDown>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <label for="select" class="col-lg-2 col-md-2 control-label">Curs</label>
                            <div class="col-lg-8 col-md-8">
                                <asp:DropDownList ID="DropDownListCursUF" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownListCursUF_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                                <asp:CascadingDropDown ID="DropDownListCursUF_CascadingDropDown" runat="server" Category="cursos" Enabled="True" ParentControlID="DropDownListCicleUF" TargetControlID="DropDownListCursUF" ServiceMethod="GetDropDownContents2" UseContextKey="True" EmptyText="No hay cursos" PromptText="Escoge un curso">
                                </asp:CascadingDropDown>
                            </div>
                        </div>
                    </div>
                    <br />
                    <asp:Label ID="MissatgeErrorBorrarUF" runat="server" Text=""></asp:Label>
                    <asp:GridView CssClass="table" ID="GridViewUF" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSource_GridViewUF" DataKeyNames="id" OnRowDeleted="GridViewUF_RowDeleted" OnRowUpdating="GridViewUF_RowUpdating">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButtonUpdateUF" runat="server" CommandName="Update" Text="Update" ValidationGroup="grid"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButtonCancelEditUF" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButtonEditarUF" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton_BorrarUF" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>

                                    <asp:ConfirmButtonExtender ID="LinkButton_BorrarUF_ConfirmButtonExtender" runat="server" ConfirmText="" Enabled="True" TargetControlID="LinkButton_BorrarUF" DisplayModalPopupID="LinkButton_BorrarUF_ModalPopupExtender">
                                    </asp:ConfirmButtonExtender>
                                    <asp:ModalPopupExtender ID="LinkButton_BorrarUF_ModalPopupExtender" runat="server" DynamicServicePath="" Enabled="True" TargetControlID="LinkButton_BorrarUF" PopupControlID="modalAvis" CancelControlID="ButtonCancelar_AvisUF" OkControlID="ButtonAceptar_AvisUF">
                                    </asp:ModalPopupExtender>

                                    <!--Modal PopUp Confirmacio Eliminar-->

                                    <asp:Panel ID="modalAvis" runat="server" CssClass="panel panel-info">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Avís</h3>
                                        </div>
                                        <div class="panel-body">
                                            <p>Estàs segur de que vols esborrar el registre?</p>
                                            <br />
                                            <asp:Button ID="ButtonCancelar_AvisUF" runat="server" Text="Cancel.lar" CssClass="btn btn-default" />
                                            <asp:Button ID="ButtonAceptar_AvisUF" runat="server" Text="Acceptar" CssClass="btn btn-primary" />
                                        </div>
                                    </asp:Panel>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Modul Professional" SortExpression="moduls_prof">
                                <EditItemTemplate>
                                    <br />
                                    <asp:DropDownList ID="DropDownListEditModulsProf" CssClass="form-control" runat="server" Width="123px">
                                    </asp:DropDownList>
                                    <asp:CascadingDropDown ID="DropDownListEditModulsProf_CascadingDropDown" runat="server" Enabled="True" ServiceMethod="GetDropDownContents6" TargetControlID="DropDownListEditModulsProf" UseContextKey="True" Category="moduls_prof" ParentControlID="DropDownListCursUF">
                                    </asp:CascadingDropDown>
                                    <br />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("moduls_prof.nom") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Unitat Formativa" SortExpression="nom">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBoxEditUF" runat="server" CssClass="form-control" Text='<%# Bind("nom") %>' ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEditUF" runat="server" ErrorMessage="Camp obligatori" ControlToValidate="TextBoxEditUF" ValidationGroup="grid"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("nom") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>
                    <asp:EntityDataSource ID="EntityDataSource_GridViewUF" runat="server" ConnectionString="name=alexiaEntities" DefaultContainerName="alexiaEntities" EnableFlattening="False" EntitySetName="ufs" EnableDelete="True" EnableInsert="True" EnableUpdate="True" Include="moduls_prof"></asp:EntityDataSource>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Pop up Nou de les UFS-->
    <div id="ModalUF" class="panel panel-info" style="width: 885px;">
        <div class="panel-heading">
            <h3 class="panel-title">Unitat Formativa</h3>
        </div>
        <div class="panel-body">
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="select" class="col-lg-2 col-md-2 control-label">Cicle</label>
                    <div class="col-lg-8 col-md-8">
                        <asp:DropDownList ID="DropDownListUF_Modal_Cicle" CssClass="form-control" runat="server" ParentControlID="DropDownListUF_Modal_Cicle"></asp:DropDownList>
                        <asp:CascadingDropDown ID="DropDownListUF_Modal_Cicle_CascadingDropDown" TargetControlID="DropDownListUF_Modal_Cicle" ServiceMethod="GetDropDownContents3" runat="server" Enabled="True" Category="ciclos" UseContextKey="True" PromptText="Esull un cicle">
                        </asp:CascadingDropDown>
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <label for="select" class="col-lg-2 col-md-2 control-label">Curs</label>
                    <div class="col-lg-8 col-md-8">
                        <asp:DropDownList ID="DropDownListUF_Modal_Curs" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:CascadingDropDown ID="DropDownListUF_Modal_Curs_CascadingDropDown" runat="server" Enabled="True" TargetControlID="DropDownListUF_Modal_Curs" PromptText="Escull un curs" EmptyText="No hi ha cursos" ServiceMethod="GetDropDownContents4" UseContextKey="True" Category="cursos" ParentControlID="DropDownListUF_Modal_Cicle">
                        </asp:CascadingDropDown>
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <label for="select" class="col-lg-2 col-md-2 control-label">Mòdul Professional</label>
                    <div class="col-lg-8 col-md-8">
                        <asp:DropDownList ID="DropDownListUF_Modal_ModulsProf" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:CascadingDropDown ID="DropDownListUF_Modal_ModulsProf_CascadingDropDown" runat="server" Enabled="True" TargetControlID="DropDownListUF_Modal_ModulsProf" PromptText="Escull un Modul Professional" EmptyText="No hi ha cursos" ServiceMethod="GetDropDownContents5" UseContextKey="True" Category="moduls_prof" ParentControlID="DropDownListUF_Modal_Curs">
                        </asp:CascadingDropDown>
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <label for="select" class="col-lg-2 col-md-2 control-label">Nom Unitat Formativa</label>
                    <div class="col-lg-8 col-md-8">
                        <asp:TextBox ID="TextBox_UF_NovaUF" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox_UF_NovaUF" ValidationGroup="popup">Camp obligatori</asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <br />
                <asp:Button ID="ButtonAcceptar_ModalUF" runat="server" Text="Acceptar" OnClick="ButtonAcceptar_ModalUF_Click" ValidationGroup="popup" />
                <asp:Button ID="ButtonCancelar_ModalUF" runat="server" Text="Cancel·lar" />
                <asp:Label ID="LabelErrorBotons" runat="server" Text="" CssClass="label label-danger"></asp:Label>
            </div>
        </div>
    </div>




</asp:Content>

