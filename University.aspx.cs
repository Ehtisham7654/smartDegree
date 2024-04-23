using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartDegreeChoice
{
    public partial class University : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillUni();

            using (SmartDegreeEntities db = new SmartDegreeEntities())
            {
                if (IsPostBack == true) return;
                if (Request.QueryString["UniID"] != null)
                {
                    var UniversityID = Request.QueryString["UniID"];
                    tblUni s = db.tblUnis.FirstOrDefault(v => v.Uni_ID == UniversityID);
                    txtUniID.Text = s.Uni_ID;
                    txtUniName.Text = s.Uni_Name;
                    ddlType.SelectedValue = s.Type.ToString();
                    ddlCampus.SelectedValue = s.Campus.ToString();
                    txtDept.Text = s.No_Of_Dept.ToString();
                    txtLocation.Text = s.Location;
                }
            }

            
            
        }

        protected void FillUni()
        {
            using (SmartDegreeEntities db = new SmartDegreeEntities())
            {
                var Uni = db.GetUni().ToList();
                grdUni.DataSource = Uni;
                grdUni.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SmartDegreeEntities db = new SmartDegreeEntities())
            {
                if (Request.QueryString["UniID"] != null)
                {
                    var UniversityID = Request.QueryString["UniID"];
                    tblUni s = db.tblUnis.FirstOrDefault(v => v.Uni_ID == UniversityID);
                    s.Uni_ID = txtUniID.Text;
                    s.Uni_Name = txtUniName.Text;
                    s.Type = Convert.ToString(ddlType.SelectedValue);
                    s.Campus = Convert.ToString(ddlCampus.SelectedValue);
                    s.No_Of_Dept = Convert.ToInt32(txtDept.Text);
                    s.Location = txtLocation.Text;
                    //db.tblUnis.Add(s);
                    db.SaveChanges();
                    grdUni.DataBind();
                    FillUni();

                    lblAddMsg.Text = "Record Updated Successfully.";
                }
                else
                {
                    tblUni s = new tblUni();
                    s.Uni_ID = txtUniID.Text;
                    s.Uni_Name = txtUniName.Text;
                    s.Type = Convert.ToString(ddlType.SelectedValue);
                    s.Campus = Convert.ToString(ddlCampus.SelectedValue);
                    s.No_Of_Dept = Convert.ToInt32(txtDept.Text);
                    s.Location = txtLocation.Text;
                    db.tblUnis.Add(s);
                    db.SaveChanges();
                    grdUni.DataBind();
                    FillUni();


                    lblAddMsg.Text = "Record Added Successfully.";
                }

                
                    
            }
        }

        
        protected void grdUni_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName =="Edit") 
            {
                Response.Redirect("University.aspx?UniID=" + e.CommandArgument);
            }

            else if (e.CommandName=="Delete")
            {
                var Uni_ID = Convert.ToString(e.CommandArgument);
                using (SmartDegreeEntities db = new SmartDegreeEntities())
                {
                    db.DeleteUni(Uni_ID);
                    
                }

                FillUni();
            }
        }

        protected void grdUni_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void grdUni_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}