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
    public partial class SellerProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fn.Text = String.Empty;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;

                using (con)
                {

                    con.Open();
                    SqlCommand command = new SqlCommand("SELECT FirstName,LastName,Email,MobileNo,Company,CompanyActivity,ZipCode,Contry FROM Seller where Email = '" + Session["email"].ToString() + "'", con);
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Console.WriteLine("{0}\t{1}", reader.GetString(0), reader.GetString(1));
                            fn.Text = reader.GetString(0);
                            ln.Text = reader.GetString(1);
                            em.Text = reader.GetString(2);
                            mno.Text = reader.GetString(3);
                            company.Text = reader.GetString(4);
                            companyActivity.Text = reader.GetString(5);
                        }
                    }
                    else
                    {
                        Console.WriteLine("No rows found.");
                    }
                    reader.Close();
                    con.Close();

                }

            }
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
            con.Open();
            string query = "update seller set FirstName= @FirstName, LastName= @LastName , Email=@Email , MobileNo= @MobileNo,Company = @Company,CompanyActivity=@CompanyActivity  where Email='" + Session["email"].ToString() + "' ";
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@FirstName", fn.Text);
                        cmd.Parameters.AddWithValue("@LastName", ln.Text);
                        cmd.Parameters.AddWithValue("@Email", em.Text);
                        cmd.Parameters.AddWithValue("@MobileNo", mno.Text);
                        cmd.Parameters.AddWithValue("@Company", company.Text);
                        cmd.Parameters.AddWithValue("@CompanyActivity", companyActivity.Text);
                       
                       
                        cmd.Connection = con;
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

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Session["email"] = null;
            Session["password"] = null;
            Response.Redirect("/Login.aspx");
            Response.Cache.SetNoStore();
            Response.CacheControl = "no-cache";
        }
    }
}