using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BD_doctors_2
{
    public partial class user_detail : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            
          
            HttpCookie cookie = Request.Cookies["UserDetails"];
            if (cookie != null)
            {


               // lblName.Text = cookie["Name"];
                //lblEmaill.Text = cookie["Email"];
               // CONTACT.Text = cookie["Contact"];
               // adress.Text = cookie["Adress"];
               // fees.Text = cookie["Fees"];

              
                String name= cookie["Name"];
                String contact = cookie["Contact"];
                String email = cookie["Email"];
                String fees = cookie["Fees"];
                String catagory = cookie["Catagory"];
                String location = cookie["Location"];
                String adress = cookie["Adress"];
                String pic = cookie["pic"];
               



                name_l.Text = "Name :" + name + "";
                contact_l.Text = "Contact :" + contact + "";
                fees_l.Text = "Adress :" + adress + "";
                catagory_l.Text = "Fees :" + fees + "";
                location_l.Text = "Catagory :" + catagory + "";
                adress_l.Text = "Location :" + location + "";
                email_l.Text = "Email :" + email + "";

                picid.Src = "imgs/"+pic+"";
                //session
                  if (Session["Name_s"] != null)
    {
                                 hellow_name.Text = Session["Name_s"].ToString();    
    }

            }

        }
        protected void update_button(object sender, EventArgs e)
        {
            Response.Redirect("update_form.aspx");
        }
    }
}