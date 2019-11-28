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
    public partial class frm_load_DB : System.Web.UI.Page
    {
        cls_connect clscon = new cls_connect();
        SqlCommand sqlcm;


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                clscon.open_DB();
                //Response.Write("Kết nối CSDL thành công!");
                string st_sql = "SELECT COUNT(*) FROM tbl_sinhvien";

                //sqlcm = new SqlCommand();
                //sqlcm.Connection = clscon.con;
                //sqlcm.CommandText = st_sql;

                sqlcm = new SqlCommand(st_sql, clscon.con);

                //câu lệnh dùng store
                //sqlcm.CommandType = CommandType.StoredProcedure;

                int so_sv = (int) sqlcm.ExecuteScalar();
                lbl_Sv.Text = so_sv.ToString() + " (SV)";

                string diem_1 = "select count(*) from tbl_doan where Diem <= 7";
                sqlcm = new SqlCommand(diem_1, clscon.con);
                int so_doan = (int)sqlcm.ExecuteScalar();
                Label1.Text = so_doan.ToString() + " đồ án";

                string diem_2 = "select count(*) from tbl_doan where Diem >= 7.1 and Diem <= 8.0";
                sqlcm = new SqlCommand(diem_2, clscon.con);
                int so_doan1 = (int)sqlcm.ExecuteScalar();
                Label2.Text = so_doan1.ToString() + " đồ án";

                //--------------------

                st_sql = "select Tencn as N'Tên chuyên ngành', count(Masv) as N'Số sinh viên' from tbl_sinhvien inner join tbl_chuyennganh on Chuyennganh = Macn group by Tencn, Macn";

                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlDataReader re = sqlcm.ExecuteReader();
                string st_kq = "";
                int dem = 0;
                while (re.Read())
                {
                    dem = dem + 1;
                    st_kq = st_kq + "<tr><td>" + dem + "</td><td>" + re.GetValue(0).ToString() + "</td><td>" + re.GetValue(1).ToString() + "</td></tr>";
                }
                re.Close();
                lit_kq.Text = st_kq;
            }
            catch (SqlException ex)
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