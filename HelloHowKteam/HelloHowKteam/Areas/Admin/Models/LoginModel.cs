using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace HelloHowKteam.Areas.Admin.Models
{
    public class LoginModel
    {
        [Required]

        public string name { set; get; }

        public string password { set; get; }

        public string RememberMe { set; get; }
    }
}