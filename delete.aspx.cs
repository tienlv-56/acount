using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; // connection
public partial class delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
       
        string connectionString = "Data Source=LITIEN-PC\\SQLEXPRESS;Initial Catalog=website;Integrated Security=True"; // ket noi database

        SqlConnection conn = new SqlConnection(connectionString);

        conn.Open(); // mở kết nối
        // username + password
        string email = txtEmail.Text.Trim();
        string pass = txtPassword.Text.Trim();
        if (email.Equals("") || pass.Equals("")) // dk
        {
            lblError.Text = "Mật khẩu không khớp hoặc không hợp lệ";
            Response.Write("<script>alert('Xóa không thành công, acount không tồn tại');</script>"); // hiển thị thông báo
        }
        else
        {
            string query = "DELETE FROM tb_user WHERE email ='" + email + "'AND password = '" + pass + "'"; // DELETE

            SqlDataAdapter da = new SqlDataAdapter(query, conn); // active

            DataTable dt = new DataTable();
            da.Fill(dt);

            Response.Write("<script>alert('Xóa thành công, didong.com luôn chào mừng bạn trở lại');</script>"); // thieu truong hop neu ma email ỏ pass sai thi van bao la thanh cong
        }
        conn.Close(); // đóng kết nối
    }
}