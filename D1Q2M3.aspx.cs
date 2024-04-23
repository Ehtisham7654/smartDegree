﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartDegreeChoice
{
    public partial class D1Q2M1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (rdbtnAlways.Checked == true)
            {
                Response.Redirect("E1Q2M4.aspx");
                return;
            }
            if (rdbtnOften.Checked == true)
            {
                Response.Redirect("E1Q2M4.aspx");
                return;
            }
            if (rdbtnSome.Checked == true)
            {
                Response.Redirect("F1Q2P4.aspx");
                return;
            }
            if (rdbtnRarely.Checked == true)
            {
                Response.Redirect("D1Q4L3.aspx");
                return;
            }
            if (rdbtnNever.Checked == true)
            {
                Response.Redirect("D1Q4L3.aspx");
                return;
            }
        }

        protected void btnTerminate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnRestart_Click(object sender, EventArgs e)
        {
            Response.Redirect("A1Q1.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("C1Q2M2.aspx");

        }
    }
}