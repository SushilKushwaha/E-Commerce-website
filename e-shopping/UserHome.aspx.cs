using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_shopping
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            if (Session["Email"]!=null)
            {
                btnsignout.Visible = true;
                btnSignin.Visible = false;
                lblSuccess.Text = "Login Successful, Welcome <b>" + Session["Email"].ToString()+"</b>";
            }
            else
            {
                btnsignout.Visible = false;
                btnSignin.Visible = true;
                //Response.Redirect("~/SignIn.aspx");
            }
        }

        protected void btnsignout_Click(object sender, EventArgs e)
        {
            //Session.Abandon();
            Session["Email"] = null;
            Response.Redirect("~/Default.aspx");
        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");
        }

        public void BindCartNumber()
        {
            if (Request.Cookies["CartPID"] != null)

            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] ProductArray = CookiePID.Split(',');
                int ProductCount = ProductArray.Length;
                pCount.InnerText = ProductCount.ToString();


            }
            else
            {
                pCount.InnerText = 0.ToString();
            }
        }

    }
}