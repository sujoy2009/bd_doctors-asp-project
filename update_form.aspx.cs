using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BD_doctors_2
{
    public partial class update_form : System.Web.UI.Page
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
        protected void update_click(object sender, EventArgs e)
        {
            String fname = Path.GetFileName(FileUpload1.FileName);

            FileUpload1.SaveAs(Server.MapPath("imgs/") + fname);
            HttpCookie cookie = new HttpCookie("UserDetails");
            String bmdc = cookie["bmdc"];
           
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into signup values ('" + nameid.Text + "','" + passwardid.Text + "','" + emailid.Text + "','" + BMDCid.Text + "','" + catagoryid.Text + "','" + locationid.Text + "','" + adressid.Text + "','" + feesid.Text + "','" + contactid.Text + "','" + feesid.Text + "','" + FileUpload1.FileName + "')";
            cmd.CommandText = "update signup set name = '" + nameid.Text + "', fees = '" + feesid.Text + "', email = '" + emailid.Text + "', contact = '" + contactid.Text + "', pic = '" + FileUpload1.FileName + "' where bmdc =" + BMDCid.Text + " ";

            cmd.ExecuteNonQuery();
           
            cookie["Name"] = nameid.Text;
            cookie["Email"] = emailid.Text;
            cookie["Adress"] = adressid.Text;
            cookie["Fees"] = feesid.Text;
            cookie["Contact"] = contactid.Text;
            cookie["Catagory"] = catagoryid.Text;
            cookie["Location"] = locationid.Text;
            cookie["pic"] = FileUpload1.FileName;


            // Cookie will be persisted for 30 days
            cookie.Expires = DateTime.Now.AddDays(30);
            // Add the cookie to the client machine
            Response.Cookies.Add(cookie);


            Response.Write(bmdc);
            //session
            Session["Name_s"] = nameid.Text;
        }
    }
}