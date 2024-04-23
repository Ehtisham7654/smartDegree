using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartDegreeChoice
{
    public partial class Degree : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillDeg();

            using (SmartDegreeEntities db = new SmartDegreeEntities())
            {
                if (IsPostBack == true) return;
                if (Request.QueryString["DegID"] != null)
                {
                    var DegreeID = Request.QueryString["DegID"];
                    tblDegree s = db.tblDegrees.FirstOrDefault(v => v.Deg_ID == DegreeID);
                    txtDegID.Text = s.Deg_ID;
                    txtDegName.Text = s.Deg_Name;
                    ddlDept.SelectedValue = s.Department.ToString();
                    txtDuration.Text = s.Duration;
                    txtFee.Text = s.Fee;
                    txtUniversity.Text = s.Uni_Name;
                    txtDescription.Text = s.Description;


                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SmartDegreeEntities db = new SmartDegreeEntities())
            {
                if (Request.QueryString["DegID"] != null)
                {
                    var DegreeID = Request.QueryString["DegID"];
                    tblDegree s = db.tblDegrees.FirstOrDefault(u => u.Deg_ID == DegreeID);
                    s.Deg_ID = txtDegID.Text;
                    s.Deg_Name = txtDegName.Text;
                    s.Department = Convert.ToString(ddlDept.SelectedValue);
                    s.Duration = txtDuration.Text;
                    s.Fee = txtFee.Text;
                    s.Uni_Name = txtUniversity.Text;
                    s.Description = txtDescription.Text;
                   // db.tblDegrees.Add(s);
                    db.SaveChanges();
                    grdDeg.DataBind();
                    FillDeg();
                    lblAddMsg.Text = "Record Updated Succesfully";

                }
                else
                {
                    tblDegree s = new tblDegree();
                    s.Deg_ID = txtDegID.Text;
                    s.Deg_Name = txtDegName.Text;
                    s.Department = Convert.ToString(ddlDept.SelectedValue);
                    s.Duration = txtDuration.Text;
                    s.Fee = txtFee.Text;
                    s.Uni_Name = txtUniversity.Text;
                    s.Description = txtDescription.Text;
                    db.tblDegrees.Add(s);
                    db.SaveChanges();
                    grdDeg.DataBind();
                    FillDeg();
                    lblAddMsg.Text = "Record Added Succesfully";
                }
                

            }
        }

        protected void grdDeg_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                Response.Redirect("Degree.aspx?DegID=" + e.CommandArgument);

            }

            else if (e.CommandName == "Delete")
            {
                var Deg_ID = Convert.ToString(e.CommandArgument);
                using (SmartDegreeEntities db = new SmartDegreeEntities())
                {
                    db.DeleteDeg(Deg_ID);

                }

                FillDeg();
            }
        }

        protected void grdDeg_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void grdDeg_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void FillDeg()
        {
            using (SmartDegreeEntities db = new SmartDegreeEntities())
            {
                var Deg = db.GetDeg().ToList();
                grdDeg.DataSource = Deg;
                grdDeg.DataBind();
            }
        }
    }
}