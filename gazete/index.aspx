<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="gazete.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">

    <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
            <div class="col-md-3" style="border:1px solid #b8b894">
                <div class="text-center" style="margin-top:5px;">
                    <a href="haber.aspx?ID=<%# Eval("ID") %>"><img src="resim/<%# Eval("resimurl") %>" style="width:200px; height:100px;" class="img-thumbnail" alt="..."></a>
                </div>
                <div class="text-center fw-bold">
                    <h4 aria-multiline="True"> <%# Eval("haberbaslık") %> </h4>
                </div>
                <div class="text-center" style="margin-bottom:8px; ">
                    <a href="haber.aspx?ID=<%# Eval("ID") %>" class="btn btn-primary">Devamını Oku </a>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>  
        
   </div>

</asp:Content>
