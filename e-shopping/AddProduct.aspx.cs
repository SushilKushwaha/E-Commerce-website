using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace e_shopping
{
    public partial class AddProduct : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["eshoppingDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindBrand();
                BindCategory();
                ddlSubCategory.Enabled = false;
                BindGender();
                ddlGender.Enabled = false;
                BindGridview1();

            }
        }

        private void BindGridview1()
        {
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand(" select distinct t1.PID,t1.PName,t1.PPrice,t1.PSelPrice,t2.Name as Brand,t3.CatName,t4.SubCatName, t5.GenderName as gender,t6.SizeName,t8.Quantity from tblProducts as t1  inner join tblBrands as t2 on t2.BrandID=t1.PBrandID  inner join tblCategory as t3 on t3.CatID=t1.PCategoryID  inner join tblSubCategory as t4 on t4.SubCatID=t1.PSubCatID   inner join tblGender as t5 on t5.GenderID =t1.PGender   inner join tblSizes as t6 on t6.SubCategoryID=t1.PSubCatID  inner join tblProductSizeQuantity as t8 on t8.PID=t1.PID order by t1.PName", con);
           
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }

        }

        private void BindGender()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblGender with(nolock)", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlGender.DataSource = dt;
                    ddlGender.DataTextField = "GenderName";
                    ddlGender.DataValueField = "GenderID";
                    ddlGender.DataBind();
                    ddlGender.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblCategory", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        private void BindBrand()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblBrands", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlBrand.DataSource = dt;
                    ddlBrand.DataTextField = "Name";
                    ddlBrand.DataValueField = "BrandID";
                    ddlBrand.DataBind();
                    ddlBrand.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }

        }





        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Pname",txtPName.Text);
                cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
                cmd.Parameters.AddWithValue("@PSelPrice", txtsellPrice.Text);
                cmd.Parameters.AddWithValue("@PBrandID", ddlBrand.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PSubCatID", ddlSubCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PGender", ddlGender.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PDescription", txtDescription.Text);
                cmd.Parameters.AddWithValue("@PProductDetails", txtPDetails.Text);
                cmd.Parameters.AddWithValue("@PMaterialCare", txtMatCare.Text);
                if(cbFD.Checked ==true)
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
                }


                if (cb15Ret.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@15DayRet", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@15DayRet", 0.ToString());
                }

                if (cbCOD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@COD", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@COD", 0.ToString());
                }
                con.Open();
                Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());


                //Insert size quantity
                for(int i=0; i<cblSize .Items .Count;i++)
                {
                    if(cblSize.Items [i].Selected ==true)
                    {
                        Int64 SizeID = Convert.ToInt64(cblSize.Items[i].Value);
                        int Quantity = Convert.ToInt32(txtQuantity.Text);

                        SqlCommand cmd2 = new SqlCommand("insert into tblProductSizeQuantity values('" + PID + "','" + SizeID + "','" + Quantity + "')", con);
                        cmd2.ExecuteNonQuery();
                    }
                }

                //Insert and upload images
                if(fuImg01.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/ProductImages/") + PID;
                    if(!Directory.Exists (SavePath ))
                    {
                        Directory.CreateDirectory(SavePath);

                    }
                    string Extension = Path.GetExtension(fuImg01.PostedFile.FileName);
                    fuImg01.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "01" + Extension);

                    SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtPName.Text.ToString ().Trim() + "01"+ "','" + Extension + "')", con);
                    cmd3.ExecuteNonQuery();
                }

                //2nd fileupload

                if (fuImg02.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/ProductImages/") + PID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extension = Path.GetExtension(fuImg02.PostedFile.FileName);
                    fuImg02.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "02");

                    SqlCommand cmd4 = new SqlCommand("insert into tblProductImages  values('" + PID + "','" + txtPName.Text.ToString().Trim() + "02" + "','" + Extension + "')", con);
                    cmd4.ExecuteNonQuery();
                }

                //3rd file upload

                if (fuImg03.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/ProductImages/") + PID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extension = Path.GetExtension(fuImg03.PostedFile.FileName);
                    fuImg03.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "03");

                    SqlCommand cmd5 = new SqlCommand("insert into tblProductImages  values('" + PID + "','" + txtPName.Text.ToString().Trim() + "03" + "','" + Extension + "')", con);
                    cmd5.ExecuteNonQuery();
                }

                //4th file upload

                if (fuImg04.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/ProductImages/") + PID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extension = Path.GetExtension(fuImg04.PostedFile.FileName);
                    fuImg04.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "04");

                    SqlCommand cmd6 = new SqlCommand("insert into tblProductImages  values('" + PID + "','" + txtPName.Text.ToString().Trim() + "04" + "','" + Extension + "')", con);
                    cmd6.ExecuteNonQuery();
                }

                //5th file upload

                if (fuImg05.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/ProductImages/") + PID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extension = Path.GetExtension(fuImg05.PostedFile.FileName);
                    fuImg05.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "05");

                    //SqlCommand cmd7 = new SqlCommand("insert into tblProductImages  values('" + PID + "','" + txtPName.Text.ToString().Trim() + "05" + "','" + Extension + "')", con);
                    SqlCommand cmd7 = new SqlCommand("insert into tblProductImages(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                    cmd7.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                    cmd7.Parameters.AddWithValue("@Name", txtPName.Text.ToString().Trim() + "05");
                    
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {

                        Response.Write("<script> alert('Product Added Successfully') </script>");
                        BindGridview1();
                        con.Close();
                    }



                    

                }




            }
            
           
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSubCategory.Enabled = true;

            int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblSubCategory where MainCatID='" + ddlCategory.SelectedItem.Value + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlSubCategory.DataSource = dt;
                    ddlSubCategory.DataTextField = "SubCatName";
                    ddlSubCategory.DataValueField = "SubCatID";
                    ddlSubCategory.DataBind();
                    ddlSubCategory.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblSizes where BrandID='" + ddlBrand.SelectedItem.Value + "' and CategoryID='"+ ddlCategory.SelectedItem.Value + "' and SubCategoryID='" + ddlSubCategory.SelectedItem.Value + "'and genderID='" + ddlGender.SelectedItem.Value + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    cblSize.DataSource = dt;
                    cblSize.DataTextField = "SizeName";
                    cblSize.DataValueField = "SizeID";
                    cblSize.DataBind();
                    
                }
            }
        }

        protected void ddlSubCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlSubCategory.SelectedIndex !=0)
            {
                ddlGender.Enabled = true;
            }
            else
            {
                ddlGender.Enabled = true;
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGridview1();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string pname = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string pprice = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string pselprice = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string brnd = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string catname = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string subcatname = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string gnder = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string sizename = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
            string quantity = ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
            


            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tblProducts set PName='" + pname + "',PPrice='" + pprice + "', PSelPrice='" + pselprice + "', Brand='" + brnd + "', CatName='" + catname + "', SubCatName='" + subcatname + "', gender='" + gnder + "', SizeName='" + sizename + "', Quantity='" + quantity + "' where PID='" + id + "'", con);
                int t = cmd.ExecuteNonQuery();
                if(t > 0)
                {
                    Response.Write("<script> alert('Data has Updated') </script>");
                    GridView1.EditIndex = -1;
                    BindGridview1();
                }
            }

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGridview1();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete tblProducts  where PID='" + id + "'", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script> alert('Data has Deleted') </script>");
                    GridView1.EditIndex = -1;
                    BindGridview1();
                }
            }
        }
    }
}