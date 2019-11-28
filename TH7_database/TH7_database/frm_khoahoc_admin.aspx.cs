using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using TH7_database.All_Class;

namespace TH7_database
{
    public partial class frm_khoahoc_admin : System.Web.UI.Page
    {
        cls_connect clscon = new cls_connect();
        SqlCommand sqlcm;
        DataTable dt;
        SqlDataAdapter sqlda;

        protected void Page_Load(object sender, EventArgs e)
        {
            show_khoahoc();
        }

        private void show_khoahoc()
        {
            clscon.open_DB();

            string st_sql = "SELECT * FROM tbl_khoahoc ORDER BY Makh";
            sqlcm = new SqlCommand(st_sql, clscon.con);
            sqlda = new SqlDataAdapter();
            sqlda.SelectCommand = sqlcm;
            dt = new DataTable();
            sqlda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            clscon.close_DB();
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            string st_ma, st_ten, st_time, st_note;
            st_ma = txt_makhoa.Text.Trim();
            st_ten = txt_namekhoa.Text.Trim();
            st_time = txt_time.Text.Trim();
            st_note = txt_note.Text.Trim();

            try
            {
                clscon.open_DB();

                string st_sql = "INSERT INTO tbl_khoahoc VALUES(" + st_ma + ", N'" + st_ten + "', N'" + st_time + "', N'" + st_note + "')";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                int check = sqlcm.ExecuteNonQuery();
                if (check != 0)
                {
                    lbl_add.Text = "Thêm mới khóa học thành công!";
                    show_khoahoc();
                }
                else
                {
                    lbl_add.Text = "Lỗi thêm mới khóa học";
                }

            }
            catch(SqlException ex)
            {
                Response.Write("Lỗi: " + ex);
            }
            finally
            {
                clscon.close_DB();
            }
        }
    }
}