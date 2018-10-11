using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CasptoneF
{
    public partial class borrow : System.Web.UI.Page
    {

        string searchText;
        protected void Page_Load(object sender, EventArgs e)
        {

            String s = Request.QueryString["field1"];
            searchText = s.ToString();

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["myDB"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * from [new_Table] where productID = '" + searchText + "'";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();



            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    object binaryData = rd[0];
                    byte[] bytes = (byte[])binaryData;
                    string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);

                    description.Text = rd[1].ToString();
                    mainImage.ImageUrl = "data:image/jpg;base64," + base64String;
                    info.Text = rd[3].ToString();
                }
            }
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void borrowButton_Click(object sender, EventArgs e)
        {
            string id = searchText;

            int newId = Convert.ToInt32(id);
            // String to store sql connection
            string a;
            // Connection string from sql database stored and connection established
            a = ConfigurationManager.ConnectionStrings["myDB"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();

            SqlCommand cmd = new SqlCommand("DELETE From new_Table where productID =" + searchText , con);
            cmd.ExecuteNonQuery();

            Response.Redirect("index.aspx");
        }
    }
}