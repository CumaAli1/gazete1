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
    public partial class AnaSayfa : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["kullanici"] == null)
            {
                cksd.Visible = false;
            }
            else
            {
                grsd.Visible = false;
                cksd.Visible = true;
            }
        }
    }
}