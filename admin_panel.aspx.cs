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
    public partial class admin_panel : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\sujoydata.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();

        }
        protected void hospital_entry_Click(object sender, EventArgs e)

        {
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into hospital values ('" + nameid.Text + "','" + dateid.Text + "','" + contactid.Text + "','" + adressid.Text + "','" + locationid.Text + "')";


            cmd.ExecuteNonQuery();
            Response.Write("data inserted Sucessfully");
        }
    }
}