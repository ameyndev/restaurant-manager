using Microsoft.SqlServer.Server;
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
    public partial class Settings : System.Web.UI.Page
    {
        string ConString = ConfigurationManager.ConnectionStrings["RestUsersConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("Login.aspx");
                }

                SqlConnection Conn = new SqlConnection(ConString);
                if (Conn.State == ConnectionState.Closed)
                {
                    Conn.Open();
                }

                string GetUserDetCmdStr = "select * from rest_users where username='" + Session["user"].ToString() + "'";
                SqlCommand GetUserDetCmd = new SqlCommand(GetUserDetCmdStr, Conn);
                SqlDataReader dr = GetUserDetCmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        UserNameTextBox.Text = dr.GetValue(0).ToString();
                        PasswordTextBox.Text = dr.GetValue(1).ToString();
                        NameTextBox.Text = dr.GetValue(2).ToString();
                    }
                }
                GetUserDetCmd.Dispose();
                dr.Close();
                // Conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'</script>");
            }
        }

        protected void SaveChangesButton_Click(object sender, EventArgs e)
        {
            string ConString = ConfigurationManager.ConnectionStrings["RestUsersConnectionString"].ConnectionString;

            SqlConnection Conn = new SqlConnection(ConString);
            if (Conn.State == ConnectionState.Closed)
            {
                Conn.Open();
            }

            string SessionUser = Session["user"].ToString();
            string SaveChgCmdStr1 = "update rest_users set username='" + UserNameTextBox.Text + "', passwords='" + PasswordTextBox.Text + "', full_name='" + NameTextBox.Text + "' where username='" + Session["user"].ToString() + "'";
            string SaveChngCmdStr = "update rest_users set passwords='" + PasswordTextBox.Text + "', full_name='" + NameTextBox.Text + "' where username='" + Session["user"].ToString() + "'";
            SqlCommand SaveChngCmd = new SqlCommand(SaveChgCmdStr1, Conn);
            int RowsAffected = SaveChngCmd.ExecuteNonQuery();
            
            if (RowsAffected > 1)
            {
                Session["user"] = UserNameTextBox.Text;
            }
            
            Response.Redirect("UserPage.aspx");
            Response.Write("<script>alert('Changes Saved')</script>");

            // Conn.Close();
        }
    }
}

