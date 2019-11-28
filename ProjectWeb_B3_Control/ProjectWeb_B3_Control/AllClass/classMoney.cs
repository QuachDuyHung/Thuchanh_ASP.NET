using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectWeb_B3_Control.AllClass
{
    public class classMoney
    {
        public int cal_money(int num)
        {
            int sum_money;
            int t1 = 50 * 1388;
            int t2 = 50 * 1433;
            int t3 = 100 * 1660;
            int t4 = 100 * 2082;
            int t5 = 100 * 2324;
            if(num<=50)
            {
                sum_money = num * 1388;
            }
            else if(num > 50 && num < 100)
            {
                sum_money = t1 + (num - 50) * 1433;
            }
            else if (num > 100 && num <= 200)
            {
                sum_money = t1 + t2 + (num - 100) * 1660;
            }
            else if (num > 200 && num <= 300)
            {
                sum_money = t1 + t2 + t3 + (num - 200) * 2082;
            }
            else if (num > 300 && num <= 400)
            {
                sum_money = t1 + t2 + t3 + t4 + (num - 300) * 2324;
            }
            else
            {
                sum_money = t1 + t2 + t3 + t4 + t5 + (num - 400) * 2399;
            }
            return sum_money;
        }
    }
}