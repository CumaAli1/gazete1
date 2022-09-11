using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace gazete
{
    public partial class giriş : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["kullanici"] !=null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void btngiris_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source="+ Server.MapPath("dtgazete.mdb"));
            try
            {
                baglanti.Open();


                string mail = txtmail.Text.Trim();
                string sifre = txtsifre.Text.Trim();

                string sorgu = "SELECT * FROM kullanicilar WHERE kullanicimail=@mail1 AND kullanicisifre=@sifre1 ";

                OleDbParameter pm1 = new OleDbParameter("mail1", mail);
                OleDbParameter pm2 = new OleDbParameter("sifre1", sifre);
                OleDbCommand komut = new OleDbCommand(sorgu, baglanti);

                komut.Parameters.Add(pm1);
                komut.Parameters.Add(pm2);

                //DataTable dt = new DataTable();
                OleDbDataReader dr = komut.ExecuteReader();
                
                if (dr.Read())
                {
                    Session.Add("kullanici", dr[1].ToString());
                    Session.Timeout = 5;

                    if(mail=="admin" && sifre == "admin")
                    {
                        Response.Redirect("indexadmin.aspx");
                    }
                    else
                    {
                        
                        Response.Redirect("index.aspx");
                    }
                   
                }
                else
                {
                    uyarı.Text = "giriş hatalı";
                }
                

            }
            catch
            {

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayıt.aspx");
        }
    }
}