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
    public partial class Dashboard1 : System.Web.UI.Page
    {
        string ConString = ConfigurationManager.ConnectionStrings["RestUsersConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection Conn = new SqlConnection(ConString);
            if (Conn.State == ConnectionState.Closed)
            {
                Conn.Open();
            }

            // For Product Count
            string PCountStr = "select count(pro_name) from rest_products";
            SqlCommand ProCountCmd = new SqlCommand(PCountStr, Conn);
            int ProCount = Convert.ToInt32(ProCountCmd.ExecuteScalar().ToString());
            ProCountLabel.Text = ProCount.ToString();

            // For User Count
            string UCountCmdStr = "select count(username) from rest_users";
            SqlCommand UserCountCmd = new SqlCommand(UCountCmdStr, Conn);
            int UserCount = Convert.ToInt32(UserCountCmd.ExecuteScalar().ToString());
            UserCountLabel.Text = UserCount.ToString();

            // For Table Count
            string TCountCmdStr = "select count(tab_num) from rest_tables";
            SqlCommand TabCountCmd = new SqlCommand(TCountCmdStr, Conn);
            int TabCount = Convert.ToInt32(TabCountCmd.ExecuteScalar().ToString());
            TableCountLabel.Text = TabCount.ToString();

            Conn.Close();
        }
    }
}