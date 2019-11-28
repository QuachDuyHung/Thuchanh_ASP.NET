using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bai3_1621050249.All_Class
{
    public class Csharp2
    {
        //dem các chữ số thỏa mãn
        public string dem_1(string n)
        {
            int m, dem = 0;
            m = int.Parse(n);            
            for (int i = 0; i <= 9; i++)
            {
                for (int j = 0; j <= 9; j++)
                {
                    for (int h = 0; h <= 9; h++)
                    {
                        for (int k = 0; k <= 9; k++)
                        {
                            if ((i + j + h + k) % 10 == m)
                            {
                                dem++;
                            }
                        }
                    }
                }
            }
            string str = Convert.ToString(dem);
            return str;
        }

        //in ra các số thỏa mãn 
        public string so_tu_nhien(string n)
        {
            int m, dem = 0;
            m = int.Parse(n);
            string result = "";
            for (int i = 0; i <= 9; i++)
            {
                for (int j = 0; j <= 9; j++)
                {
                    for (int h = 0; h <= 9; h++)
                    {
                        for (int k = 0; k <= 9; k++)
                        {
                            if ((i + j + h + k) % 10 == m)
                            {
                                dem++;
                                result += i + "" + j + "" + h + "" + k + ", ";
                            }
                        }
                    }
                }
            }
            return result;
        }
    }
}