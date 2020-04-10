<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminComments.aspx.cs" Inherits="DayCareWebsite.AdminUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Review Users</title>
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

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" DataKeyNames="Bid" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="200%">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Bid" HeaderText="Bid" InsertVisible="False" ReadOnly="True" SortExpression="Bid" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dayCareWebsite %>" DeleteCommand="DELETE FROM [Blog] WHERE [Bid] = @original_Bid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))" InsertCommand="INSERT INTO [Blog] ([Name], [Comment], [date]) VALUES (@Name, @Comment, @date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Blog]" UpdateCommand="UPDATE [Blog] SET [Name] = @Name, [Comment] = @Comment, [date] = @date WHERE [Bid] = @original_Bid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Bid" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Comment" Type="String" />
                    <asp:Parameter Name="original_date" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Comment" Type="String" />
                    <asp:Parameter Name="date" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Comment" Type="String" />
                    <asp:Parameter Name="date" Type="DateTime" />
                    <asp:Parameter Name="original_Bid" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Comment" Type="String" />
                    <asp:Parameter Name="original_date" Type="DateTime" />
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
