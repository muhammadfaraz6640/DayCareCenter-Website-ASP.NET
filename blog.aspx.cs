using DayCareWebsite.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DayCareWebsite
{
    public partial class blog : System.Web.UI.Page
    {
        Connection gcon = new Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
            if (Session["UserInfo"] == null)
            {
                Label3.Text = "";
                Button2.Visible = false;
                Response.Write("<script>alert('Please Login First')</script>");
                Response.Redirect("login.aspx");
            }
            else
            {
                Label3.Text = Session["UserInfo"].ToString();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
        string email = "";
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name="";
            email=Session["UserInfo"].ToString();
            string query = "select CName from UserReg where email = '" + email + "'";
            SqlCommand com1 = new SqlCommand(query, gcon.getConnection());
            SqlDataReader rd1 = com1.ExecuteReader();
            while(rd1.Read())
            {
                name = rd1["CName"].ToString();
            }
            gcon.getConnection();
            gcon.ExecuteQuery("insert into Blog values('" + name + "','" + TextBox2.Text + "','" + DateTime.Now + "')");
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        protected void Show()
        {
            gcon.getConnection();           
            //SqlCommand com = new SqlCommand("insert into Blog values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now + "')", gcon.getConnection());
            cmd.CommandText = "select * from Blog order by date desc";
            cmd.Connection = gcon.getConnection();
            sdr.SelectCommand = cmd;
            sdr.Fill(ds, "Comment");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}