using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace HomePage
{
    public partial class Adstamp : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["postoffice"].ToString());
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = cn;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/img/") + fileName);
            string file1 = "~/img/" + fileName;
            try
            {
                cn.Close();
                cn.Open();
                cmd.CommandText = "insert into adstamp(name,noc,price,image)values('" + name.Text + "','" + noc.Text + "','" + price.Text + "','" + file1 + "')";
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