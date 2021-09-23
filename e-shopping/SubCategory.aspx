<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="e_shopping.SubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

                <h2>Add SubCategory</h2>
                <hr />

                <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Main CategoryID"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlMainCatID" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Main CategoryID" ControlToValidate="ddlMainCatID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="SubCategoryName"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtSubCategory" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategoryName" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter SubCategory" ControlToValidate="txtSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddCategory" CssClass ="btn btn-success " runat="server" Text="Add Category" OnClick="btnAddCategory_Click"  />
                        
                    </div>
                </div>
                

            </div>
                 </div>

                 <div class="container">
   
   <hr />
    <div class="panel panel-primary">
      <div class="panel-heading"><h2>SubCategory Report</h2> </div>
      <div class="panel-body">
           <div class="col-md-12">
              <div class="form-group">
                <div class="table table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Size="X-Large" Height="20px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="900px">
                        <Columns>
                            <asp:BoundField DataField="SubCatID" HeaderText="SubCatID" ReadOnly="True" />
                            <asp:BoundField DataField="MainCatID" HeaderText="CatID" />
                            <asp:BoundField HeaderText="SubCategoryName" DataField="SubCatName" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True">
                            <ControlStyle BackColor="#00CC00" />
                            </asp:CommandField>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                            <ControlStyle BackColor="Red" />
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
