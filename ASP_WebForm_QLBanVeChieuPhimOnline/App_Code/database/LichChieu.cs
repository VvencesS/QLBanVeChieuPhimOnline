using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database
{
    public class LichChieu
    {
        #region Phương thức thêm mới lịch chiếu
        /// <summary>
        /// Phương thức thêm mới lịch chiếu
        /// </summary>
        /// <param name="maPhong"></param>
        /// <param name="maLoaiGhe"></param>
        /// <param name="soGhe"></param>
        /// <param name="maTrangThai"></param>
        public static void DatCombo_Inser(int maKTG, int maPhim, int maPhong)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_LichChieu] ([MaKTG],[MaPhim],[MaPhong]) VALUES(@maKTG,@maPhim,@maPhong)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maKTG", maKTG);
            cmd.Parameters.AddWithValue("@maPhim", maPhim);
            cmd.Parameters.AddWithValue("@maPhong", maPhong);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
    }
}