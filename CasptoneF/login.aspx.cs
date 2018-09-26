using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CasptoneF
{
    public partial class login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string username = usernameTextBox.Text;
            string password = passwordTextBox.Text;

            // String to store sql connection
            string a;
            // Connection string from sql database stored and connection established
            a = ConfigurationManager.ConnectionStrings["testDataConnectionString"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();

            SqlCommand cmd = new SqlCommand("INSERT into new_Table" + "(username,password) values(@username, @password)", con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.ExecuteNonQuery();
        }
    }
}