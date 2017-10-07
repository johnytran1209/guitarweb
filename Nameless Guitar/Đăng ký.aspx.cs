using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class Đăng_ký : System.Web.UI.Page
{
    private SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    private int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            
            conn.Open();
            string check = "select count(*) from [User] where Username='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(check,conn);
            string count = "select count(*) from [User]";
            SqlCommand com2 = new SqlCommand(count,conn);
            i = Convert.ToInt32(com2.ExecuteScalar().ToString());
            int t = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (t == 1)
            {
                Response.Write("User is already exist");
            }
            conn.Close();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            /*string insert = "insert into [User] (Username,E-mail,Password) values (@un,@em,@pass)";
            SqlCommand com = new SqlCommand(insert, conn);
            com.Parameters.AddWithValue("@un",TextBox1);
            com.Parameters.AddWithValue("@em", TextBox2);
            com.Parameters.AddWithValue("@pass", TextBox3);
            com.ExecuteNonQuery();*/
            string insert = String.Format("insert into [User] ('{0}','{1}','{2}','{3}')",i++,TextBox1,TextBox2,TextBox3);
            SqlCommand com = new SqlCommand(insert,conn);
            com.ExecuteNonQuery();
            Response.Redirect("MemberManagement.aspx");
            Response.Write("Registration is successful");
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex);
        }
    }
}