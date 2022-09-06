using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;


namespace gazete
{
    public partial class haber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("dtgazete.mdb"));
            baglanti.Open();
            OleDbDataAdapter komut = new OleDbDataAdapter("Select * From haber Where ID="+id, baglanti);
            DataTable dt = new DataTable();
            komut.Fill(dt);
            tekrar.DataSource = dt;
            tekrar.DataBind();
            baglanti.Close();
        }
    }
}