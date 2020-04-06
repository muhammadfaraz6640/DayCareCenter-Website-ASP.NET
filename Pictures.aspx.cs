using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DayCareWebsite
{
    public partial class Pictures : System.Web.UI.Page
    {
        Classes.Connection con = new Classes.Connection();
        Image[] img = new Image[16];
        void assign_images(params Image[] im)
        {
            for (int i = 0; i < 16; i++)
            {
                img[i] = im[i];
            }
        }
        Label[] lb = new Label[16];
        void assign_labels(params Label[] lab)
        {
            for (int i = 0; i < 16; i++)
            {
                lb[i] = lab[i];
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GetPhotos();
            if (Session["UserInfo"] == null)
            {
                Label17.Text = "";
                Button1.Visible = false;
                Response.Write("<script>alert('Please Login First')</script>");
                Response.Redirect("login.aspx");
            }
            else
            {
                Label17.Text = Session["UserInfo"].ToString();
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
            string query = "select top 16 * from Picture order by Pid Desc";
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
            assign_images(Image1, Image2, Image3, Image4, Image5, Image6, Image7, Image8, Image9, Image10, Image11, Image12, Image13, Image14, Image15, Image16);
            int j = 0;
            foreach(var item in ls)
            {
                img[j].ImageUrl = item;
                j++;
            }
            //description
            assign_labels(Label1, Label2, Label3, Label4, Label5, Label6, Label7, Label8, Label9, Label10, Label11, Label12, Label13, Label14, Label15,Label16);
            int k = 0;
            foreach (var item in des)
            {
                lb[k].Text = item;
                k++;
            }                       
        }
    }
}