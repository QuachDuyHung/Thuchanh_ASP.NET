using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.Framework;
using System.Data.SqlClient;
using System.Data.Sql;

namespace Model
{
    public class AccountModel
    {
        private Store context = null;

        public AccountModel()
        {
            context = new AccountModel();
        }
        public bool Login(string name, string password)
        {
            object[] sqlParams =
            {
                new SqlParameter("@name", name),
                new SqlParameter("@password", password)
            };
            var res = context.Database.SqlQuery<bool>("sp_account_login @name,@password", sqlParams).SingleOrDefault();
            return res;
        }
    }
}
