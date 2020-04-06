using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DayCareWebsite
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }        
        protected void Button1_Click(object sender, EventArgs e)
        {                 
            Classes.ClearText tx = new Classes.ClearText();
            Classes.Login lo = new Classes.Login();           
            lo.Email = TextBox1.Text;
            lo.Password = TextBox2.Text;
            lo.GetLogin(lo);
            
            if (lo.role == "Admin" && lo.cond == true)
            {
                Response.Write("<script>alert('Welcome Admin')</script>");
                Session["AdminInfo"] = TextBox1.Text;
                Response.Redirect("AdminHome.aspx");
            }
            else if(lo.role == "User" && lo.cond == true)
            {
                Response.Write("<script>alert('Welcome User')</script>");
                Session["UserInfo"] = TextBox1.Text;
                Response.Redirect("index.aspx");
            }
            if(lo.cond == false)
            {
                Response.Write("<script>alert('Invalid User Id Or Password')</script>");                
            }
            tx.ClearTextbox(TextBox1,TextBox2);
        }
    }

    internal class sqlDataReader
    {
    }

    internal class sqlbDataReader
    {
    }
}
/*Classes.Connection con = new Classes.Connection();
            string cname = "";
            string gname = "";
            string rel = "";
            string query = "select * from UserReg where email = '" + email + "' and password = '" + pass + "' ";
                SqlCommand com = new SqlCommand(query, con.getConnection());
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                    cname = rd["CName"].ToString();
                    gname = rd["GName"].ToString();
                    rel = rd["Grelation"].ToString();
                 }
            Label1.Text = cname;
            Label2.Text = gname;
            Label3.Text = rel;
*/