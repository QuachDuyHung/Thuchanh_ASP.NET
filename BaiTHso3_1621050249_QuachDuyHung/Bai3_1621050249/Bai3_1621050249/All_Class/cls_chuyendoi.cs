using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bai3_1621050249.All_Class
{
    public class cls_chuyendoi
    {
        public string nhi_phan(string n)
        {
            int m = int.Parse(n);
            string str = "", str2 = "";
            //string str3 = " ";
            int str1;
            while (m >= 1)
            {
                int result = m % 2;
                m /= 2;
                str = Convert.ToString(result) + str;                               
            }
            str1 = str.Length;
            str2 += str + " (" + str1 + " bit)";
            //string str4 = str2.Insert(4, str3);
            //return str4;
            return str2;
        }

        public int bat_phan(int n)
        {
            int i, j, kq = 0;
            i = 1;
            for (j = n; j > 0; j = j / 8)
            {
                kq = kq + (j % 8) * i;
                i = i * 10;
                n = n / 8;
            }
            return kq;
        }

        public string thap_luc_phan(string n)
        {
            int m, a = 0;
            m = int.Parse(n);
            string str = "";
            while (m > 0)
            {
                a = m % 16;
                m /= 16;
                if (a == 10) str = "A" + str;
                if (a == 11) str = "B" + str;
                if (a == 12) str = "C" + str;
                if (a == 13) str = "D" + str;
                if (a == 14) str = "E" + str;
                if (a == 15) str = "F" + str;
                if (a >= 0 && a < 10) str = a + str;                
            }
            return str;
        }
    }
}