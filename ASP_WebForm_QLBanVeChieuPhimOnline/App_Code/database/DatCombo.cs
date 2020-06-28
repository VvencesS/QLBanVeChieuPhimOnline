using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database
{
    public class DatCombo
    {
        #region Phương thức thêm mới Đặt Combo
        /// <summary>
        /// Phương thức thêm mới Đặt Combo
        /// </summary>
        /// <param name="maVe"></param>
        /// <param name="maCombo"></param>
        public static void DatCombo_Inser(int maVe, int maCombo)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_DatCombo] ([MaVe],[MaCombo]) VALUES(@maVe,@maCombo)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maVe", maVe);
            cmd.Parameters.AddWithValue("@maCombo", maCombo);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        
    }
}