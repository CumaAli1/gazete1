using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace gazete
{
    public partial class kayıt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnkayıt_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("dtgazete.mdb"));
            baglanti.Open();

            string mail = txtmail.Text;
            string sifre = txtsifre.Text;
            string ad = txtad.Text;

            string sorgu = "INSERT INTO kullanicilar ( kullaniciadi, kullanicimail, kullanicisifre ) VALUES (@ad, @mail, @sifre)";

            OleDbCommand komut = new OleDbCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@ad", ad);
            komut.Parameters.AddWithValue("@mail", mail);
            komut.Parameters.AddWithValue("@sifre", sifre);
            komut.ExecuteNonQuery();
            baglanti.Close();

            lbluyarı.Text = "Kayıt Başarılı...";
            Response.AppendHeader("refresh", "5;url=giris.aspx");
        }
    }
}