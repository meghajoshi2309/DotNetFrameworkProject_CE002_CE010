using System;
using System.Collections.Generic;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cropManagment
{
    public partial class SellarHome : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void AddProductbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
            string query = "INSERT INTO Product (ProductName,Category,Price,AvailableQuantity) VALUES(@pname,@category,@price,@available)";
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@pname", ProductName.Text);
                        cmd.Parameters.AddWithValue("@category", Category.Text);
                        cmd.Parameters.AddWithValue("@price", Price.Text);
                        cmd.Parameters.AddWithValue("@available", AvailableQuantity.Text);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                GridViewProd.DataBind();
                //Response.Redirect("~/SellerHome.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Erros : " + ex.Message);
            }
        }        

        protected void profilebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SellerProfile.aspx");
        }

        protected void GridViewProd_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}