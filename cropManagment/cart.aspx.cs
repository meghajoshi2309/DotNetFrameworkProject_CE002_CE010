using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace cropManagment
{
    public partial class cart : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
            
            using (con)
            {

                con.Open();
                SqlCommand command = new SqlCommand("SELECT Id FROM Buyer where Email = '" + Session["email"].ToString() + "'", con);
                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        
                        id = reader.GetInt32(0);
                        Session["id"] = id;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
                con.Close();

            }
            Response.Write(Session["price"]);
            
        }

        protected void purchase_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
            string query = "Delete From Cart where bid = '" + id + "'";
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                
            }

            catch (Exception ex)
            {
                Response.Write("Erros : " + ex.Message);
            }
            Response.Redirect("~/BuyerHome.aspx");
        }

        protected void backbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyerHome.aspx");
        }
    }
}