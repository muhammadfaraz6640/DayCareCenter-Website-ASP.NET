<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="DayCareWebsite.Events" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Events</title>
        <link rel = "stylesheet" href = "style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
</head>
<body  style="background-image:linear-gradient(to right, rgb(232, 55, 219), rgb(113, 113, 255));">
    <form id="form1" runat="server">
       <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
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
        <div class="gap">
            <asp:Label ID="Label49" runat="server" class="pers"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="SignOut" class="btn btn-secondary btn-lg"  onclick="Button1_Click"/>
        </div>
        <div class="act">
          <h1>EVENTS</h1>
        </div>  
          <div class="Events-pics">          
            <div class="card-group">
              <div class="card">
                  <asp:Image ID="Image1" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label1" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label17" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label33" runat="server" Text="Label" class="text-muted"></asp:Label><br />
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image2" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label2" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label18" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label34" runat="server" Text="Label" class="text-muted"></asp:Label><br />
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image3" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label3" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label19" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label35" runat="server" Text="Label" class="text-muted"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image4" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label4" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label20" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label36" runat="server" Text="Label" class="text-muted"></asp:Label>
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
                    <asp:Label ID="Label5" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label21" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label37" runat="server" Text="Label" class="text-muted"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image6" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label6" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label22" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label38" runat="server" Text="Label" class="text-muted"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image7" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label7" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label23" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label39" runat="server" Text="Label" class="text-muted"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image8" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label8" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label24" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label40" runat="server" Text="Label" class="text-muted"></asp:Label>
                </div>
              </div>              
            </div>
          </div>         
          <div class="gap"></div>
          <div class="activity-pics">          
            <div class="card-group">
              <div class="card">
                  <asp:Image ID="Image9" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label9" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label25" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label41" runat="server" Text="Label" class="text-muted"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image10" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label10" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label26" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label42" runat="server" Text="Label" class="text-muted"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image11" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label11" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label27" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label43" runat="server" Text="Label" class="text-muted"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image12" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label12" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label28" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label44" runat="server" Text="Label" class="text-muted"></asp:Label>
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
                    <asp:Label ID="Label13" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label29" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label45" runat="server" Text="Label" class="text-muted"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image14" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label14" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label30" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label46" runat="server" Text="Label" class="text-muted"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image15" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label15" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label31" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label47" runat="server" Text="Label" class="text-muted"></asp:Label>
                </div>
              </div>
              <div class="card">
                  <asp:Image ID="Image16" runat="server" class="card-img-top"/>
                <div class="card-body">
                    <asp:Label ID="Label16" runat="server" Text="Label" class="card-title"></asp:Label><br />
                    <asp:Label ID="Label32" runat="server" Text="Label" class="card-text"></asp:Label><br />
                    <asp:Label ID="Label48" runat="server" Text="Label" class="text-muted"></asp:Label>
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
