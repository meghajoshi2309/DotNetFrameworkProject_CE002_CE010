using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cropManagment
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmessage.Visible = false;
        }

        protected void conregbtn_Click(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedValue == "seller")
            {
                Response.Redirect("~/RegSeller.aspx");
            }
            else if(RadioButtonList1.SelectedValue == "buyer")
            {
                Response.Redirect("~/RegBuyer.aspx");
            }
            else
            {
                lblmessage.Visible = true;                
            }
        }
    }
}