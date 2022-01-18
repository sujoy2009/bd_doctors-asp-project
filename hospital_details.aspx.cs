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
    public partial class hospital_details : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\sujoydata.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            display_hospital();


          

        }
        protected void display_hospital()
        {
            //khulna
            string location = "Khulna";
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from hospital where location='" + location + "'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            //dhaka
            string location2 = "Dhaka";
            SqlCommand cmd2 = connect.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select * from hospital where location='" + location2 + "'";
            cmd2.ExecuteNonQuery();

            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);
            GridView2.DataSource = dt2;
            GridView2.DataBind();

            //Rajshahi
            string location3 = "Rajshahi";
            SqlCommand cmd3 = connect.CreateCommand();
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandText = "select * from hospital where location='" + location3 + "'";
            cmd3.ExecuteNonQuery();

            DataTable dt3 = new DataTable();
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            da3.Fill(dt3);
            GridView3.DataSource = dt3;
            GridView3.DataBind();
            //chitagong
            string location4 = "Chitagong";
            SqlCommand cmd4 = connect.CreateCommand();
            cmd4.CommandType = CommandType.Text;
            cmd4.CommandText = "select * from hospital where location='" + location4 + "'";
            cmd4.ExecuteNonQuery();

            DataTable dt4 = new DataTable();
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            da4.Fill(dt4);
            GridView4.DataSource = dt4;
            GridView4.DataBind();
        }


    }
}