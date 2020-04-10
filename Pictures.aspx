<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pictures.aspx.cs" Inherits="DayCareWebsite.Pictures" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Pictures</title>
        <link rel = "stylesheet" href = "style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>  
</head>
<body style="background-image:linear-gradient(to right, rgb(232, 55, 219), rgb(113, 113, 255));">
    <form id="form1" runat="server">
       <section id = "nav-bar">                                    <!--bg-light-->
            <nav class="navbar navbar-expand-lg navbar-light ">
                <a class="navbar-brand" href="index.aspx">SuperChildDayCare</a>                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <a class="navbar-log" href="login.aspx">Login/Register</a>                
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
                    <a class="nav-link" href="PayFee.html">Generate Fee Voucher</a>
                </li>                                         
                  </ul>                   
                </div>                                          
              </nav>
        </section>
         <div class="gap">
             <asp:Label ID="Label17" runat="server" class="pers" style="text-align:center"></asp:Label>
             <asp:Button ID="Button1" runat="server" Text="SignOut" class="btn btn-secondary btn-lg"  onclick="Button1_Click"/>
        </div>
        <div class="act">
          <h1>PHOTOS</h1>
        </div>  
          <div class="activity-pics">          
            <div class="card-group">
              <div class="card">
                 <asp:Image ID="Image1" runat="server" class="card-img-top"/>                
                <div class="card-body">
                    <asp:Label ID="Label1" runat="server" Text="Label" class="card-title"></asp:Label>                  
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image2" runat="server" class="card-img-top" />
                <div class="card-body">
                    <asp:Label ID="Label2" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image3" runat="server" class="card-img-top" />
                <div class="card-body">
                    <asp:Label ID="Label3" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image4" runat="server" class="card-img-top" />                
                <div class="card-body">
                    <asp:Label ID="Label4" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>              
            </div>
          </div>    
          <div class="gap"></div>
          <div class="activity-pics">          
            <div class="card-group">
              <div class="card">
                  <asp:Image ID="Image5" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label5" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image6" runat="server" class="card-img-top" />
                <div class="card-body">
                    <asp:Label ID="Label6" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image7" runat="server" class="card-img-top" />
                <div class="card-body">
                    <asp:Label ID="Label7" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image8" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label8" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>              
            </div>
          </div>         
          <div class="gap"></div>
          <div class="activity-pics">          
            <div class="card-group">
              <div class="card">
                  <asp:Image ID="Image9" runat="server" class="card-img-top" />
                <div class="card-body">
                    <asp:Label ID="Label9" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image10" runat="server" class="card-img-top"/>
                
                <div class="card-body">
                    <asp:Label ID="Label10" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image11" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label11" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image12" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label12" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>              
            </div>
          </div>             
          <div class="gap"></div>
          <div class="activity-pics">          
            <div class="card-group">
              <div class="card">
                  <asp:Image ID="Image13" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label13" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image14" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label14" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image15" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label15" runat="server" Text="Label" class="card-title"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image16" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label16" runat="server" Text="Label" class="card-title"></asp:Label>       
                </div>
              </div>              
            </div>
          </div>                                       
        <div class="footer">
            <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com<p>
        </div>
    </form>
</body>
</html>
