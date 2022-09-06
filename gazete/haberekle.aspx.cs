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
            
            string sorgu = "INSERT INTO haberler (haberbaslıgı, habericerigi, haberturu) VALUES (@haberbaslıgı, @habericerigi, @haberturu)";

            string haberbaslık = txtbaslık.Text;
            string habericerik = txticerik.Text;
            string habertur = txttur.Text;

            OleDbCommand komut = new OleDbCommand(sorgu, baglanti);
            
            komut.Parameters.AddWithValue("@haberbaslıgı", haberbaslık);
            komut.Parameters.AddWithValue("@habericerigi", habericerik);
            komut.Parameters.AddWithValue("@haberturu", habertur);
           
            komut.ExecuteNonQuery();
            baglanti.Close();

            lbluyarı.Text = "kayıt başarılı...";
        }
    }
}