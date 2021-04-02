using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3_LTWeb
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(IsValid == true)
            {
                String name = txtName.Text;
                int age = Convert.ToInt32(txtAge.Text);
                DateTime dob = Convert.ToDateTime(txtDOB.Text);
                int SSN = Convert.ToInt32(txtSSN.Text);
                bool sex = Convert.ToInt32(ddlSex.SelectedValue) > 0? true: false;
                String address = txtAddress.Text;
                int phone = Convert.ToInt32(txtPhone.Text);
                int mobile = Convert.ToInt32(txtMobile.Text);
                String email = txtEmail.Text;
                int zipcode = Convert.ToInt32(txtZipCode.Text);

                SqlDataSource1.InsertParameters["Name"].DefaultValue = name;
                SqlDataSource1.InsertParameters["Age"].DefaultValue = age.ToString();
                SqlDataSource1.InsertParameters["DOB"].DefaultValue = dob.ToString();
                SqlDataSource1.InsertParameters["Sex"].DefaultValue = sex.ToString();
                SqlDataSource1.InsertParameters["Address"].DefaultValue = address.ToString();
                SqlDataSource1.InsertParameters["Phone"].DefaultValue = phone.ToString();
                SqlDataSource1.InsertParameters["Mobile"].DefaultValue = mobile.ToString();
                SqlDataSource1.InsertParameters["Email"].DefaultValue = email.ToString();
                SqlDataSource1.InsertParameters["ZipCode"].DefaultValue = zipcode.ToString();
                SqlDataSource1.InsertParameters["SSN"].DefaultValue = SSN.ToString();

                if(SqlDataSource1.Insert() > 0 )
                {
                    lblResult.Text = "You have successfully registed with us";
                }
            }
        }
    }
}