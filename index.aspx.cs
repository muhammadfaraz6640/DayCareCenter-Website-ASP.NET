using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace DayCareWebsite
{
    public partial class index : System.Web.UI.Page
    {
        Classes.Connection con = new Classes.Connection();        
        protected void Page_Load(object sender, EventArgs e)
        {
            GetPhotos();
            GetEvents();
            if (Session["UserInfo"] == null)
            {
                Label19.Text = "";
                Button1.Visible = false;
            }
            else
            {
                Label19.Text = Session["UserInfo"].ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
        public void GetPhotos()
        {
            con.getConnection();
            string query = "select top 3 * from Picture order by NEWID()";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            List<string> ls = new List<string>();
            List<string> des = new List<string>();
            string path = "";
            string descript = "";
            while (rd.Read())
            {
                path = rd["pic"].ToString();
                descript = rd["Description"].ToString();
                ls.Add(path);
                des.Add(descript);
                descript = "";
                path = "";
            }
            //images
            Image1.ImageUrl = ls[0];
            Image2.ImageUrl = ls[1];
            Image3.ImageUrl = ls[2];
            //description
            Label1.Text = des[0];
            Label2.Text = des[1];
            Label3.Text = des[2];
        }
        public void GetEvents()
        {
            string query = "select top 3 * from Events order by NEWID()";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            List<string> ls = new List<string>();
            List<string> des = new List<string>();
            List<string> nam = new List<string>();
            List<string> dat = new List<string>();
            List<string> tim = new List<string>();
            string path = "";
            string descript = "";
            string Name = "";
            string date="";
            string time = "";
            while (rd.Read())
            {
                path = rd["EPic"].ToString();
                descript = rd["Description"].ToString();
                Name = rd["name"].ToString();
                date = rd["Date"].ToString();
                time = rd["time"].ToString();
                dat.Add(date);
                tim.Add(time);
                ls.Add(path);
                des.Add(descript);
                nam.Add(Name);
                descript = "";
                Name = "";
                path = "";
                date = "";
                time = "";
            }
            //images for events home page
            Image4.ImageUrl = ls[0];
            Image5.ImageUrl = ls[1];
            Image6.ImageUrl = ls[2];
            //Name labels for events home page
            Label4.Text = nam[0];
            Label7.Text = nam[1];
            Label10.Text = nam[2];
            //description labels for events home pag
            Label5.Text = des[0];
            Label8.Text = des[1];
            Label11.Text = des[2];
            //date and time for events
            Label6.Text = dat[0] + " " + tim[0];
            Label9.Text = dat[1] + " " +tim[1];
            Label12.Text = dat[2] + " " +tim[2];
        }
    }
}