using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe
{
    public class DatGhe
    {
        #region Phương thức thêm mới đặt ghế
        /// <summary>
        /// Phương thức thêm mới đặt ghế
        /// </summary>
        /// <param name="soGhe"></param>
        /// <param name="maVe"></param>
        public static void DatGhe_Insert(string soGhe, int maVe)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_DatGhe] ([SoGhe],[MaVe]) VALUES(@soGhe,@maVe)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@soGhe", soGhe);
            cmd.Parameters.AddWithValue("@maVe", maVe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức xóa Đặt ghế
        /// <summary>
        /// Phương thức xóa Đặt ghế
        /// </summary>
        /// <param name="maVe"></param>
        public static void DatGhe_Delete(int maVe)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_DatGhe] WHERE maVe=@maVe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maVe", maVe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
    }
}