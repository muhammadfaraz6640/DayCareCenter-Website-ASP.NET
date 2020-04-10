<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayFee.aspx.cs" Inherits="DayCareWebsite.PayFee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Generate Fee Voucher</title>
        <link rel = "stylesheet" href = "style.css"/>   
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</head>
<body style="background-image:linear-gradient(to right, rgb(232, 55, 219), rgb(113, 113, 255));">
    <form id="form1" runat="server">
        <section id = "nav-bar">                                    
            <nav class="navbar navbar-expand-lg navbar-light ">
                <a class="navbar-brand" href="index.html">SuperChildDayCare</a>
                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <a class="navbar-log" href="Login.aspx">Login/Register</a>                
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="index.aspx">Home </a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="Events.aspx">Events</a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="Pictures.aspx">Pictures</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Aboutus.aspx">AboutUs</a>
                      </li>                    
                    <li class="nav-item active">
                      <a class="nav-link" href="blog.aspx">Reviews</a>
                  </li> 
                  <li class="nav-item active">
                    <a class="nav-link" href="PayFee.aspx">Generate Fee Voucher</a>
                </li>                                         
                  </ul>                
                </div>                                          
              </nav>
        </section>
        <div class="gap"></div>
        <div class="gap">
            <asp:Label ID="Label1" runat="server" class="pers"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="SignOut" class="btn btn-secondary btn-lg"  onClick="Button2_Click"/>
        </div>        
        <div class="act">
            <h1>FEE ADD</h1>
          </div>
        <div class="reg-inp-fee">            
          <div class="Register">            
            <label>Generate Fee Voucher Here </label><br />            
            <asp:Button ID="Button1" runat="server" Text="Generate Voucher" class="btn btn-secondary btn-lg" type="submit" onClick="Button1_Click"/>            <br />            
            <label>The Reasonable Fee Will Be Decided After Meeting </label>            
          </div>  
        </div>
        <div class="gap"></div><br />        
        <div class="footer">
          <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com<p>
        </div>        
    </form>
</body>
</html>
