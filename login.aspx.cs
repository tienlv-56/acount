using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
        string connectionString = "Data Source=LITIEN-PC\\SQLEXPRESS;Initial Catalog=website;Integrated Security=True";
        
        SqlConnection conn = new SqlConnection(connectionString);
        
        conn.Open(); // mở kết nối
        
        // username + password
        string email = txtEmail.Text.Trim();
        string pass = txtPass.Text.Trim();
        if (email.Equals("") || pass.Equals(""))
        {
            lblError.Text = "Mật khẩu hoặc email trống";

            Response.Write("<script>alert('Yêu cầu nhập Email & Password');</script>"); // thông báo
        }
        else
        {
            string query = "SELECT id FROM tb_user WHERE email = '" + email + "' AND password = '" + pass + "'"; // kiếm trtong database

            SqlDataAdapter da = new SqlDataAdapter(query, conn);

            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count == 1)
                Response.Write("<script>alert('Đăng nhập thành công');</script>"); // thông báo
            else
                Response.Write("<script>alert('Sai Email hoặc Password');</script>");
     
        }
        conn.Close(); // đóng kết nối
    }
}