using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagement
{
    public partial class Register : System.Web.UI.Page
    {
        string ConString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Amey\\source\\repos\\RestaurantManagement\\RestaurantManagement\\App_Data\\RestDB.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Conn = new SqlConnection(ConString);
                if (Conn.State == ConnectionState.Closed)
                {
                    Conn.Open();
                }

                if (RepasswordTextBox.Text == PasswordTextBox.Text)
                {
                    SqlCommand regcmd = new SqlCommand("insert into rest_users(username,passwords) values(@username,@password)", Conn);

                    regcmd.Parameters.AddWithValue("@username", UsernameTextBox.Text.Trim());
                    regcmd.Parameters.AddWithValue("@password", PasswordTextBox.Text.Trim());
                    regcmd.ExecuteNonQuery();

                    Response.Write("<script>alert(Login Successful)</script>");
                    Conn.Close();
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Login failed. Try again.')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + ")</script>");
            }
        }
    }
}