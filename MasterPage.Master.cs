using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartDegreeChoice
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkbtnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("DegSearch.aspx");
        }

        protected void lnkbtnUserLogin_Click(object sender, EventArgs e)
        {

            Response.Redirect("UserLogin.aspx");
        }

        protected void lnkbtnSignUp_Click(object sender, EventArgs e)
        {

            Response.Redirect("SignUp.aspx");
        }

        protected void lnkbtnUni_Click(object sender, EventArgs e)
        {

            Response.Redirect("University.aspx");
        }

        protected void lnkbtnDegree_Click(object sender, EventArgs e)
        {

            Response.Redirect("Degree.aspx");
        }

        protected void lnkbtnFind_Click(object sender, EventArgs e)
        {
            Response.Redirect("A1Q1.aspx");
        }
    }
}