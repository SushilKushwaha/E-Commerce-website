<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="e_shopping.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />
    <br />
    <br />
    <br  />
    <br />
    <br />
    <br />
    <br />
    <div style="padding-top:50px;">

        <div class="col-md-9" "> 
            <h4 class="proNameViewCart" runat="server" id="h4Noitems"> </h4>
            <asp:Repeater ID="rptrCartProducts" runat="server">
                <ItemTemplate>

            <!---show cart details start--->

            <div class="media" style="border:1px solid black;">
                <div class="media-left">
                    <a href="ProductView.aspx?PID=<%# Eval("PID") %>" target="_blank">
                        <img class="media-object" width="100px" src="images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extension") %>" alt="<%# Eval("Name") %>">
                    </a>

                &nbsp;</div>


                <div class="media-body">
                    <h4 class="media-heading proNameViewCart"><%# Eval("PName") %></h4>
                    <p class="proPriceDiscountView">Size: <%#Eval("SizeNamee") %> </p>
                    <span class="proPriceView">Rs.<%#Eval("PSelPrice","{0:0,00}") %></span><span class="proOgPriceView">Rs.<%#Eval("PPrice","{0:0,00}") %></span><p>
                         <asp:button CommandArgument='<%#Eval("PID")+"-"+ Eval("SizeIDD")%>' ID="btnRemoveCart" CssClass="RemoveButton1" runat="server" text="REMOVE" OnClick="btnRemoveCart_Click" />
                    </p>
                </div>
            </div>
                    </ItemTemplate>
                </asp:Repeater>
            <!---show cart details end--->

        </div>

        <div class="col-md-3 pt-5" runat="server" id="divpricedetails">
            <div style="border-bottom: 1px solid #eaeaec;">
                <h5 class="proNameViewCart">PRICE DETAILS</h5>
                <div>
                    <label>Cart Total</label>
                    <span class="float-right priceGray" id="spanCartTotal" runat="server"></span>
                </div>
                <div>
                    <label>Cart Discount</label>
                    <span class="float-right priceGreen" id="spanDiscount" runat="server"></span>
                </div>
            </div>
            <div>
                <div class="proPriceView">
                    <label>Total</label>
                    <span class="float-right" id="spanTotal" runat="server"></span>
                </div>
                <div>
                    

<asp:Button ID="btnBuyNow"  CssClass="buyNowbtn" runat="server" Text="BUY NOW" OnClick="btnBuyNow_Click" />
     
           </div>
 
           </div>
 
       </div>
   
 </div>




</asp:Content>
