 using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DayCareWebsite
{
    public partial class Events : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetEvents();
            if (Session["UserInfo"] == null)
            {
                Label49.Text = "";
                Button1.Visible = false;
                Response.Write("<script>alert('Please Login First')</script>");
                Response.Redirect("login.aspx");
            }
            else
            {
                Label49.Text = Session["UserInfo"].ToString();
            }        
        }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
    }

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
        public void GetEvents()
        {
            string query = "select top 16 * from Events order by Eid Desc";
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
            string date = "";
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
            //images            
            assign_images(Image1, Image2, Image3, Image4, Image5, Image6, Image7, Image8, Image9, Image10, Image11, Image12, Image13, Image14, Image15, Image16);
            int j = 0;
            foreach (var item in ls)
            {
                img[j].ImageUrl = item;
                j++;
            }
            assign_labels(Label1, Label2, Label3, Label4, Label5, Label6, Label7, Label8, Label9, Label10, Label11, Label12, Label13, Label14, Label15, Label16);
            int k = 0;
            foreach (var item in nam)
            {
                lb[k].Text = item;
                k++;
            }
            //description
            assign_labels(Label17, Label18, Label19, Label20, Label21, Label22, Label23, Label24, Label25, Label26, Label27, Label28, Label29, Label30, Label31, Label32);
            int p = 0;
            foreach (var item in des)
            {
                lb[p].Text = item;
                p++;
            }
            //date and time
            assign_labels(Label33, Label34, Label35, Label36, Label37, Label38, Label39, Label40, Label41, Label42, Label43, Label44, Label45, Label46, Label47, Label48);
            int l = 0;            
            foreach (var item in dat)
            {
                  lb[l].Text = item ;
                  l++;
             }
            
        }
    }
}