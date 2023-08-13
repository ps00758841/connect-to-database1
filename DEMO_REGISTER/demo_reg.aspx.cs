using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Registration_Form1
{

    public partial class Registration_Form : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        private object fileUpload1;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("sp1_Insert", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Firstname", txtname.Text);
            cmd.Parameters.AddWithValue("@Lastname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Gender", txtPassword.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ConfirmPassword", txtPassword.Text);
            cmd.Parameters.AddWithValue("@Zip", TextBox4.Text);
            cmd.Parameters.AddWithValue("@State", ddlState.Text);
            cmd.Parameters.AddWithValue("@Country", ddlCountry.Text);
            cmd.Parameters.AddWithValue("@Areaofinterest", cbMusic.Text);
           // SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@ProfilePicture", FileUpload1);

            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (i > 0)
            {
                Response.Write("<script> alert('Registered Sucessfully'); </script>");
                //Response.Redirect("login.aspx");
            }


        }
    }
}