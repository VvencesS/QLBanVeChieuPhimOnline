using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu
{
    public class TinhThanhPho
    {
        #region Phương thức lấy ra danh sách tất cả tỉnh/thành phố
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả tỉnh/thành phố
        /// </summary>
        /// <returns></returns>
        public static DataTable ThongTinTatCaTinhThanhPho()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_TinhThanhPho");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra thông tin tỉnh/thành phố theo mã tỉnh/thành phố
        /// <summary>
        /// Phương thức lấy ra thông tin tỉnh/thành phố theo mã tỉnh/thành phố
        /// </summary>
        /// <param name="maTinhThanhPho"></param>
        /// <returns></returns>
        public static DataTable ThongTinTinhThanhPhoTheoMa(int maTinhThanhPho)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_TinhThanhPho WHERE [IDTinhThanhPho]=@maTinhThanhPho");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maTinhThanhPho", maTinhThanhPho);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}