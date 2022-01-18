using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BD_doctors_2
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login_Click_admin(object sender, EventArgs e)
        {
            string eid = TextBox1.Text;
            string pass = TextBox2.Text;

            if ((eid == "skadmin@gmail.com") && pass=="1212")
            {
                Response.Redirect("admin_panel.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You are not a admin')", true);
            }
        }
        }
}