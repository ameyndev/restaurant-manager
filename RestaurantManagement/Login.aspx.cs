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
    public partial class Login : System.Web.UI.Page
    {
        string ConString = ConfigurationManager.ConnectionStrings["RestUsersConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Conn = new SqlConnection(ConString);

                if (Conn.State == ConnectionState.Closed)
                {
                    Conn.Open();
                }

                SqlCommand LoginCmd = new SqlCommand("select * from rest_users where username='" + InputUsername.Text + "' and passwords='" + InputPassword.Text + "'", Conn);
                SqlDataReader dr = LoginCmd.ExecuteReader();
                if(dr.HasRows)
                {
                    Session["user"] = InputUsername.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Login failed')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}