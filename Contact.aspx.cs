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
    public partial class Contact1 : System.Web.UI.Page
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
                cmd.CommandText = "insert into contact(firstname,lastname,email,comment)values('" + fname.Text + "','" + lname.Text + "','" + ename.Text + "','" + comment.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("Inserted");
                cn.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}