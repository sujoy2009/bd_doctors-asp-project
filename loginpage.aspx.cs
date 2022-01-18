using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BD_doctors_2
{
    public partial class loginpage : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\sujoydata.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
             if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
           //connect.Open();

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            try
            {
                string eid = TextBox1.Text;
                string pass = TextBox2.Text;
                connect.Open();
                string qry = "select * from signup where email='" + eid + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, connect);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Response.Write("Login Successful");
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("Login Fail");

                }
                connect.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

    }
}