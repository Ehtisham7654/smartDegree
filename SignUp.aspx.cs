using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartDegreeChoice
{
    public partial class SignUp1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butnSign_Click(object sender, EventArgs e)
        {
            using(SmartDegreeEntities db = new SmartDegreeEntities())
            {
                tblSignUp s = new tblSignUp();
                s.Full_Name = txtFullName.Text;
                s.User_Name = txtUserName.Text;
                s.Email = txtEmail.Text;
                s.Password = txtPasswordSign.Text;
                s.Address= txtAddress.Text;
                s.Phone = txtPhone.Text;
                db.tblSignUps.Add(s);
                db.SaveChanges();

                Response.Redirect("Home.aspx");

            }
        }
    }
}