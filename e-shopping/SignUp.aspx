<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="e_shopping.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   <meta http-equiv="X-UA-Compatible" content="Google Chrome"/>
    <link href="cssstyle.css" rel="stylesheet" />

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <style>
        header {

    width :1360px;
    height :200px;
    position :initial;
    background-color:deepskyblue;
    padding-left:90px;
  margin-left:-110px;
  padding-right:100px;
    bottom :0;
    left :0;
    right :0;
  text-indent:40px;
  
    

}
    </style>
   
    <form id="form1" runat="server">
    <div>  
        <div class ="navbar navbar-default navbar-fixed-top" role ="navigation">
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                    
                </div>
               
                <header>
                
                   <img src="images/w4.png" width="60" height="50" />
                        &nbsp;<asp:Label ID="Label1" runat="server" Text="Janaki Mart"
                             Font-Bold="True" Font-Names="Franklin Gothic Medium" Font-Size="40px" ForeColor="#000066" ></asp:Label>
                             <br />
                            <b style="color:black;">    Be Smart, With Technology</b>
          
                    <br />
                
               
                
                <div class ="navbar-collapse collapse">
                    
                    <ul class ="nav navbar-nav navbar-right">
                        
                        <li ><a href ="Default.aspx">Home</a> </li>
                         <li ><a href ="AboutUs.aspx">About Us</a> </li>
                        <li ><a href ="ContactUs.aspx">Contact US</a> </li>
                        <li class ="drodown">
                            <a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
                            <ul class ="dropdown-menu ">
                                <li> <a href ="Products.aspx">All Products</a></li>
                                 <li role="separator" class ="divider "></li> 
                                <li class ="dropdown-header ">Men</li>
                                <li role="separator" class ="divider "></li> 
                                <li> <a href ="#">Shirts</a></li>
                                 <li> <a href ="#">T-Shirts</a></li>
                                <li> <a href ="#">Pants</a></li>
                                <li> <a href ="#">Denims</a></li>
                                <li role="separator" class ="divider "></li>
                                <li class ="dropdown-header ">Women</li>
                                <li role="separator" class ="divider "></li>
                                <li> <a href ="#">Top</a></li>
                                <li> <a href ="#">Leggings</a></li>
                                <li> <a href ="#">Denims</a></li>
                                <li> <a href ="#">Kurta</a></li>
                                
                            </ul>

                        </li>
                         

                        <li class="active"  id="btnSignUP" runat="server"><a href ="SignUp.aspx">SignUp</a> </li>
                         <li ><a href ="SignIn.aspx">SignIn</a> </li>
                        <li>
                           
                           
                        </li>
                    </ul>
                </div>



            </div>


        </div>
         </header>
        </div>
       

               
               
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br /> 
                <br />
               

        
      
         <!---signup page---->

        <div class ="center-page">
            <label class="col-xs-11">Your First Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtFname" runat="server" Class="form-control " placeholder="Enter Your First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter  Email Address" ForeColor="Red"></asp:RequiredFieldValidator>
                
        </div>
            <label class="col-xs-11">Your Last Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtLname" runat="server" Class="form-control " placeholder="Enter Your Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter  Email Address" ForeColor="Red"></asp:RequiredFieldValidator>
                
        </div>
            <label class="col-xs-11">Gender:</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="txtgender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
        </div>

            <label class="col-xs-11">Email:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control " placeholder="Enter Your Email" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter  Email Address" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
            <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPass" runat="server" Class="form-control " placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ControlToValidate="txtPass" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
            <label class="col-xs-11">Confirm Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtCPass" runat="server" Class="form-control " placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ControlToValidate="txtCPass" ErrorMessage="Enter password Again" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
             <label class="col-xs-11"></label>
            <div class="col-xs-11">
                <asp:Button ID="txtsignup" runat="server" Class="btn btn-success" Text="SignUp" OnClick="txtsignup_Click"  />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignIn.aspx">Sign In</asp:HyperLink>

                <br />
                <br />
                <br />
                <br />
        </div>
           
         <!---signup page end---->
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />


        
       </div>
        <!------footer content start------->
        <style>
        footer{
           height:400px;
            width:100%;
            left:0;
            bottom:0;
            top:800px;
            position:absolute;
    text-align: left;
    padding: 3px;
    background-color: deepskyblue;
    color: black;
}
            .auto-style1 {
                left: 0;
                right: 0;
                top: 1px;
            }
            </style>
        <hr />
        <footer>
            <div class ="container ">
                <h2>Contact Us:</h2>
                <asp:Label ID="Label3" runat="server" Text="Phone: 041533566" ForeColor="#3366cc" Font-Size="Medium"></asp:Label><br/>
            <asp:Label ID="Label4" runat="server" Text="Mobile: 9863464669, 9823852524" ForeColor="#3366cc" Font-Size="small"></asp:Label><br />
            <asp:Label ID="Label5" runat="server" Text="Email: janakimart123@gmail.com" ForeColor="#3366cc" Font-Size="small"></asp:Label><br />
            <asp:Label ID="Label6" runat="server" Text="WhatsApp: 9823852524 " ForeColor="#3366cc" Font-Size="small"></asp:Label><br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Address: Zero Mile chowk, Near Bus Stand Janakpur." ForeColor="#3366cc" Font-Size="small"></asp:Label><br />
                
                    <br/>
                    <h1>About</h1>
                    
                    <a href ="Default.aspx">Home</a>
                    <br />
                    
                    <a href ="AboutUs.aspx">About us</a>
                    <br />
                    
                    <a href ="ContactUs.aspx">Contact</a>
                    <br />
                    
                    <a href ="#">Products</a>
                       
                <br /><p class ="pull-right "><a href ="#">Back to top</a></p>
                <br />
                   <p>&copy;2021 Janaki Mart. all Right Reserved.
                </p>
            </div>

        </footer>
           
         <!------footer content end------->
        
    </form>

     
</body>
</html>