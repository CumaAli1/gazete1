<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="kayıt.aspx.cs" Inherits="gazete.kayıt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="text-align:center">
        <div class="row align-content-center">
            <div class="col-3"></div>
            <div class="col-6">
                  <h3 style="text-align:center">ÜYE KAYIT</h3>
                  <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label">Email</label>
                      <asp:TextBox ID="txtmail"  class="form-control" runat="server"></asp:TextBox>
                  </div>
                  <div class="mb-3">
                      <label for="exampleInputPassword1" class="form-label">Password</label>
                      <asp:TextBox ID="txtsifre" TextMode="Password"  class="form-control" runat="server"></asp:TextBox>
                  </div>
                  <div class="mb-3"> 
                      <label class="form-label">Kullanıcı Adı</label>
                      <asp:TextBox ID="txtad"  class="form-control" runat="server"></asp:TextBox>
                  </div>
                  <div class="d-grid gap-2">
                      <asp:Button ID="btnkayıt" class="btn btn-primary" runat="server" Text="Üye OL" OnClick="btnkayıt_Click" />
                      <asp:Label ID="lbluyarı" runat="server" Text="" CssClass="alert-warning" ForeColor="#FF3300"></asp:Label>
                  </div>
            </div>
            <div class="col-3"></div>
        </div>
    </div>
</asp:Content>
