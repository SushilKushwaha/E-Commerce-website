<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="e_shopping.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
<div class="form-horizontal">
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br /><br />
     <br />
     <br />
<h2>Add Product</h2>
    <hr/>
   

    <div class="form-group">
        <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label1" Text="Product Name"></asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="txtPName" CssClass="form-control" runat="server"></asp:TextBox>

        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label2" Text="Price"></asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>

        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label3" Text="Selling Price"></asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="txtsellPrice" CssClass="form-control" runat="server"></asp:TextBox>

        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label4" Text="Brand"></asp:Label>
        <div class="col-md-3">
            <asp:DropDownList ID="ddlBrand" CssClass="form-control"  runat="server"></asp:DropDownList>
        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label5" Text="Category"></asp:Label>
        <div class="col-md-3">
            <asp:DropDownList ID="ddlCategory" CssClass="form-control" AutoPostBack ="true" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
        </div>
    </div>

     <div class="form-group">
        <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label6" Text="SubCategory"></asp:Label>
        <div class="col-md-3">
            <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged"></asp:DropDownList>
        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label19" runat="server" CssClass="col-md-2 control-label9" Text="Gender"></asp:Label>
        <div class="col-md-3">
            <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged"></asp:DropDownList>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label7" Text="Size"></asp:Label>
        <div class="col-md-3">
            <asp:CheckBoxList ID="cblSize" CssClass="form-control" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList>

        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label20" runat="server" CssClass="col-md-2 control-label3" Text="Quantity"></asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>

        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label8" Text="Description"></asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>

        </div>
    </div>

     <div class="form-group">
        <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label1" Text="Product Details"></asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="txtPDetails" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>

        </div>
    </div>

     <div class="form-group">
        <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label1" Text="Materials and Care"></asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="txtMatCare" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>

        </div>
    </div>

     <div class="form-group">
        <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label11" Text="Upload Image"></asp:Label>
        <div class="col-md-3">
            <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
            

        </div>
    </div>


    <div class="form-group">
        <asp:Label ID="Label12" runat="server" CssClass="col-md-2 control-label12" Text="Upload Image"></asp:Label>
        <div class="col-md-3">
            <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
            

        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label13" runat="server" CssClass="col-md-2 control-label13" Text="Upload Image"></asp:Label>
        <div class="col-md-3">
            <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />
            

        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label14" runat="server" CssClass="col-md-2 control-label14" Text="Upload Image"></asp:Label>
        <div class="col-md-3">
            <asp:FileUpload ID="fuImg04" CssClass="form-control" runat="server" />
            

        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label15" runat="server" CssClass="col-md-2 control-label15" Text="Upload Image"></asp:Label>
        <div class="col-md-3">
            <asp:FileUpload ID="fuImg05" CssClass="form-control" runat="server" />
            

        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label16" runat="server" CssClass="col-md-2 control-label16" Text="Free Delivery"></asp:Label>
        <div class="col-md-3">
            <asp:CheckBox ID="cbFD" runat="server" />

        </div>
    </div>


    <div class="form-group">
        <asp:Label ID="Label17" runat="server" CssClass="col-md-2 control-label17" Text="Within 15 Days Return"></asp:Label>
        <div class="col-md-3">
            <asp:CheckBox ID="cb15Ret" runat="server" />

        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label18" runat="server" CssClass="col-md-2 control-label18" Text="Cash on Delivery"></asp:Label>
        <div class="col-md-3">
            <asp:CheckBox ID="cbCOD" runat="server" />

        </div>
    </div>

     <div class="form-group">
          <div class="col-md-2"></div>
               <div class="col-md-6">
                   <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success" Text="Add Product" OnClick="btnAdd_Click"/>
                   </div>
         </div>
</div>
    </div>

  <div class="container">
   
   <hr />
    <div class="panel panel-primary">
      <div class="panel-heading"><h2>Product Report</h2> </div>
      <div class="panel-body">
           <div class="col-md-12">
              <div class="form-group">
                <div class="table table-responsive">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>  
                        <asp:BoundField DataField="PID" HeaderText="S.No." ReadOnly="True" />  
                        <asp:BoundField DataField="PName" HeaderText="PName" />  
                        <asp:BoundField DataField="PPrice" HeaderText="Price" />  
                        <asp:BoundField DataField="PSelPrice" HeaderText="SellPrice" />  
                        <asp:BoundField DataField="Brand" HeaderText="Brand" />  
                        <asp:BoundField DataField="CatName" HeaderText="Category" />  
                        <asp:BoundField DataField="SubCatName" HeaderText="SubCategory" />

                        <asp:BoundField DataField="gender" HeaderText="gender" />  
                        <asp:BoundField DataField="SizeName" HeaderText="SizeName" />  
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                         

                        
                        <asp:TemplateField HeaderText="Photo">  
                    <ItemTemplate>  
                        <%-- <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>" style=" height:150px; width:150px;"/> --%>
                    </ItemTemplate>  
                </asp:TemplateField> 

                       <%-- <asp:CommandField ShowEditButton="true" />  
                        <asp:CommandField ShowDeleteButton="true" />--%>
                        
                         <asp:CommandField ButtonType="Button" ShowEditButton="True">
                        <ControlStyle BackColor="#00CC00" ForeColor="White" />
                        </asp:CommandField>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                        <ControlStyle BackColor="Red" ForeColor="White" />
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
      <div class="panel-footer"></div>
    </div>
    
</div>

</asp:Content>
