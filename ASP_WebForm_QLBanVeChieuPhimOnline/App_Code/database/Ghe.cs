using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database
{
    public class Ghe
    {
        #region Phương thức thêm mới ghế
        /// <summary>
        /// Phương thức thêm mới ghế
        /// </summary>
        /// <param name="maPhong"></param>
        /// <param name="maLoaiGhe"></param>
        /// <param name="soGhe"></param>
        /// <param name="maTrangThai"></param>
        public static void DatCombo_Inser(int maPhong, int maLoaiGhe, int soGhe, int maTrangThai)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_Ghe] ([MaPhong],[MaLoaiGhe],[SoGhe],[MaTrangThai]) VALUES(@maPhong,@maLoaiGhe,@soGhe,@maTrangThai)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maPhong", maPhong);
            cmd.Parameters.AddWithValue("@maLoaiGhe", maLoaiGhe);
            cmd.Parameters.AddWithValue("@soGhe", soGhe);
            cmd.Parameters.AddWithValue("@maTrangThai", maTrangThai);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
    }
}