﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gazete
{
    public partial class adminanasayfa : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("haberekle.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("haberduzenle.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("habersil.aspx");
        }
    }
}