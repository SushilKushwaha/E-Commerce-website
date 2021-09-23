<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="e_shopping.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User home</title>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous">

    </script>
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   <meta http-equiv="X-UA-Compatible" content="Google Chrome"/>
    <link href="cssstyle.css" rel="stylesheet" />

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <script>

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });

     </script>
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
                
               
                <br />
                <div class ="navbar-collapse collapse">
                    
                    <ul class ="nav navbar-nav navbar-right">
                        
                        <li class="active" ><a href ="Default.aspx">Home</a> </li>
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
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Electronics</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Headphone</a></li>
                                <li><a href="#">Earphone</a></li>
                                <li><a href="#">Airpod</a></li>
                                <li><a href="#">Bluetooth</a></li>
                            </ul>

                        </li>
                         <li>
                            <button id="btnCart" class="btn btn-primary navbar-btn " type="button">
                                Cart <span class="badge " id="pCount" runat="server"></span>

                            </button>
                             </li>

                        <li >
                            <asp:Button ID="btnSignin" runat="server" CssClass="btn btn-default navbar-btn " Text="SignIn" OnClick="btnSignin_Click" />
                            <asp:Button ID="btnsignout" runat="server" CssClass="btn btn-default navbar-btn " Text="SignOut" OnClick="btnsignout_Click"  />
                            
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
         <br />

        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success" Font-Bold="True" ForeColor="Red" Height="200px" style="margin-left: 77px" Width="330px" Font-Size="X-Large"></asp:Label>

         <hr />
        <!------footer content start------->
        <style>
        footer{
           height:400px;
            width:100%;
            left:0;
            bottom:0;
    text-align: left;
    padding: 3px;
    background-color:deepskyblue;
    color: black;
   
            </style>
       
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
