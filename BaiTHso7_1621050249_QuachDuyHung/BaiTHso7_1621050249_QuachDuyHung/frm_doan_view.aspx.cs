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
    public partial class frm_doan_view : System.Web.UI.Page
    {
        cls_connect clscon = new cls_connect();
        SqlCommand sqlcm;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                clscon.open_DB();
                string st_sql = "SELECT  SV.Masv, SV.Tensv, DA.Tenda, CONCAT_WS(' - ',DA.GVHD,GV.Tengv),	CONCAT_WS(' - ',DA.GVPB,PP.Tengv), LV.Tenlv, DA.Diem, DA.Namtn FROM tbl_doan AS DA INNER JOIN tbl_sinhvien AS SV ON DA.Masv = SV.Masv INNER JOIN tbl_giangvien AS GV ON DA.GVHD = GV.Magv INNER JOIN tbl_giangvien AS PP ON DA.GVPB = PP.Magv INNER JOIN tbl_linhvuc AS LV ON DA.linhvuc = LV.Malv ORDER BY DA.Diem DESC";
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
                ltr_DoAn.Text = st_kq;

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