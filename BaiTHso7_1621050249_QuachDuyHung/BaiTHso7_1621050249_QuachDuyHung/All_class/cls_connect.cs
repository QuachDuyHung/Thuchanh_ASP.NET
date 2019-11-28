using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace BaiTHso7_1621050249_QuachDuyHung.All_class
{
    public class cls_connect
    {
        public string s_con = WebConfigurationManager.ConnectionStrings["connect_DATN"].ToString();
        public SqlConnection con;

        public void open_DB()
        {
            if (con == null)
            {
                con = new SqlConnection(s_con);
            }
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
        }

        public void close_DB()
        {
            if (con != null)
            {
                con.Close();
                con.Dispose();
            }
        }

    }
}