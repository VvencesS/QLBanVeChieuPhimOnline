using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database
{
    public class DSVeDat
    {
        #region Phương thức thêm mới DS vé đặt
        /// <summary>
        /// Phương thức thêm mới DS vé đặt
        /// </summary>
        /// <param name="maVe"></param>
        /// <param name="maCombo"></param>
        public static void DatCombo_Inser(int maVe, int maThanhVien)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_DSVeDat] ([MaVe],[MaThanhVien]) VALUES(@maVe,@maThanhVien)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maVe", maVe);
            cmd.Parameters.AddWithValue("@maCombo", maThanhVien);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
    }
}