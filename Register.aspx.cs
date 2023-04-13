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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["postoffice"].ToString());
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = cn;
        }

        protected void fname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try 
            {
            cn.Close();
            cn.Open();
                cmd.CommandText = "insert into Customer(fname,lname,password,cpass,gender,email,phoneno,address)values('"+fname.Text+"','"+lname.Text+"','"+pass.Text+"','"+cpass.Text+"','"+gender.SelectedItem.Text+"','"+email.Text+ "','" + phno.Text + "','" + address.Text + "')";
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