using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string connectionString = "Data Source=LITIEN-PC\\SQLEXPRESS;Initial Catalog=website;Integrated Security=True";  //kết nối tới database

        SqlConnection conn = new SqlConnection(connectionString);

        conn.Open(); // mở kết nối

        // username + password
        string email = txtEmail.Text.Trim();

        string old_pass = txtOldPassword.Text.Trim();

        string new_pass = txtNewPassword.Text.Trim();

        string re_new_pass = txtReNewPassword.Text.Trim();

        if (new_pass.Length < 6)
        {
            lblError0.Text = "Mật khẩu phải ít nhất 6 ký tự";

            Response.Write("<script>alert('Password not changed');</script>");
        }
        else if (new_pass != re_new_pass || old_pass.Equals("") || new_pass.Equals(""))  // dk 
        {
            lblError.Text = "Mật khẩu không khớp hoặc không hợp lệ";

            Response.Write("<script>alert('Password not changed');</script>");
        }
        else
        {

            string query = "Update tb_user Set password ='" + new_pass + "'WHERE email = '" + email + "' AND password = '" + old_pass + "'"; // 1Error khi email hoặc pass sai thì vần báo Sucessful

            SqlDataAdapter da = new SqlDataAdapter(query, conn);

            DataTable dt = new DataTable();

            da.Fill(dt);
            Response.Write("<script>alert('Password Changed SucessFull');</script>");
        }
        conn.Close(); // đóng kết nối
    }
}