<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UnitatsFormatives.aspx.cs" Inherits="UnitatsFormatives" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">
                <asp:LinkButton ID="LinkButtonNou" runat="server" CssClass="btn btn-info">NOVA</asp:LinkButton>
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
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="select" class="col-lg-2 col-md-2 control-label">Curs</label>
                          <div class="col-lg-8 col-md-8">
                              <asp:DropDownList ID="DropDownListCursUF" runat="server" CssClass="form-control"></asp:DropDownList>                  
                          </div>
                        </div>
                    </div>

                    <asp:GridView ID="GridViewUF" runat="server">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowHeader="True" />
                            <asp:CommandField CancelText="" DeleteText="" ShowEditButton="True" />
                        </Columns>
                        
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

