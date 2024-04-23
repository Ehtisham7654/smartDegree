using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartDegreeChoice
{
    public partial class J1Q4L9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (rdbtnAlways.Checked == true)
            {
                Response.Redirect("K1Q4L10.aspx");
                return;
            }
            if (rdbtnOften.Checked == true)
            {
                Response.Redirect("K1Q4L10.aspx");
                return;
            }
            if (rdbtnSome.Checked == true)
            {
                Response.Redirect("N1Q1.aspx");
                return;
            }
            if (rdbtnRarely.Checked == true)
            {
                Response.Redirect("I1Q2P7.aspx");
                return;
            }
            if (rdbtnNever.Checked == true)
            {
                Response.Redirect("I1Q2P7.aspx");
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
            Response.Redirect("I1Q4L8.aspx");

        }
    }
}