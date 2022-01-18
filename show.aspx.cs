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
    public partial class show : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\sujoydata.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_div.Visible = false;
            list_div.Visible = false;
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
           

        }
        protected void show_doc_list(object sender, EventArgs e)
        {
            display();

        }
        public void display()
        {
            grid_div.Visible = true;
            list_div.Visible = true;
            string catagory = catagoryid.Text;
            string location = locationid.Text;
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select name,catagory,location,adress,tk,contact from signup where catagory='"+catagory+"' and location='"+location+"'";
            cmd.ExecuteNonQuery();
     
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
          
           
            
            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data not  found')", true);
            }
            else
            {
                Response.Write("data recieved Sucessfully");
               
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            SqlCommand cmd2 = connect.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select name,catagory,location,adress,tk,pic,contact from signup where catagory='" + catagory + "' and location='" + location + "'";

         
            SqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows == true)
            {
                DataList1.DataSource = dr;
                DataList1.DataBind();

            }
          


        }
    }
}