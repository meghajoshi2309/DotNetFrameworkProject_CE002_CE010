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
    public partial class RegSeller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void singnups_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
            string query = "INSERT INTO Seller (FirstName,LastName,Email,MobileNo,Company,CompanyActivity,ZipCode,Contry,Password,ConfirmPassword) VALUES(@FirstName,@LastName,@Email,@MobileNo,@Company,@CompanyActivity,@ZipCode,@Country,@Password,@ConfirmPassword)";
            try
            {
                using(con)
                {
                    using(SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@FirstName", fn.Text);
                        cmd.Parameters.AddWithValue("@LastName", ln.Text);
                        cmd.Parameters.AddWithValue("@Email", email.Text);
                        cmd.Parameters.AddWithValue("@MobileNo", mn.Text);
                        cmd.Parameters.AddWithValue("@Company", cmp.Text);
                        cmd.Parameters.AddWithValue("@CompanyActivity", cmpa.Text);
                        cmd.Parameters.AddWithValue("@ZipCode", zip.Text);
                        cmd.Parameters.AddWithValue("@Country", cnt.Text);
                        cmd.Parameters.AddWithValue("@Password", pass.Text);
                        cmd.Parameters.AddWithValue("@ConfirmPassword",cpass.Text);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                if (IsPostBack)
                {
                    Response.Redirect("~/Login.aspx");
                }

            }
            catch(Exception ex)
            {
                Response.Write("Erros : " + ex.Message);
            }
        }

        protected void fn_TextChanged(object sender, EventArgs e)
        {

        }
    }
}