using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Collections.Generic;

namespace HomePage
{
    public partial class Adpost : System.Web.UI.Page
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
            string file1= "~/img/" +fileName;



            try
            {
                cn.Close();
                cn.Open();
                cmd.CommandText = "insert into adpost(name,noofcards,price,image)values('" + name.Text + "','" + noofc.Text + "','" + price.Text + "','"+file1+"')";
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