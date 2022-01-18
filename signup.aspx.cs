using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace BD_doctors_2
{
    public partial class signup : System.Web.UI.Page
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
        protected void Button1_Click(object sender, EventArgs e)

        {
            String bmdc = BMDCid.Text;
           
            string[] BMDC_DATA = { "11111", "22222", "33333", "44444", "55555" ,"66666","77777","88888","12345","12121","1111"};
            if (BMDC_DATA.Contains(bmdc))
            {
                String fname = Path.GetFileName(FileUpload1.FileName);
               
                FileUpload1.SaveAs(Server.MapPath("imgs/") + fname);
                SqlCommand cmd = connect.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into signup values ('" + nameid.Text + "','" + passwardid.Text + "','" + emailid.Text + "','" + BMDCid.Text + "','" + catagoryid.Text + "','" + locationid.Text + "','" + adressid.Text + "','" + feesid.Text + "','" + contactid.Text + "','" + feesid.Text + "','" + FileUpload1.FileName + "')";


                cmd.ExecuteNonQuery();
                HttpCookie cookie = new HttpCookie("UserDetails");
                cookie["Name"] = nameid.Text;
                cookie["Email"] = emailid.Text;
                cookie["Adress"] = adressid.Text;
                cookie["Fees"] = feesid.Text;
                cookie["Contact"] = contactid.Text;
                cookie["Catagory"] = catagoryid.Text;
                cookie["Location"] = locationid.Text;
                cookie["bmdc"] = BMDCid.Text;
                cookie["pic"] = FileUpload1.FileName;


                // Cookie will be persisted for 30 days
                cookie.Expires = DateTime.Now.AddDays(30);
                // Add the cookie to the client machine
                Response.Cookies.Add(cookie);


                Response.Write("data inserted Sucessfully");
                //session
                Session["Name_s"] = nameid.Text;

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid BMDC Number')", true);
            }
           

            

     
          

        }

    }
}

    
