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

    public partial class AddTable : System.Web.UI.Page
    {
        string ConString = ConfigurationManager.ConnectionStrings["RestUsersConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void AddTableButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Conn = new SqlConnection(ConString);
                if (Conn.State == ConnectionState.Closed)
                {
                    Conn.Open();
                }

                string AddTableCmdStr = "insert into rest_tables(tab_num, tab_status) values('" + TableNumberTb.Text + "', '" + DropDownList1.Text + "')";
                SqlCommand AddTableCmd = new SqlCommand(AddTableCmdStr, Conn);
                AddTableCmd.ExecuteNonQuery();
                Response.Write("<script>alert('Table entered')</script>");
                Response.Redirect("Tables.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')");
            }

        }
    }
}