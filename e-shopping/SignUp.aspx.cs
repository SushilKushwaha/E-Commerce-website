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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsignup_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["eshoppingDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers(Firstname,Lastname,Gender,Email,Password,Usertype) Values('" + txtFname.Text + "','" + txtLname.Text + "',' " + txtgender.Text + "',' " + txtEmail.Text + "','" + txtPass.Text + "','User')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Registration Successfully done');  </script>");
                    clr();
                    con.Close();
    
                }
                Response.Redirect("~/SignIn.aspx");

            }
            else
            {
                Response.Write("<script> alert('Registration Failed');  </script>");
                
            }

            
        }
        private bool isformvalid()

        {

           if (txtPass.Text == "")
            {
                Response.Write("<script> alert('Password not valid');  </script>");
                txtPass.Focus();
                return false;
            }
            else if (txtPass.Text != txtCPass.Text)
            {
                Response.Write("<script> alert('confirm Password not valid');  </script>");
                txtCPass.Focus();
                return false;
            }
            return true;

        }
        private void clr()
        {
            txtFname.Text = string.Empty;
            txtLname.Text = string.Empty;
            txtgender.Text = string.Empty;
            
            txtPass.Text = string.Empty;
            txtCPass.Text = string.Empty;
           
        }
    }
}