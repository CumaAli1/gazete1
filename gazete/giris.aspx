<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="gazete.giriş" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="text-align:center">
    <div class="row align-content-center">
    <div class="col-3"></div>
    <div class="col-6">
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email</label>
              <asp:TextBox ID="txtmail"  class="form-control" runat="server"></asp:TextBox>
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <asp:TextBox ID="txtsifre" TextMode="Password"  class="form-control" runat="server"></asp:TextBox>
          </div>
          <div class="d-grid gap-2">
              <asp:Button ID="btngiris" class="btn btn-primary" runat="server" Text="Giriş" OnClick="btngiris_Click" />
              <asp:Label ID="uyarı" runat="server" Text=""></asp:Label>
          </div>
    </div>
    <div class="col-3"></div>
    </div>
    </div>
</asp:Content>
