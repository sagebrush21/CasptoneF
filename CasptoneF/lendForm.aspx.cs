using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CasptoneF
{
    public partial class LendForm : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            // String to store sql connection
            string a;
            // Connection string from sql database stored and connection established
            a = ConfigurationManager.ConnectionStrings["myDB"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();

            if (!imageFileUpload.HasFile)
            {

            }
            else
            {
                // Obtain image length
                int length = imageFileUpload.PostedFile.ContentLength;
                // 
                byte[] pic = new byte[length];
                imageFileUpload.PostedFile.InputStream.Read(pic, 0, length);
                SqlCommand cmd = new SqlCommand("INSERT into new_Table" + "(image,description,name,location,email) values(@image, @description, @name, @location, @email)", con);
                cmd.Parameters.AddWithValue("@image", pic);
                cmd.Parameters.AddWithValue("@description", descriptionTextBox.Text);
                cmd.Parameters.AddWithValue("@name", nameTextBox.Text);
                cmd.Parameters.AddWithValue("@location", cityTextBox.Text);
                cmd.Parameters.AddWithValue("@email", emailTextBox.Text);
                cmd.ExecuteNonQuery();
            }


            Response.Redirect("login.aspx");

        }
    }
}