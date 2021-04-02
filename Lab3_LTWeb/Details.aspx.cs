using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3_LTWeb
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblID.Text = Session["ID"].ToString();
            lblName.Text = Session["Name"].ToString();
            lblAddress.Text = Session["Address"].ToString();
            lblPhone.Text = Session["Phone"].ToString();
            lblPosition.Text = Session["Position"].ToString();
        }
    }
}