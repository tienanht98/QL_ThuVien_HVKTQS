﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QL_ThuVien.DTO
{
    public static class ConnectDatabase
    {
        public static string SeverName = "";
        public static string DatabaseName = "";
        public static string UserName = "";
        public static string PassWord;
        public static bool WindowAuthentication = true;

        public static string ConnectionString="";

        public static void TaoChuoiKetNoi()
        {
            string temp = "";
            temp = "Data Source=" + SeverName + ";Initial Catalog=" + DatabaseName + "";

            if (WindowAuthentication == true)
            {
                temp = temp + ";Integrated Security=true";
            }
            else
            {
                temp = temp + ";Integrated Security = false; User ID= " + UserName + ";" + "Password =" + PassWord;
            }
            ConnectionString = temp;
        }

    }
}
