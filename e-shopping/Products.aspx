<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="e_shopping.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />

      <div class="row">
      <div class="col-md-12">
          <button id="btnCart2" runat="server" class="auto-style1"  type="button">
                        Cart 0<span id="CartBadge" runat="server" class="badge"> </span>
                    </button>
                    <h3>
                        <asp:Label ID="Label1" runat="server" Text="Showing All Products"></asp:Label>
                    </h3>
                    <hr />
                    
      </div>
    </div>

    

    <div class="row" style="padding-top:50px">

     <asp:TextBox ID="txtFilterGrid1Record" CssClass="form-control" runat="server" 
              placeholder="Search Products...." AutoPostBack="true" 
              ontextchanged="txtFilterGrid1Record_TextChanged" ></asp:TextBox>
      <br />
      <hr />



        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
        <div class="col-sm-3 col-md-3">
             
            <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
            <div class="thumbnail">
                <img src="images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extension") %>" alt="<%# Eval("ImageName") %>" />
                <div class="caption">
                    <div class="probrand" style=" font-size: 15px;
    font-weight: 600;
    line-height: 15px;
    text-transform: uppercase;
    font-family: sans-serif;"  ><%# Eval("BrandName") %></div>
                    <div class="proName" style="font-size: 13px;
    line-height: 17px;
    font-family: sans-serif;" ><%# Eval("PName") %></div>
                    <div class="proPrice" style="font-size: 14px;
    line-height: 17px;
    font-family: sans-serif;
    font-weight: 600;" >
                        <span class="proOgPrice" style="font-size: 13px;
    line-height: 17px;
    font-family: sans-serif;
    font-weight: 400;
    text-decoration: line-through;
    color: gray;" >Rs.<%#Eval("PPrice","{0:0,00}") %></span>Rs.<%#Eval("PSelPrice","{0:0,00}") %><span class="propricediscount" style="font-size: 13px;
    font-family: sans-serif;
    font-weight: 400;
    color: deeppink;">(<%# Eval("DiscAmount") %>off)</span> </div>

                </div>

            </div>
          
        </div>
                </a>
                </ItemTemplate>
            </asp:Repeater>
    </div>
</asp:Content>
