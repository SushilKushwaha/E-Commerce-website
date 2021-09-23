<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddGender.aspx.cs" Inherits="e_shopping.AddGender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

                <h2>Add Gender</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Gender"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtGender" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Gender" ControlToValidate="txtGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddGender" CssClass ="btn btn-success " runat="server" Text="Add" OnClick="btnAddGender_Click"   />
                        
                    </div>
                </div>
                

            </div>
                </div>
   


                <div class="container">
   
   <hr />
    <div class="panel panel-primary">
      <div class="panel-heading"><h2>Gender Report</h2> </div>
      <div class="panel-body">
           <div class="col-md-12">
              <div class="form-group">
                <div class="table table-responsive">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Size="X-Large" Height="20px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="900px">
                         <Columns>
                             <asp:BoundField DataField="GenderID" HeaderText="ID" ReadOnly="True" />
                             <asp:BoundField DataField="GenderName" HeaderText="Gender" />
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
