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
    public partial class frm_sinhvien_chitiet : System.Web.UI.Page
    {
        cls_connect clscon = new cls_connect();
        SqlCommand sqlcm;

        protected void Page_Load(object sender, EventArgs e)
        {            
            try
            {
                clscon.open_DB();
                string ma = Request.QueryString.Get("masv").ToString();
                string st_sql = "SELECT * FROM tbl_sinhvien WHERE masv=@ma";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlParameter sqlpa = new SqlParameter();
                sqlpa.ParameterName = "@ma";
                sqlpa.Value = ma;
                sqlpa.DbType = DbType.String;
                sqlcm.Parameters.Add(sqlpa);

                SqlDataReader re = sqlcm.ExecuteReader();
                re.Read();
                
                txt_ma.Text = re.GetValue(0).ToString();
                txt_name.Text = re.GetValue(1).ToString();
                txt_namsinh.Text = re.GetValue(2).ToString();
                txt_gioitinh.Text = re.GetValue(3).ToString();
                txt_khoa.Text = re.GetValue(4).ToString();
                txt_chuyennganh.Text = re.GetValue(5).ToString();
                txt_email.Text = re.GetValue(6).ToString();
                txt_dt.Text = re.GetValue(7).ToString();
                txt_diachi.Text = re.GetValue(8).ToString();

                re.Close();

                if (Request.QueryString.Get("type").ToString() == "upd")
                {
                    btn_update.Visible = true;
                }
                else if (Request.QueryString.Get("type").ToString() == "del")
                {
                    btn_delete.Visible = true;
                }
                else
                {
                    Response.Redirect("frm_sinhvien_view.aspx");
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

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("frm_sinhvien.aspx");
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            string ma = Request.QueryString.Get("masv").ToString();

            try
            {
                clscon.open_DB();
                string st_sql = "DELETE FROM tbl_sinhvien WHERE Masv=@ma";
                sqlcm = new SqlCommand(st_sql, clscon.con);
                SqlParameter sqlpa = new SqlParameter();
                sqlpa.ParameterName = "@ma";
                sqlpa.Value = ma;
                sqlcm.Parameters.Add(sqlpa);

                int check = sqlcm.ExecuteNonQuery();
                if(check != 0)
                {
                    Response.Redirect("frm_sinhvien.aspx");
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