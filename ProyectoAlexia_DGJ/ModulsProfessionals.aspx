<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModulsProfessionals.aspx.cs" Inherits="ModulsProfessionals" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">Afegir</h3>
        </div>
        <div class="panel-body">

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Mòduls Professionals</h3>
                </div>
                <div class="panel-body">

                    <div>
                        <div class="form-group">
                          <label for="select" class="col-lg-2 col-md-2 control-label">Selects</label>
                          <div class="col-lg-10 col-md-10">
                              <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>                  
                          </div>
                        </div>
                    </div>
                    

                    <asp:GridView ID="GridViewModulsProf" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowHeader="True" />
                            <asp:CommandField ShowHeader="True" ShowSelectButton="True" />
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
            </div>


        </div>
    </div>
</asp:Content>

