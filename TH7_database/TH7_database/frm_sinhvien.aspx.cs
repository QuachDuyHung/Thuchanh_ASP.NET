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
    public partial class frm_sinhvien : System.Web.UI.Page
    {
        cls_connect clscon = new cls_connect();
        SqlCommand sqlcm;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                clscon.open_DB();                
                //load dữ liệu bảng sinh viên
                string st_sql = "SELECT Masv,Tensv,Khoa,Email FROM tbl_sinhvien";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlDataReader re = sqlcm.ExecuteReader();
                string st_kq = "";
                int dem = 0;
                while(re.Read())
                {
                    dem = dem + 1;
                    st_kq = st_kq + "<tr><td>" + dem + "</td><td>" + re.GetValue(0).ToString() + "</td><td>" + re.GetValue(1).ToString() + "</td><td>" + re.GetValue(2).ToString() + "</td><td>" + re.GetValue(3).ToString() + "</td><td><a href='frm_sinhvien_chitiet.aspx?masv=" + re.GetValue(0).ToString() + "'>View</a></td><td><a href='frm_sinhvien_chitiet.aspx?masv=" + re.GetValue(0).ToString() + "&type=upd'>Update</a></td><td><a href='frm_sinhvien_chitiet.aspx?masv=" + re.GetValue(0).ToString() + "&type=del'>Delete</a></td></tr>";
                }
                re.Close();
                ltr_sinhvien.Text = st_kq;
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

        protected void btn_search_Click(object sender, EventArgs e)
        {
            string st_search = txt_search.Text.Trim();
            st_search = st_search.ToLower();

            try
            {
                clscon.open_DB();
                string st_sql = "SELECT Masv,Tensv,Khoa,Email FROM tbl_sinhvien WHERE Masv LIKE '%' + @id + '%' OR Tensv LIKE N'%' + @id + '%'";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlParameter sqlpa = new SqlParameter();
                sqlpa.ParameterName = "@id";
                sqlpa.Value = st_search;
                sqlcm.Parameters.Add(sqlpa);
                SqlDataReader re = sqlcm.ExecuteReader();
                string st_kq = "";
                int dem = 0;
                while (re.Read())
                {
                    dem = dem + 1;
                    st_kq = st_kq + "<tr><td>" + dem + "</td><td>" + re.GetValue(0).ToString() + "</td><td>" + re.GetValue(1).ToString() + "</td><td>" + re.GetValue(2).ToString() + "</td><td>" + re.GetValue(3).ToString() + "</td><td><a href='frm_sinhvien_chitiet.aspx?masv=" + re.GetValue(0).ToString() + "'>View</a></td><td><a href='frm_sinhvien_chitiet.aspx?masv=" + re.GetValue(0).ToString() + "&type=upd'>Update</a></td><td><a href='frm_sinhvien_chitiet.aspx?masv=" + re.GetValue(0).ToString() + "&type=del'>Delete</a></td></tr>";
                }
                re.Close();
                lbl_tong.Text = "Số kết quả tìm thấy là: " + dem + " hồ sơ sinh viên";
                ltr_sinhvien.Text = st_kq;



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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string st_id = DropDownList1.SelectedValue.ToString();

            try
            {
                clscon.open_DB();
                string st_sql = "SELECT Masv,Tensv,Khoa,Email FROM tbl_sinhvien WHERE Khoa=@id";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlParameter sqlpa = new SqlParameter();
                sqlpa.ParameterName = "@id";
                sqlpa.Value = st_id;
                sqlcm.Parameters.Add(sqlpa);
                SqlDataReader re = sqlcm.ExecuteReader();
                string st_kq = "";
                int dem = 0;
                while (re.Read())
                {
                    dem = dem + 1;
                    st_kq = st_kq + "<tr><td>" + dem + "</td><td>" + re.GetValue(0).ToString() + "</td><td>" + re.GetValue(1).ToString() + "</td><td>" + re.GetValue(2).ToString() + "</td><td>" + re.GetValue(3).ToString() + "</td><td><a href='frm_sinhvien_chitiet.aspx?masv=" + re.GetValue(0).ToString() + "'>View</a></td><td><a href='frm_sinhvien_chitiet.aspx?masv=" + re.GetValue(0).ToString() + "&type=upd'>Update</a></td><td><a href='frm_sinhvien_chitiet.aspx?masv=" + re.GetValue(0).ToString() + "&type=del'>Delete</a></td></tr>";
                }
                re.Close();
                lbl_tong.Text = "Số kết quả tìm thấy là: " + dem + " hồ sơ sinh viên";
                ltr_sinhvien.Text = st_kq;



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