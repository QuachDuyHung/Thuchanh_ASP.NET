using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ProjectWeb_B3_Control
{
    public partial class frmBai_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path;
            path = FileUpload1.FileName; //lấy tên file muốn tải lên

            if(FileUpload1.HasFile)
            {
                //thực hiện chức năng upload file lên sever vào thư mục
                FileUpload1.SaveAs(MapPath("Picture/Upload/" + path));

                //thông báo kết quả
                Label1.Text = "Tải ảnh lên sever thành công!";

                //hiển thị ảnh ra control Image
                Image1.ImageUrl = "/Picture/Upload/" + path;
            }
            else
            {
                Label1.Text = "File đã được Upload lên sever!";
            }
        }
        protected bool check_pic(string file)
        {
            string st_Exten = Path.GetExtension(file);
            st_Exten = st_Exten.ToLower();
            switch (st_Exten)
            {
                case ".jpg":
                    return true;
                case ".jpeg":
                    return true;
                case ".png":
                    return true;
                case ".gif":
                    return true;
                default:
                return false;
            }
        }
    }
}