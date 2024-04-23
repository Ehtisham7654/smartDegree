using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartDegreeChoice
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginAdm_Click(object sender, EventArgs e)
        {
            using(SmartDegreeEntities db = new SmartDegreeEntities())
            {
                var query = db.AdminLogin(txtEmail.Text, txtPassword.Text).ToList();
                
                if(query.Count>0)
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lblmsg2.Text = "Invalid Email or Password";
                }
            }
        }
    }
}