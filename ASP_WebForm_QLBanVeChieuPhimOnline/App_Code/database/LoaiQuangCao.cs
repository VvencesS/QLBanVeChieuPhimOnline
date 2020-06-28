using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database
{
    public class LoaiQuangCao
    {
        #region Phương thức lấy ra danh sách tất cả loại quảng cáo
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả loại quảng cáo
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_LoaiQuangCao()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_LoaiQuangCao]");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin loại quảng cáo theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin loại quảng cáo theo mã
        /// </summary>
        /// <param name="maLoaiQuangCao"></param>
        /// <returns></returns>
        public static DataTable Thongtin_LoaiquangCao_by_MaLoaiQuangCao(int maLoaiQuangCao)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_LoaiQuangCao] WHERE MaLoaiQuangCao=@maLoaiQuangCao");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLoaiQuangCao", maLoaiQuangCao);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}