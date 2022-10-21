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
    public partial class RegBuyer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void singupb_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cropsConnection"].ConnectionString;
            string query = "INSERT INTO Buyer (FirstName,LastName,Email,MobileNo,ZipCode,Contry,PrefferedProduction,Password,ConfirmPassword) VALUES(@FirstName,@LastName,@Email,@MobileNo,@ZipCode,@Country,@PrefferedProduction,@Password,@ConfirmPassword)";
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@FirstName", fnameb.Text);
                        cmd.Parameters.AddWithValue("@LastName", lnameb.Text);
                        cmd.Parameters.AddWithValue("@Email", emailb.Text);
                        cmd.Parameters.AddWithValue("@MobileNo", mnb.Text);
                        cmd.Parameters.AddWithValue("@PrefferedProduction", pefferdb.Text);
                        cmd.Parameters.AddWithValue("@ZipCode", zipb.Text);
                        cmd.Parameters.AddWithValue("@Country", contryb.Text);
                        cmd.Parameters.AddWithValue("@Password", passb.Text );
                        cmd.Parameters.AddWithValue("@ConfirmPassword", cpassb.Text );
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
            catch (Exception ex)
            {
                Response.Write("Erros : " + ex.Message);
            }
        }
    }
}