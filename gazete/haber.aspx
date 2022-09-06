<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="haber.aspx.cs" Inherits="gazete.haber" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">

    <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
       <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class=" text-center">
                    <img src="resim/<%# Eval("resimurl") %>"  class="img-fluid" alt="...">
                </div>
                <div class="text-center" style="margin-top:8px;">
                    <h2> <%# Eval("haberbaslık") %></h2>
                </div>
                <div class="text-center" style="text-indent:50px;">
                  <p class="text-sm-start"><%# Eval("habericerik") %></p>
                </div>
            </div>
       <div class="col-md-2"></div>
        </ItemTemplate>
    </asp:Repeater>
    
    </div>

</asp:Content>
