using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using BaiTHso7_1621050249_QuachDuyHung.All_class;

namespace BaiTHso7_1621050249_QuachDuyHung
{
    public partial class frm_giangvien_view : System.Web.UI.Page
    {
        cls_connect clscon = new cls_connect();
        SqlCommand sqlcm;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                clscon.open_DB();
                string st_sql = "SELECT Magv, Tengv, Namsinh, 'gt' = CASE WHEN Gioitinh = 1 then N'Nữ' WHEN Gioitinh = 0 then N'Nam' ELSE N'Không có dữ liệu' END, Hocvi, Email, Dienthoai, Diachi FROM tbl_giangvien";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlDataReader re = sqlcm.ExecuteReader();
                string st_kq = "";
                int dem = 0;
                while (re.Read())
                {
                    dem = dem + 1;
                    st_kq = st_kq + "<tr><td>" + dem + "</td><td>" + re.GetValue(0).ToString() + "</td><td>" + re.GetValue(1).ToString() + "</td><td>" + re.GetValue(2).ToString() + "</td><td>" + re.GetValue(3).ToString() + "</td><td>" + re.GetValue(4).ToString() + "</td><td>" + re.GetValue(5).ToString() + "</td><td>" + re.GetValue(6).ToString() + "</td><td>" + re.GetValue(7).ToString() + "</td></tr>";
                }
                re.Close();
                ltr_GV.Text = st_kq;

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