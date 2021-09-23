<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="e_shopping.ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
       <div style="padding-top:50px">
        <div class="col-md-5">
            <div style="max-width:480px" class="thumbnail">
                 <%--   for proImage slider--%>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
   
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
      <asp:Repeater ID="rptrImage" runat="server">
          <ItemTemplate>
      
    <div class="item active">
      <img src="images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extension") %>" alt="<%# Eval("Name") %>">
    </div>
              </ItemTemplate>

    </asp:Repeater>

 
      </div>

 
</div>

              <%--  for proimage slider ending--%>

                
            </div>
        </div>
       <div class="col-md-5">
            <asp:Repeater ID="rptrProductDetails" runat="server" OnItemDataBound="rptrProductDetails_ItemDataBound">
                <ItemTemplate>
            <div class="divDet1">
                 <h1 class="proNameView"><%# Eval("PName") %> </h1>
                <span class="proOgPriceView">Rs.<%#Eval("PPrice") %></span><span class="proPriceDiscountView"><%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %>off</span><p class="proPriceView">Rs. <%#Eval("PSelPrice") %></p>
            </div>
            <div >
                <h5 class="h5size"> SIZE</h5>
                <div>
                    <asp:radiobuttonlist ID="rblSize" runat="server" RepeatDirection="Horizontal" >
                        <asp:ListItem Value="S" Text="S"></asp:ListItem>
                        <asp:ListItem Value="M" Text="M"></asp:ListItem>
                        <asp:ListItem Value="L" Text="L"></asp:ListItem>
                        <asp:ListItem Value="XL" Text="XL"></asp:ListItem>
                    </asp:radiobuttonlist>
                </div>
            </div>
            <div class="divDet1">
                <asp:button ID="btnAddtoCart" CssClass="mainButton" runat="server" text="ADD TO CART" onclick="btnAddtoCart_Click"/>
                <asp:Label ID="lblError" CssClass="text-danger" runat="server" ></asp:Label>

            </div>
            <div class="divDet1">
                <h5 class="h5size"> Description</h5>
                <p>   <%#Eval("PDescription") %>          </p>

                 <h5 class="h5size"> Product Details</h5>
                <p>   <%#Eval("PProductDetails") %>     </p>
                 <h5 class="h5size"> Material & Care</h5>
                <p> <%#Eval("PMaterialCare") %></p>
            </div>
            <div >
                <p><%# ((int)Eval("FreeDelivery")==1)? "Free Delivery":""  %>    </p>
                <p><%# ((int)Eval("15DayRet")==1)? "15 Days Returns":""  %></p>
                <p><%# ((int)Eval("COD")==1)? "Cash on Delivery":"" %></p>
            </div>
                    <asp:HiddenField ID="hfCatID" runat="server" Value='<%# Eval("PcategoryID") %>' />
                    <asp:HiddenField ID="hfSubCatID" runat="server" Value='<%# Eval("PSubCatID") %>' />
                    <asp:HiddenField ID="hfGenderID" runat="server" Value='<%# Eval("PGender") %>' />
                    <asp:HiddenField ID="hfBrandID" runat="server" Value='<%# Eval("PBrandID") %>' />


</ItemTemplate>
</asp:Repeater>




        </div>

    </div>

           

</asp:Content>
