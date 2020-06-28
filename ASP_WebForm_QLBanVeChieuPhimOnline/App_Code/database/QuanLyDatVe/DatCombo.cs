using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QuanLyDatVe
{
    public class DatCombo
    {
        #region Phương thức thêm mới Đặt Combo
        /// <summary>
        /// Phương thức thêm mới Đặt Combo
        /// </summary>
        /// <param name="maVe"></param>
        /// <param name="maCombo"></param>
        public static void DatCombo_Insert(int maVe, int maCombo)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_DatCombo] ([MaVe],[MaCombo]) VALUES(@maVe,@maCombo)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maVe", maVe);
            cmd.Parameters.AddWithValue("@maCombo", maCombo);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức xóa Đặt Combo theo mã vé
        /// <summary>
        /// Phương thức xóa Đặt Combo theo mã vé
        /// </summary>
        /// <param name="maVe"></param>
        public static void DatCombo_Delete(int maVe)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_DatCombo] WHERE MaVe=@maVe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maVe", maVe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
    }
}