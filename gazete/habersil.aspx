<%@ Page Title="" Language="C#" MasterPageFile="~/adminanasayfa.Master" AutoEventWireup="true" CodeBehind="habersil.aspx.cs" Inherits="gazete.habersil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="height:400px;">
      <div class="row">
          <h3 style="text-align:center; margin-bottom:20px;">HABER SİL</h3>
        <div class="col-4">
            <div>
                <div>
                    <label class="form-label">Haber Başlığı</label>
                    <asp:TextBox ID="txtbaslık"  class="form-control" runat="server"></asp:TextBox>
                <div class="mt-3">
                    <asp:Button ID="btnhaberbul" class="btn btn-primary" runat="server" Text="Haberi Bul" />
                </div>
                </div>
            </div>
            <div>
                <label class="form-label">Haber Başlığı</label>
                <asp:TextBox ID="txtbaslık1"  class="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="col-8">
            <div>
                <label class="form-label">Haber İçeriği</label>
                <asp:TextBox ID="txticerik" class="form-control" style="height: 100px" runat="server"></asp:TextBox>
            </div>
            <div class="d-grid mt-2 gap-2 d-md-flex justify-content-md-end">
                <asp:Button ID="btnhaberkaydet" class="btn btn-primary" runat="server" Text="Haberi Sil" />
            </div>
        </div>
      </div>
    </div>
</asp:Content>
