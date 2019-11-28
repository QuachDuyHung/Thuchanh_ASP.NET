using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CKFinder;

namespace Bai3_1621050249
{
    public partial class Web_ckeditor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FileBrowser fileBrowser = new FileBrowser();
            fileBrowser.BasePath = "/ckfinder";
        }
    }
}