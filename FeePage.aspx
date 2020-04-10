<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeePage.aspx.cs" Inherits="DayCareWebsite.FeePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ChildDayCare</title>
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
            <h1>FEE ADD</h1>
          </div>
        <div class="reg-inp-admin">            
          <div  class="Register">
            <label>Name </label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" class="dropdown"></asp:DropDownList><br />            
            <label>Amount </label><br />
            <asp:TextBox ID="TextBox1" runat="server" type="number" placeholder="Amount Payable"></asp:TextBox><br />            
            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"  type="submit" class="btn btn-secondary btn-lg"/>            
          </div>  
        </div>
        <div class="gap"></div>
        <div class="grid">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" DataKeyNames="Fid" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="210%">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Fid" HeaderText="Fid" InsertVisible="False" ReadOnly="True" SortExpression="Fid" />
                    <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="DateTimeNow" HeaderText="DateTimeNow" SortExpression="DateTimeNow" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dayCareWebsite %>" DeleteCommand="DELETE FROM [Fee] WHERE [Fid] = @original_Fid AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL)) AND (([Amount] = @original_Amount) OR ([Amount] IS NULL AND @original_Amount IS NULL)) AND (([DateTimeNow] = @original_DateTimeNow) OR ([DateTimeNow] IS NULL AND @original_DateTimeNow IS NULL))" InsertCommand="INSERT INTO [Fee] ([Uid], [Amount], [DateTimeNow]) VALUES (@Uid, @Amount, @DateTimeNow)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Fee]" UpdateCommand="UPDATE [Fee] SET [Uid] = @Uid, [Amount] = @Amount, [DateTimeNow] = @DateTimeNow WHERE [Fid] = @original_Fid AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL)) AND (([Amount] = @original_Amount) OR ([Amount] IS NULL AND @original_Amount IS NULL)) AND (([DateTimeNow] = @original_DateTimeNow) OR ([DateTimeNow] IS NULL AND @original_DateTimeNow IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Fid" Type="Int32" />
                    <asp:Parameter Name="original_Uid" Type="Int32" />
                    <asp:Parameter Name="original_Amount" Type="String" />
                    <asp:Parameter Name="original_DateTimeNow" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Uid" Type="Int32" />
                    <asp:Parameter Name="Amount" Type="String" />
                    <asp:Parameter Name="DateTimeNow" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Uid" Type="Int32" />
                    <asp:Parameter Name="Amount" Type="String" />
                    <asp:Parameter Name="DateTimeNow" Type="DateTime" />
                    <asp:Parameter Name="original_Fid" Type="Int32" />
                    <asp:Parameter Name="original_Uid" Type="Int32" />
                    <asp:Parameter Name="original_Amount" Type="String" />
                    <asp:Parameter Name="original_DateTimeNow" Type="DateTime" />
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
