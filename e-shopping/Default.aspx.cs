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
    public partial class Default : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["eshoppingDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProductRepeater();
                BindCartNumber();
            }
            if (Session["Email"] != null)
            {
                // lblSuccess.Text = "Login Successful, Welcome " + Session["Email"].ToString();
                btnSignUP.Visible = false;
                btnSignIN.Visible = false;
                btnsignout.Visible = true;

            }
            else
            {

                btnSignUP.Visible = true;
                btnSignIN.Visible = true;
                btnsignout.Visible = false;
                //Response.Redirect("~/Default.aspx");
            }
        }

        private void BindProductRepeater()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("procBindAllproducts", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProducts.DataSource = dt;
                        rptrProducts.DataBind();
                    }
                }
            }
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

        protected void btnsignout_Click(object sender, EventArgs e)
        {
            Session["Email"] = null;
            Response.Redirect("~/Default.aspx");

        }

       
        protected void txtFilterGrid1Record_TextChanged(object sender, EventArgs e)
        {
            if (txtFilterGrid1Record.Text != string.Empty)
            {
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                string qr = "select A.*,B.*,C.Name ,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName from tblProducts A inner join tblBrands C on C.BrandID =A.PBrandID  cross apply( select top 1 * from tblProductImages B where B.PID= A.PID order by B.PID desc )B where  A.PName like '%" + txtFilterGrid1Record.Text + "%' order by A.PID desc";
                SqlDataAdapter sda = new SqlDataAdapter(qr, con);
                string text = ((TextBox)sender).Text;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    rptrProducts.DataSource = ds.Tables[0];
                    rptrProducts.DataBind();
                }
                else
                {

                }
            }
            else
            {
                BindProductRepeater();
            }
        }
    }
}