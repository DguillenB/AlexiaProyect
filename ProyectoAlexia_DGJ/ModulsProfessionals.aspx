<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModulsProfessionals.aspx.cs" Inherits="ModulsProfessionals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">
                <asp:LinkButton ID="LinkButtonNou" runat="server" CssClass="btn btn-info">NOU</asp:LinkButton>
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

                    <asp:GridView ID="GridViewsMP" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSourceMP" DataKeyNames="id" CssClass="table table-striped table-hover ">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
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
                </div>
                <asp:EntityDataSource ID="EntityDataSourceMP" runat="server" ConnectionString="name=alexiaEntities" DefaultContainerName="alexiaEntities" EnableFlattening="False" EntitySetName="moduls_prof" EnableDelete="True" EnableInsert="True" EnableUpdate="True" Include="cursos">
                </asp:EntityDataSource>
                <asp:EntityDataSource ID="EntityDataSourceCicles" runat="server" ConnectionString="name=alexiaEntities" DefaultContainerName="alexiaEntities" EnableFlattening="False" EntitySetName="cicles" Include="cursos">
                </asp:EntityDataSource>
            </div>
        </div>
    </div>
</asp:Content>

