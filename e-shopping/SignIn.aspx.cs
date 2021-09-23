using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace e_shopping
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(!IsPostBack)
            {
                if(Request.Cookies["Email"] !=null && Request.Cookies["Password"] != null)
                {
                    txtEmail.Text = Request.Cookies["Email"].Value;
                    txtPass.Text = Request.Cookies["Password"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }

        

        protected void btnsignIn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["eshoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email='"+txtEmail.Text+"' and Password='"+txtPass.Text+"'", con);
               // cmd.Parameters.AddWithValue("@email", txtEmail.Text);

               // cmd.Parameters.AddWithValue("@password", txtPass.Text);

                
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count !=0)
                {
                    Session["USERID"] = dt.Rows[0]["Uid"].ToString();
                    Session["USEREMAIL"] = dt.Rows[0]["Email"].ToString();
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["Email"].Value = txtEmail.Text;
                        Response.Cookies["Password"].Value = txtPass.Text;

                        Response.Cookies["Email"].Expires = DateTime.Now.AddDays(10);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(10);
                    }
                    else
                    {
                        Response.Cookies["Email"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                    }

                    string Utype;
                    Utype = dt.Rows[0][6].ToString().Trim();


                    if(Utype =="User")
                    {
                        Session["Email"] = txtEmail.Text;
                        if (Request.QueryString["rurl"] != null)
                        {
                            if (Request.QueryString["rurl"] == "cart")
                            {
                                Response.Redirect("~/Cart.aspx");
                            }
                        }
                        else
                        {
                            Response.Redirect("~/UserHome.aspx");
                        }
                       

                    }
                     if(Utype == "Admin")
                    { 
                        Session["Email"] = txtEmail.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }

                }
                else
                {
                    lblError.Text = "Invalid Email or Password";
                }



                clr();
                con.Close();

            }
        }

        private void clr()
        {
            txtEmail.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtEmail.Focus();
        }
    }
}