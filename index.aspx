<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DayCareWebsite.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Super Child Day Care</title>
        <link rel = "stylesheet" href = "style.css"/>   
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
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
                    <a class="nav-link" href="PayFee.aspx">Generate Fee Voucher</a>
                </li>                                         
                  </ul>                   
                </div>                                          
              </nav>
        </section>
        <div id = "slider">
          <div id="headerslider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img id="slide-img" src="Images/slide1.jpg" class="d-block img-fluid" alt="...">
              </div>
              <div class="carousel-item">
                <img id="slide-img" src="Images/slide2.jpg" class="d-block img-fluid" alt="...">
              </div>
              <div class="carousel-item">
                <img id="slide-img" src="Images/slide3.jpg" class="d-block img-fluid" alt="...">
              </div>
            </div>
            <a class="carousel-control-prev" href="#headerslider" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#headerslider" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>    
        <div class="gap">
              <asp:Label ID="Label19" runat="server" class="pers"></asp:Label>
              <asp:Button ID="Button1" runat="server" Text="SignOut" class="btn btn-secondary btn-lg"  onclick="Button1_Click"/>
          </div>
        <div class="act">
          <h1>ACTIVITY</h1>
        </div>
        <div class="activity-pics">          
          <div class="card-group">
            <div class="card">
                <asp:Image ID="Image1" runat="server" class="card-img-top" />
              <!--<img src="Images/activities/act10.jpg" class="card-img-top" alt="...">  -->
              <div class="card-body">
                <asp:Label ID="Label1" runat="server" Text="Label" class="card-title"></asp:Label>                                               
              </div>
            </div>
            <div class="card">
                <asp:Image ID="Image2" runat="server" class="card-img-top" />
              <!--<img src="Images/activities/act9.jpg" class="card-img-top" alt="...">  -->
              <div class="card-body">
                <!--<h5 class="card-title">Baby Birthday</h5>-->                
              <asp:Label ID="Label2" runat="server" Text="Label" class="card-title"></asp:Label>                  
              </div>
            </div>
            <div class="card">
                <asp:Image ID="Image3" runat="server" class="card-img-top" />
              <!--<img src="Images/activities/act8.jpg" class="card-img-top" alt="...">  -->
              <div class="card-body">                
                    <asp:Label ID="Label3" runat="server" Text="Label" class="card-title"></asp:Label>
              </div>
            </div>            
          </div>
        </div>               
        <div>
          <h1>  </h1>
        </div>
        <div class="act">
          <h1>EVENTS</h1>
        </div>
        <div class="Events-pics">          
          <div class="card-group">
            <div class="card">              
                <asp:Image ID="Image4" runat="server" class="card-img-top"/>
              <div class="card-body">
                  <asp:Label ID="Label4" runat="server" Text="Label" class="card-title"></asp:Label><br />
                  <asp:Label ID="Label5" runat="server" Text="Label" class="card-text"></asp:Label> <br />                               
                  <asp:Label ID="Label6" runat="server" Text="Label" Class="muted-text"></asp:Label><br />
              </div>
            </div>
            <div class="card">
                <asp:Image ID="Image5" runat="server" class="card-img-top"/>
              <div class="card-body">
                  <asp:Label ID="Label7" runat="server" Text="Label" class="card-title"></asp:Label><br />
                  <asp:Label ID="Label8" runat="server" Text="Label" class="card-text"></asp:Label><br />
                  <asp:Label ID="Label9" runat="server" Text="Label" Class="muted-text"></asp:Label><br />
              </div>
            </div>
            <div class="card">
                <asp:Image ID="Image6" runat="server" class="card-img-top" />
              <div class="card-body">
                  <asp:Label ID="Label10" runat="server" Text="Label" class="card-title"></asp:Label><br />
                  <asp:Label ID="Label11" runat="server" Text="Label" class="card-text"></asp:Label><br />
                  <asp:Label ID="Label12" runat="server" Text="Label" Class="muted-text"></asp:Label><br />
              </div>              
            </div>                       
          </div>          
        </div>                        
        <div class="gap"></div>              
        <div class="footer">
          <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com<p>
        </div>
    </form>
</body>
</html>
