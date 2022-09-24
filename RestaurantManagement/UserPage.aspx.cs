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
    public partial class UserPage : System.Web.UI.Page
    {
        string ConString = ConfigurationManager.ConnectionStrings["RestUsersConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            

            try
            {
                // Get user data
                SqlConnection  Conn = new SqlConnection(ConString);
                if (Conn.State == ConnectionState.Closed)
                {
                    Conn.Open();
                }

                UsernameLabel.Text = Session["user"].ToString();

                string GetUDataStr = "select * from rest_users where username='" + Session["user"].ToString() + "'";
                SqlCommand GetUserDataCmd = new SqlCommand(GetUDataStr, Conn);
                SqlDataReader dr = GetUserDataCmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        // UsernameLabel.Text = dr.GetValue(0).ToString();
                        PasswordLabel.Text = dr.GetValue(1).ToString();
                        NameLabel.Text = dr.GetValue(2).ToString();
                    }
                }

                dr.Close();
                Conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')");
            }
        }
    }
}