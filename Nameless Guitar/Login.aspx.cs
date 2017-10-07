using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

public partial class Login : System.Web.UI.Page
{
    private SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        string check = "select count(*) from [User] where Username='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(check, conn);
        int t = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (t == 1)
        {
            conn.Open();
            string checkpass = "select Password from [User] where Username='" + TextBox1.Text + "'";
            SqlCommand com2 = new SqlCommand(checkpass, conn);
            string password = com2.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBox2.Text)
            {
                Session["New"] = TextBox1.Text;
                Response.Write("Password is correct");
                Response.Redirect("MemberManagement.aspx");
            }
            else
            {
                Response.Write("Password is incorrect");
            }
        }
        else
        {
            Response.Write("Username is incorrect");
        }
    }
}