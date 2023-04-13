using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlClient;
using System.Configuration;

namespace HomePage
{
    public partial class Opost : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["postoffice"].ToString());
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = cn;
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                cn.Close();
                cn.Open();
                cmd.CommandText = "insert into opost(fname,lname,wanttoorder,wanttoorder1,Date,Adress,AddressLine2,City,Region,pncode,Country)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')";
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