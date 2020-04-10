<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventsPage.aspx.cs" Inherits="DayCareWebsite.EventsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Events</title>
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
                  <a class="navbar-log" href="AdminRegister.aspx">Register Admin</a>                
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
    </div>
    <div class="gap"></div>
    <div class="act">
        <h1>ADD EVENTS</h1>
      </div>
    <div class="reg-inp-eve">            
      <div class="Register">
        <label>Name </label><br />
        <asp:TextBox ID="TextBox1" runat="server" type="text" placeholder="Event's Name" style="width: 250px;"></asp:TextBox ><br />          
        <label>Description about Event </label><br />
        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" placeholder=" Write Description Without apostrophy S"></asp:TextBox><br />        
        <label>Date </label><br />
        <asp:TextBox ID="TextBox3" runat="server"  type="date" placeholder="Current Date" style="width: 250px;"></asp:TextBox><br />        
        <label>Time </label><br />
        <asp:TextBox ID="TextBox4" runat="server"  type="time" placeholder="Current Date" style="width: 250px;"></asp:TextBox>        
        <label>Event's Photo</label><br />
        <asp:Image ID="Image1" runat="server" Height="120px" Width="118px" class="img-pho" style="width: 64px;height: 75px;"/>                
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>        
        <asp:Button ID="Button1" runat="server" Text="Upload" type="button" name="Upload" value="Upload" style="width: 70px;" class="btn btn-secondary btn-lg"  onclick="Button1_Click"/>                
        <asp:Button ID="Button2" runat="server" Text="Insert" type="submit" class="btn btn-secondary btn-lg"  onclick="Button2_Click"/>        
      </div>  
    </div>
    <div class="gap"></div>        
    <div class="grid">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" DataKeyNames="Eid" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Eid" HeaderText="Eid" InsertVisible="False" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="EPic" HeaderText="EPic" SortExpression="EPic" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dayCareWebsite %>" DeleteCommand="DELETE FROM [Events] WHERE [Eid] = @original_Eid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([EPic] = @original_EPic) OR ([EPic] IS NULL AND @original_EPic IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([time] = @original_time) OR ([time] IS NULL AND @original_time IS NULL))" InsertCommand="INSERT INTO [Events] ([name], [Description], [EPic], [Date], [time]) VALUES (@name, @Description, @EPic, @Date, @time)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Events]" UpdateCommand="UPDATE [Events] SET [name] = @name, [Description] = @Description, [EPic] = @EPic, [Date] = @Date, [time] = @time WHERE [Eid] = @original_Eid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([EPic] = @original_EPic) OR ([EPic] IS NULL AND @original_EPic IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([time] = @original_time) OR ([time] IS NULL AND @original_time IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Eid" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_EPic" Type="String" />
                <asp:Parameter Name="original_Date" Type="String" />
                <asp:Parameter Name="original_time" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="EPic" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="time" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="EPic" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="time" Type="String" />
                <asp:Parameter Name="original_Eid" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_EPic" Type="String" />
                <asp:Parameter Name="original_Date" Type="String" />
                <asp:Parameter Name="original_time" Type="String" />
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
