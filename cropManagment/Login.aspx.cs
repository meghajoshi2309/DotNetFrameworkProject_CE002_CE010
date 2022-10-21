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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmessage.Visible = false;
            wrongCred.Visible = false;
        }

        protected void logbtn_Click(object sender, EventArgs e)
        {
            if (catagory.SelectedValue == "Buyer")
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
                try
                {
                    using (con)
                    {
                        con.Open();
                        string command = "select * from Buyer where Email=@email and Password=@pass";
                        SqlCommand cmd = new SqlCommand(command, con);
                        cmd.Parameters.AddWithValue("@email", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@pass", password.Text);

                        SqlDataReader rdr = cmd.ExecuteReader();

                        if (rdr.Read() == true)
                        {
                            Session["email"] = TextBox1.Text;
                            Session["pass"] = password.Text;
                            Response.Redirect("~/BuyerHome.aspx");
                        }
                        else
                        {
                            wrongCred.Visible = true;
                        }

                        con.Close();


                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Erros : " + ex.Message);
                }
            }
            else if (catagory.SelectedValue == "Seller")
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
                try
                {
                    using (con)
                    {
                        con.Open();
                        string command = "select * from Seller where Email=@email and Password=@pass";
                        SqlCommand cmd = new SqlCommand(command, con);
                        cmd.Parameters.AddWithValue("@email", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@pass", password.Text);
                        SqlDataReader rdr = cmd.ExecuteReader();

                        if (rdr.Read() == true)
                        {
                            Session["email"] = TextBox1.Text;
                            Session["pass"] = password.Text;
                            Response.Redirect("~/SellarHome.aspx");
                        }
                        else
                        {
                            wrongCred.Visible = true;
                        }

                        con.Close();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Erros : " + ex.Message);
                }

            }
            else
            {
                lblmessage.Visible = true;
            }
        }
    

    }
}