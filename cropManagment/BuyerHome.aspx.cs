using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cropManagment
{
    public partial class BuyerHome : System.Web.UI.Page
    {
        int price=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
             
        }

        protected void oil_Click(object sender, ImageClickEventArgs e)
        {
            Session["category"] = "Oil";
           
        }

        protected void grains_Click(object sender, ImageClickEventArgs e)
        {
            Session["category"] = "Grain";
        }

        protected void nuts_Click(object sender, ImageClickEventArgs e)
        {
            Session["category"] = "DryFruts";
        }

        protected void buyerProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BuyerProfile.aspx");
        }

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
            int id = 0;
            using (con1)
            {

                con1.Open();
                SqlCommand command = new SqlCommand("SELECT Id FROM Buyer where Email = '" + Session["email"].ToString() + "'", con1);
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
                con1.Close();

            }
            
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
            string query = "INSERT INTO Cart (ProductName,Price,bid) VALUES(@pn,@price,@bid)";
            
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@pn",GridView1.SelectedRow.Cells[1].Text);
                        cmd.Parameters.AddWithValue("@price", GridView1.SelectedRow.Cells[2].Text);
                        cmd.Parameters.AddWithValue("@bid", id);
                        price = price + Int32.Parse(GridView1.SelectedRow.Cells[2].Text);
                        Session["price"] = price;
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
        }

        protected void cartbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cart.aspx");
        }
    }
}