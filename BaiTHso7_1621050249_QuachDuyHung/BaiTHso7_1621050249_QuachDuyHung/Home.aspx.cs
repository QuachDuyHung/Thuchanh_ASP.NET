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
    public partial class Home : System.Web.UI.Page
    {
        cls_connect clscon = new cls_connect();
        SqlCommand sqlcm;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                clscon.open_DB();

                //đếm tổng số sinh viên
                string st_sql = "SELECT COUNT(*) FROM tbl_sinhvien";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                int so_sv = (int)sqlcm.ExecuteScalar();
                lbl_SV.Text = so_sv.ToString();

                //đếm tổng số giáo viên
                st_sql = "SELECT COUNT(*) FROM tbl_giangvien";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                int so_gv = (int)sqlcm.ExecuteScalar();
                lbl_GV.Text = so_gv.ToString();

                //đếm tổng số đồ án tốt nghiệp
                st_sql = "SELECT COUNT(*) FROM tbl_doan";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                int so_da = (int)sqlcm.ExecuteScalar();
                lbl_TN.Text = so_da.ToString();

                //đếm tổng số chuyên ngành
                st_sql = "SELECT COUNT(*) FROM tbl_chuyennganh";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                int so_cn = (int)sqlcm.ExecuteScalar();
                lbl_CN.Text = so_cn.ToString();


                //------------------------CHUYÊN NGÀNH------------------------------------------
                //THỐNG KÊ SINH VIÊN THEO CHUYÊN NGÀNH
                st_sql = "SELECT tbl_chuyennganh.Macn, tbl_chuyennganh.Tencn, COUNT(*) FROM tbl_chuyennganh, tbl_sinhvien WHERE tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh group by Macn,Tencn";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlDataReader re = sqlcm.ExecuteReader();
                string st_kq = "";
                //int dem = 0;
                while(re.Read())
                {
                    //dem = dem + 1;
                    st_kq = st_kq + "<tr><td>" + re.GetValue(0).ToString() + "</td><td>" + re.GetValue(1).ToString() + "</td><td>" + re.GetValue(2).ToString() + "</td><td><i class='fa fa-search w3-large'></i><a href='frm_chuyennganh_sinhvien.aspx?MaChuyenNganh=" + re.GetValue(0).ToString() + "'> Danh sách</a></td></tr>";
                }
                re.Close();
                ltr_chuyennganh.Text = st_kq;

                
                //----------------------------ĐỒ ÁN TÔT NGHIỆP THEO ĐIỂM------------------------------------------------
                //thống kê đồ án <=7
                st_sql = "SELECT COUNT(*) FROM tbl_doan WHERE Diem <= 7";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                int so_da1 = (int)sqlcm.ExecuteScalar();
                lbl_DA1.Text = so_da1.ToString() + " đồ án";

                //thống kê đồ án từ 7.1 đến 8
                st_sql = "SELECT COUNT(*) FROM tbl_doan WHERE Diem >= 7.1 AND Diem <= 8";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                int so_da2 = (int)sqlcm.ExecuteScalar();
                lbl_DA2.Text = so_da2.ToString() + " đồ án";

                //thống kê đồ án từ 8.1 đến 9
                st_sql = "SELECT COUNT(*) FROM tbl_doan WHERE Diem >= 8.1 AND Diem <= 9";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                int so_da3 = (int)sqlcm.ExecuteScalar();
                lbl_DA3.Text = so_da3.ToString() + " đồ án";

                //thống kê đồ án từ 9.1 đến 10
                st_sql = "SELECT COUNT(*) FROM tbl_doan WHERE Diem >= 9.1 AND Diem <= 10";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                int so_da4 = (int)sqlcm.ExecuteScalar();
                lbl_DA4.Text = so_da4.ToString() + " đồ án";


                //-----------------------------------------ĐỒ ÁN TỐT NGHIỆP THEO LĨNH VỰC-------------------------------------------
                st_sql = "SELECT Malv, Tenlv, COUNT(*) FROM tbl_linhvuc, tbl_doan WHERE tbl_linhvuc.Malv = tbl_doan.linhvuc GROUP BY Malv, Tenlv";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlDataReader re1 = sqlcm.ExecuteReader();
                string st_kq1 = "";
                //int dem = 0;
                while (re1.Read())
                {
                    //dem = dem + 1;
                    st_kq1 = st_kq1 + "<tr><td>" + re1.GetValue(0).ToString() + "</td><td>" + re1.GetValue(1).ToString() + "</td><td>" + re1.GetValue(2).ToString() + "</td><td><i class='fa fa-search w3-large'></i><a href='frm_doan_linhvuc.aspx?MaLinhVuc=" + re1.GetValue(0).ToString() + "'> Danh sách</a></td></tr>";
                }
                re1.Close();
                ltr_LinhVuc.Text = st_kq1;
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