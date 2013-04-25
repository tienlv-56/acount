using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {

        string connectionString = "Data Source=LITIEN-PC\\SQLEXPRESS;Initial Catalog=website;Integrated Security=True"; // kết nối tới dl

        SqlConnection conn = new SqlConnection(connectionString);

        conn.Open(); // mở kết nối ra

        // username + password
        string email = txtEmail.Text.Trim();

        string pass = txtPassword.Text.Trim();

        string repass = txtRePassword.Text.Trim();

        if (pass.Length < 6) //dk
        {
            lblError0.Text = "Mật khẩu phải ít nhất 6 ký tự";

            Response.Write("<script>alert('Password not changed');</script>");
        }
        else if (repass != pass || pass.Equals("")) //dk
        {
            lblError.Text = "Mật khẩu không khớp hoặc không hợp lệ";

            Response.Write("<script>alert('Register UnSucessfull');</script>"); // thông báo
        }
        else
        {
            
            string query = "INSERT INTO tb_user (email, password) VALUES ('" + email + "', '" + pass + "')"; // thêm dl (acount)vào database

            SqlDataAdapter da = new SqlDataAdapter(query, conn);

            DataTable dt = new DataTable();

            da.Fill(dt);

            Response.Write("<script>alert('Register SucessFull');</script>");
        }
        conn.Close(); // đóng kết nối
    }
}