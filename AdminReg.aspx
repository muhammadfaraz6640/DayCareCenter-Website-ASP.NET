<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReg.aspx.cs" Inherits="DayCareWebsite.AdminReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SuperChildDayCare</title>
        <link rel = "stylesheet" href = "style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</head>
<body style="background-image:linear-gradient(to right, rgb(232, 55, 219), rgb(113, 113, 255));">
    <form id="form1" runat="server">
        <section id = "nav-bar">                                   
            <nav class="navbar navbar-expand-lg navbar-light ">
                <a class="navbar-brand" href="AdminHome.aspx">SuperChildDayCare</a>
                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <a class="navbar-log" href="AdminReg.aspx">Register Admin</a>                
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="AdminHome.aspx">Home </a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="EventsPage.aspx">Add Events</a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="PicturePage.aspx">Add Photos</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="AdminComments.aspx">Review comments</a>
                      </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="AdminUser.aspx">See All Users</a>
                    </li>                                         
                    <li class="nav-item active">
                        <a class="nav-link" href="FeePage.aspx">Add Fee</a>
                    </li>                                         
                  </ul>                
                </div>                                          
              </nav>
        </section>
        <div class="gap"></div>
        <div class="act">
            <h1>ADMIN REGISTRATION</h1>
          </div>
        <div class="reg-inp-adm">            
          <form method="POST" class="Register">
            <label>Name </label><br />
            <asp:TextBox ID="TextBox1" runat="server" type="text" placeholder="Child's Name"></asp:TextBox><br />            
            <label>Email </label><br />
            <asp:TextBox ID="TextBox2" runat="server" type="email" placeholder="E-mail"></asp:TextBox><br />            
            <label>Password </label><br />
            <asp:TextBox ID="TextBox3" runat="server" type="password" placeholder="Password"></asp:TextBox><br />            
            <asp:Button ID="Button1" runat="server" Text="Register" onclick="Button1_Click" type="submit" class="btn btn-secondary btn-lg" value="submit"/>            
          </form>  
        </div>
        <div class="Footer_Admin">
          <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com<p>
        </div>
        <div>                                                
        </div>
    </form>
</body>
</html>
