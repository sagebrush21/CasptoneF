﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CasptoneF
{
    public partial class signUp : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
                string username = usernameTextBox.Text;
                string password = passwordTextBox.Text;

                // String to store sql connection
                string a;
                // Connection string from sql database stored and connection established
                a = ConfigurationManager.ConnectionStrings["myDB"].ToString();
                SqlConnection con = new SqlConnection(a);
                con.Open();

                SqlCommand cmd = new SqlCommand("INSERT into loginTable" + "(username,password) values(@username, @password)", con);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.ExecuteNonQuery();

                Response.Redirect("login.aspx");

            

        }
    }
}