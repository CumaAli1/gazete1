using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gazete
{
    public partial class haberekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnhaberkaydet_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("dtgazete.mdb"));
            baglanti.Open();
            string sorgu = "INSERT INTO haberler (haberbaslık, habericerik) VALUES (@haberbaslıgı, @habericerigi)";
            string haberbaslık = txtbaslık.Text;
            string habericerik = txticerik.Text;
            OleDbCommand komut = new OleDbCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@haberbaslık", haberbaslık);
            komut.Parameters.AddWithValue("@habericerik", habericerik);
            komut.ExecuteNonQuery();
            baglanti.Close();

            lbluyarı.Text = "kayıt başarılı...";
        }
    }
}