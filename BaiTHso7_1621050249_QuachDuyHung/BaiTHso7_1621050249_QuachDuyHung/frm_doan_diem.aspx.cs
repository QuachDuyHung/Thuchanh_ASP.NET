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
    public partial class frm_doan_diem : System.Web.UI.Page
    {
        cls_connect clscon = new cls_connect();
        SqlCommand sqlcm;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                clscon.open_DB();
                string st_Diem1 = Request.QueryString.Get("Diem1");
                string st_Diem2 = Request.QueryString.Get("Diem2");
                lbl_Diem.Text = "DANH SÁCH ĐỒ ÁN TÔT NGHIỆP CÓ ĐIỂM TỪ &nbsp;" + st_Diem1 + " -> " + st_Diem2 + " &nbsp;(ĐIỂM)";
                string st_sql = "SELECT  SV.Masv, SV.Tensv, DA.Tenda, CONCAT_WS(' - ',DA.GVHD,GV.Tengv), DA.Diem FROM tbl_doan AS DA INNER JOIN tbl_sinhvien AS SV ON DA.Masv = SV.Masv INNER JOIN tbl_giangvien AS GV ON DA.GVHD = GV.Magv INNER JOIN tbl_linhvuc AS LV ON DA.linhvuc = LV.Malv WHERE DA.Diem >=" + st_Diem1 + " AND DA.Diem<=" + st_Diem2;
                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlDataReader re = sqlcm.ExecuteReader();
                string st_kq = "";
                int dem = 0;
                while (re.Read())
                {
                    dem = dem + 1;
                    st_kq = st_kq + "<tr><td>" + dem + "</td><td>" + re.GetValue(0).ToString() + "</td><td>" + re.GetValue(1).ToString() + "</td><td>" + re.GetValue(2).ToString() + "</td><td>" + re.GetValue(3).ToString() + "</td><td>" + re.GetValue(4).ToString() + "</td></tr>";
                }
                re.Close();
                lbl_Tong.Text = "Tổng số bản ghi: " + dem;
                ltr_DoAn_Diem.Text = st_kq;

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