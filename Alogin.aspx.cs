using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace HomePage
{
    public partial class Alogin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["postoffice"].ToString());
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = cn;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cn.Close();
                cn.Open();
                cmd.CommandText = "select * from Customer where email='"+user.Text+"' and password='"+pass.Text+"'";
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    Response.Redirect("Adstamp.aspx");
                }
                else {
                    Response.Write("failed");
                }
               
                cn.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}