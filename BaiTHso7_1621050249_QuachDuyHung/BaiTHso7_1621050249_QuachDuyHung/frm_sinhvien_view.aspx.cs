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
    public partial class frm_sinhvien_view : System.Web.UI.Page
    {
        cls_connect clscon = new cls_connect();
        SqlCommand sqlcm;
        //SqlDataAdapter sqlad;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                clscon.open_DB();

                ////DANH SÁCH KHOA TRONG DROPDOWNLIST
                //string st_sql = "SELECT CONCAT('Khóa ', Makh) FROM tbl_khoahoc";
                //sqlad = new SqlDataAdapter(st_sql, clscon.con);                
                //DataSet ds = new DataSet();
                //sqlad.Fill(ds);
                //this.ddl_Khoa.DataSource = ds;
                //this.ddl_Khoa.DataValueField = "Makh";
                //this.ddl_Khoa.DataBind();
                //------------------------------------------------------
                string select2 = "SELECT CONCAT('Khóa ', Makh) FROM tbl_khoahoc";
                sqlcm = new SqlCommand(select2, clscon.con);
                SqlDataReader reader1 = sqlcm.ExecuteReader();
                while (reader1.Read())
                {
                    ddl_Khoa.Items.Add(reader1.GetValue(0).ToString());
                }
                reader1.Close();
                    
                

                //DANH SÁCH SINH VIÊN
                string st_sql = "SELECT sv.Masv,sv.Tensv, sv.Namsinh, 'gt' = CASE WHEN sv.Gioitinh = 1 then N'Nữ' WHEN sv.Gioitinh = 0 then N'Nam' ELSE N'Không có dữ liệu' END, sv.Khoa, cn.Tencn, Email, Dienthoai, Diachi FROM tbl_sinhvien AS sv, tbl_chuyennganh AS cn WHERE sv.Chuyennganh = cn.Macn ORDER BY sv.Masv";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlDataReader re = sqlcm.ExecuteReader();
                string st_kq = "";
                int dem = 0;
                while (re.Read())
                {
                    dem = dem + 1;
                    st_kq = st_kq + "<tr><td>" + dem + "</td><td>" + re.GetValue(0).ToString() + "</td><td>" + re.GetValue(1).ToString() + "</td><td>" + re.GetValue(2).ToString() + "</td><td>" + re.GetValue(3).ToString() + "</td><td>" + re.GetValue(4).ToString() + "</td><td>" + re.GetValue(5).ToString() + "</td><td>" + re.GetValue(6).ToString() + "</td><td>" + re.GetValue(7).ToString() + "</td><td>" + re.GetValue(8).ToString() + "</td></tr>";
                }
                re.Close();
                ltr_SV.Text = st_kq;
                
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

        protected void ddl_Khoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                clscon.open_DB();
                string st_sql = "SELECT sv.Masv,sv.Tensv, sv.Namsinh, 'gt' = CASE WHEN sv.Gioitinh = 1 then N'Nữ' WHEN sv.Gioitinh = 0 then N'Nam' ELSE N'Không có dữ liệu' END, sv.Khoa, cn.Tencn, Email, Dienthoai, Diachi FROM tbl_sinhvien AS sv, tbl_chuyennganh AS cn WHERE sv.Khoa =N'" + ddl_Khoa.Text + "' AND sv.Chuyennganh = cn.Macn ORDER BY sv.Masv";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlDataReader re = sqlcm.ExecuteReader();
                string st_kq = "";
                int dem = 0;
                while (re.Read())
                {
                    dem = dem + 1;
                    st_kq = st_kq + "<tr><td>" + dem + "</td><td>" + re.GetValue(0).ToString() + "</td><td>" + re.GetValue(1).ToString() + "</td><td>" + re.GetValue(2).ToString() + "</td><td>" + re.GetValue(3).ToString() + "</td><td>" + re.GetValue(4).ToString() + "</td><td>" + re.GetValue(5).ToString() + "</td><td>" + re.GetValue(6).ToString() + "</td><td>" + re.GetValue(7).ToString() + "</td><td>" + re.GetValue(8).ToString() + "</td></tr>";
                }
                re.Close();
                ltr_SV.Text = st_kq;
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