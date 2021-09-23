<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Addsize.aspx.cs" Inherits="e_shopping.Addsize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br /> 
    <br />
    <br />

   
            <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2>Add Size</h2>
                <hr />

                 <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="SizeName"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSize" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Size" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class ="form-group">
                    <asp:Label ID="Label3" CssClass ="col-md-2 control-label " runat="server" Text="Brand"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrand" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Main Brand" ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label4" CssClass ="col-md-2 control-label " runat="server" Text="Category"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Main Category" ControlToValidate="ddlCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Sub Category"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategory" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Sub Category" ControlToValidate="ddlSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
               

                <div class ="form-group">
                    <asp:Label ID="Label5" CssClass ="col-md-2 control-label " runat="server" Text="Gender"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Gender" ControlToValidate="ddlGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
               


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddSize" CssClass ="btn btn-success " runat="server" Text="Add Size" OnClick="btnAddSize_Click"   />
                        
                    </div>
                </div>
                

            </div>
                 </div>


                 <div class="container">
   
   <hr />
    <div class="panel panel-primary">
      <div class="panel-heading"><h2>Size Report</h2> </div>
      <div class="panel-body">
           <div class="col-md-12">
              <div class="form-group">
                <div class="table table-responsive">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Size="X-Large" Height="20px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="900px">
                        <Columns>
                            <asp:BoundField DataField="SizeID" HeaderText="ID" ReadOnly="True" />
                            <asp:BoundField DataField="SizeName" HeaderText="Size" />
                            <asp:BoundField DataField="BrandID" HeaderText="BrandID" />
                            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" />
                            <asp:BoundField DataField="SubCategoryID" HeaderText="SubCategoryID" />
                            <asp:BoundField DataField="GenderID" HeaderText="GenderID" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True">
                            <ControlStyle BackColor="#00CC00" />
                            </asp:CommandField>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                            <ControlStyle BackColor="#FF3300" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                      </div>
                </div>
                

            </div>
                 </div>
            </div>
                 </div>
                   
</asp:Content>
