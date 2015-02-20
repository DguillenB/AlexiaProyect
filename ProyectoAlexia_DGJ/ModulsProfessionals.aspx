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
                              <asp:DropDownList ID="DropDownListCicleMP" runat="server" CssClass="form-control"></asp:DropDownList>                  
                          </div>
                        </div>
                    </div>

                    <asp:GridView ID="GridViewsMP" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSourceMP">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="nom" HeaderText="nom" ReadOnly="True" SortExpression="nom" />
                            <asp:BoundField DataField="codi" HeaderText="codi" ReadOnly="True" SortExpression="codi" />
                            <asp:TemplateField HeaderText="Curs" SortExpression="id_curs">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id_curs") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        
                    </asp:GridView>
                </div>
                <asp:EntityDataSource ID="EntityDataSourceMP" runat="server" ConnectionString="name=alexiaEntities" DefaultContainerName="alexiaEntities" EnableFlattening="False" EntitySetName="moduls_prof" Select="it.[nom], it.[codi], it.[id_curs]">
                </asp:EntityDataSource>
            </div>
        </div>
    </div>
</asp:Content>

