﻿using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaTecnica
{
    public partial class frmInfo : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string strNoDoc = Page.Request.Form["txtNumeroDoc"].ToString();
           
        }
    }
}