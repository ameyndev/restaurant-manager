using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagement
{
    public partial class AddProduct : System.Web.UI.Page
    {
        string ConString = ConfigurationManager.ConnectionStrings["RestUsersConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void AddProductButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Conn = new SqlConnection(ConString);
                if (Conn.State == ConnectionState.Closed)
                {
                    Conn.Open();
                }

                string AddProdCmdStr = "insert into rest_products(pro_name,pro_category,pro_price) values('" + ProductNameTb.Text + "', '" + DropDownList1.Text + "','" + ProductPriceTb.Text + "')";
                SqlCommand AddProdCmd = new SqlCommand(AddProdCmdStr, Conn);
                AddProdCmd.ExecuteNonQuery();
                Response.Write("<script>alert('Table entered')</script>");
                Response.Redirect("Products.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')");
            }
        }
    }
}