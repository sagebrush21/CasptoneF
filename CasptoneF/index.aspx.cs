using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace CasptoneF
{
	public partial class index : System.Web.UI.Page
	{
        StringBuilder test = new StringBuilder();
        
		protected void Page_Load(object sender, EventArgs e)
		{
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["testDataConnectionString"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * from [new_Table]";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();

            if(rd.HasRows)
            {
                while (rd.Read())
                {
                    object binaryData = rd[1];
                    byte[] bytes = (byte[])binaryData;

                    test.Append("<div class='col-lg'>");
                    test.Append("<div class='card border-0mx-auto' style='width: 18rem; '>");
                    test.Append("<img class='card-img-top'" + "src='data:image/png;base64,"+ Convert.ToBase64String(bytes, 0, bytes.Length)+ "' alt='Card image cap'>");
                    test.Append("<div class='card-body'>");
                    test.Append("<h5 class='card-title text-center'><a href='#'><button type='button' class='mainButton'>"+rd[2]+"</button></a></h5>");
                    test.Append("</div>");
                    test.Append("</div>");
                    test.Append("</div>");
                }
            }

            testPlaceHolder.Controls.Add(new Literal {Text = test.ToString()});
            rd.Close();
		}

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}