<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="DayCareWebsite.blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reviews</title>
        <link rel = "stylesheet" href = "style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</head>
<body style="background-image:linear-gradient(to right, rgb(232, 55, 219), rgb(113, 113, 255));">
     <form id="form1" runat="server" style="align-items:center;text-align:center;font:bold">
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
         <asp:Label ID="Label3" runat="server" Text="Label" class="pers" Style="text-align:center"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="SignOut" class="btn btn-secondary btn-lg"  onclick="Button2_Click"  Style="margin-left:1000px"/>
        </div>
        
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <hr/>
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name")%>' style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; color:black; font-size:16px; font-weight:bolder " ></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("date") %>' style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; color:black; font-size:16px; font-weight:bolder "></asp:Label><br />
            <div runat="server" innerText ='<%#Eval("Comment")%>' style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; color:blueviolet; font-size:20px; font-weight:bolder "></div>
                <hr />
            </ItemTemplate>
        </asp:Repeater>
        <div class="box-inp-comments">          
          <label>Comment :</label>
          <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Style="margin-left: -27px;width: 290px; height: 170px; padding-bottom:10px;" ></asp:TextBox><br />
          <asp:Button ID="Button1" runat="server" Text="Comment" OnClick="Button1_Click" class="btn btn-secondary btn-lg" style=" width:120px;"/>
        </div>
       </form>
        <div class="gap"></div>
        <div class="footer">
            <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com<p>
        </div>
</body>
</html>
