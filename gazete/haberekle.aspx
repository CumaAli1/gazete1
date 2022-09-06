<%@ Page Title="" Language="C#" MasterPageFile="~/adminanasayfa.Master" AutoEventWireup="true" CodeBehind="haberekle.aspx.cs" Inherits="gazete.haberekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="height:400px;">
      <div class="row">
        <div class="col-4">
            <div>
                <label class="form-label">Haber Başlığı</label>
                <asp:TextBox ID="txtbaslık"  class="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <label class="form-label">Haber Türü</label>
                <asp:TextBox ID="txttur"  class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mt-3">
                <label class="form-label">Fotoğraflar (En fazla 5 fotoğraf seçin)</label>
                <asp:FileUpload ID="foto" runat="server"></asp:FileUpload>
            </div>
        </div>
        <div class="col-8">
            <div>
                <label class="form-label">Haber İçeriği</label>
                <asp:TextBox ID="txticerik" class="form-control" style="height: 100px" runat="server"></asp:TextBox>
            </div>
            <div class="d-grid mt-2 gap-2 d-md-flex justify-content-md-end">
                <asp:Button ID="btnhaberkaydet" class="btn btn-primary" runat="server" Text="Kaydet" OnClick="btnhaberkaydet_Click" />
            </div>
            <div>
                <asp:Label ID="lbluyarı" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>
      </div>
    </div>

</asp:Content>
