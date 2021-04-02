using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3_LTWeb
{
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            String id = txtID.Text;
            String name = txtName.Text;
            String address = txtAddress.Text;
            String phone = txtPhone.Text;
            String designation = ddlDesignation.SelectedValue;

            SqlDataSource1.InsertParameters["EmpID"].DefaultValue = id;
            SqlDataSource1.InsertParameters["EmpName"].DefaultValue = name;
            SqlDataSource1.InsertParameters["EmpAddress"].DefaultValue = address;
            SqlDataSource1.InsertParameters["EmpPhone"].DefaultValue = phone;
            SqlDataSource1.InsertParameters["EmpPosition"].DefaultValue = designation;

            SqlDataSource1.Insert();
        }

        protected void lbtnDetails_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            int i = row.RowIndex;


            Session["ID"] = gvEmployee.Rows[i].Cells[0].Text;
            Session["Name"] = gvEmployee.Rows[i].Cells[1].Text;
            Session["Address"] = gvEmployee.Rows[i].Cells[2].Text;
            Session["Phone"] = gvEmployee.Rows[i].Cells[3].Text;
            Session["Position"] = gvEmployee.Rows[i].Cells[4].Text;

            Response.Redirect("Details.aspx");
        }
    }
}