<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="DayCareWebsite.AdminComments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Editing Comments</title>
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
                <a class="navbar-brand" href="AdminHome.html">SuperChildDayCare</a>
                
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
        <div class="grid">
           

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Uid" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="244px" Width="344px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Uid" HeaderText="Uid" InsertVisible="False" ReadOnly="True" SortExpression="Uid" />
                    <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                    <asp:BoundField DataField="Cgender" HeaderText="Cgender" SortExpression="Cgender" />
                    <asp:BoundField DataField="Cage" HeaderText="Cage" SortExpression="Cage" />
                    <asp:BoundField DataField="GName" HeaderText="GName" SortExpression="GName" />
                    <asp:BoundField DataField="Grelation" HeaderText="Grelation" SortExpression="Grelation" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
                    <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dayCareWebsite %>" DeleteCommand="DELETE FROM [UserReg] WHERE [Uid] = @original_Uid AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL)) AND (([Cgender] = @original_Cgender) OR ([Cgender] IS NULL AND @original_Cgender IS NULL)) AND (([Cage] = @original_Cage) OR ([Cage] IS NULL AND @original_Cage IS NULL)) AND (([GName] = @original_GName) OR ([GName] IS NULL AND @original_GName IS NULL)) AND (([Grelation] = @original_Grelation) OR ([Grelation] IS NULL AND @original_Grelation IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))" InsertCommand="INSERT INTO [UserReg] ([CName], [Cgender], [Cage], [GName], [Grelation], [email], [password], [pic], [role]) VALUES (@CName, @Cgender, @Cage, @GName, @Grelation, @email, @password, @pic, @role)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserReg]" UpdateCommand="UPDATE [UserReg] SET [CName] = @CName, [Cgender] = @Cgender, [Cage] = @Cage, [GName] = @GName, [Grelation] = @Grelation, [email] = @email, [password] = @password, [pic] = @pic, [role] = @role WHERE [Uid] = @original_Uid AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL)) AND (([Cgender] = @original_Cgender) OR ([Cgender] IS NULL AND @original_Cgender IS NULL)) AND (([Cage] = @original_Cage) OR ([Cage] IS NULL AND @original_Cage IS NULL)) AND (([GName] = @original_GName) OR ([GName] IS NULL AND @original_GName IS NULL)) AND (([Grelation] = @original_Grelation) OR ([Grelation] IS NULL AND @original_Grelation IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Uid" Type="Int32" />
                    <asp:Parameter Name="original_CName" Type="String" />
                    <asp:Parameter Name="original_Cgender" Type="String" />
                    <asp:Parameter Name="original_Cage" Type="String" />
                    <asp:Parameter Name="original_GName" Type="String" />
                    <asp:Parameter Name="original_Grelation" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
                    <asp:Parameter Name="original_pic" Type="String" />
                    <asp:Parameter Name="original_role" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CName" Type="String" />
                    <asp:Parameter Name="Cgender" Type="String" />
                    <asp:Parameter Name="Cage" Type="String" />
                    <asp:Parameter Name="GName" Type="String" />
                    <asp:Parameter Name="Grelation" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="pic" Type="String" />
                    <asp:Parameter Name="role" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CName" Type="String" />
                    <asp:Parameter Name="Cgender" Type="String" />
                    <asp:Parameter Name="Cage" Type="String" />
                    <asp:Parameter Name="GName" Type="String" />
                    <asp:Parameter Name="Grelation" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="pic" Type="String" />
                    <asp:Parameter Name="role" Type="String" />
                    <asp:Parameter Name="original_Uid" Type="Int32" />
                    <asp:Parameter Name="original_CName" Type="String" />
                    <asp:Parameter Name="original_Cgender" Type="String" />
                    <asp:Parameter Name="original_Cage" Type="String" />
                    <asp:Parameter Name="original_GName" Type="String" />
                    <asp:Parameter Name="original_Grelation" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
                    <asp:Parameter Name="original_pic" Type="String" />
                    <asp:Parameter Name="original_role" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
           

        </div>
        <div class="gap"></div>
        <div class="footer">
            <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com<p>
        </div>
    </form>
</body>
</html>
