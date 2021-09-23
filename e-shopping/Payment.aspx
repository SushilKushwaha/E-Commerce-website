<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="e_shopping.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hdCartAmount" runat="server" />
    <asp:HiddenField ID="hdCartDiscount" runat="server" />
    <asp:HiddenField ID="hdTotalPayed" runat="server" />
    <asp:HiddenField ID="hdPidSizeID" runat="server" />


     <br />
    <br />
     <br />
    <br /> 
    <br />
    <br />
    <br />
    <br />

    <div class="row" style="padding-top: 20px;">
        


        <div class="col-md-9">
             <div class="form-horizontal">
                <h3>Delivery Address</h3>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Name"></asp:Label>
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Address"></asp:Label>
                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="control-label" Text="Mobile Number"></asp:Label>
                    <asp:TextBox ID="txtMobileNumber" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtMobileNumber"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>

        <div class="col-md-3" runat="server" id="divPriceDetails">
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
            </div>
        </div>

        <div class="col-md-12">
  <h3>Choose Payment Mode</h3>
            <hr />
            <ul class="nav nav-tabs">
                
                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#cod">Cash On Delivery</a></li>
            </ul>
             <div class="tab-content">
                <div id="cod" class="tab-pane fade show active">
                    <h3>HOME</h3>
                    <p>Some content.</p>
                    <asp:Button ID="btncod" runat="server" Text="Cash On Delivery" OnClick="btncod_Click" />
                </div>
                
            </div>

             <div class="tab-content">
                                <div id="PlaceNPay" class="tab-pane fade in active">
                                    <h3>Wallet(e-sewa, Khalti, imePay)Payment Gateway Coming Soon !!</h3>
                                    <asp:Button ID="BtnPlaceNPay"  Font-Size="Large" ValidationGroup="PaymentPage" runat="server"  />
                                </div>
                                
                               
                            </div>
        </div>


    </div>

        </div>


    </div>
</asp:Content>
