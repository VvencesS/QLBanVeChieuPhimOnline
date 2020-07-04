using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu
{
    public class Rap
    {
        #region Phương thức xóa Rạp
        /// <summary>
        /// Phương thức xóa Rạp
        /// </summary>
        /// <param name="maRap"></param>
        public static void Rap_Delete(int maRap)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_Rap] WHERE MaRap=@maRap");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maRap", maRap);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Rạp
        /// <summary>
        /// Phương thức thêm mới Rạp
        /// </summary>
        /// <param name="anhDaiDien"></param>
        /// <param name="tenRap"></param>
        /// <param name="gioiThieu"></param>
        /// <param name="diaChi"></param>
        /// <param name="sdtRieng"></param>
        /// <param name="maXaPhuong"></param>
        public static void Rap_Inser(string anhDaiDien, string tenRap, string gioiThieu, string diaChi, string sdtRieng, int maXaPhuong)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_Rap] (AnhDaiDien,[TenRap],[GioiThieu],DiaChi,[SDTRieng],[MaXaPhuong]) VALUES(@tenRap,@gioiThieu,@sdtRieng,@maXaPhuong)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@anhDaiDien", anhDaiDien);
            cmd.Parameters.AddWithValue("@tenRap", tenRap);
            cmd.Parameters.AddWithValue("@gioiThieu", gioiThieu);
            cmd.Parameters.AddWithValue("@diaChi", diaChi);
            cmd.Parameters.AddWithValue("@sdtRieng", sdtRieng);
            cmd.Parameters.AddWithValue("@maXaPhuong", maXaPhuong);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin Rạp
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Rạp
        /// </summary>
        /// <param name="maRap"></param>
        /// <param name="tenRap"></param>
        /// <param name="soHangMax"></param>
        /// <param name="soCotMax"></param>
        /// <param name="maDinhDang"></param>
        /// <param name="maRap"></param>
        public static void Rap_Update(int maRap, string anhDaiDien, string tenRap, string gioiThieu, string diaChi, string sdtRieng, int maXaPhuong)
        {
            SqlCommand cmd = new SqlCommand("UPDATE[dbo].[tb_Rap] "+
               "SET AnhDaiDien=@anhDaiDien " +
               ",[TenRap] = @tenRap "+
               "  ,[GioiThieu] = @gioiThieu" +
               ",DiaChi=@diaChi"+
               "   ,[SDTRieng] = @sdtRieng "+
               "  ,[MaXaPhuong] = @maXaPhuong "+
               "WHERE MaRap = @maRap");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@anhDaiDien", anhDaiDien);
            cmd.Parameters.AddWithValue("@tenRap", tenRap);
            cmd.Parameters.AddWithValue("@gioiThieu", gioiThieu);
            cmd.Parameters.AddWithValue("@diaChi", diaChi);
            cmd.Parameters.AddWithValue("@sdtRieng", sdtRieng);
            cmd.Parameters.AddWithValue("@maXaPhuong", maXaPhuong);
            cmd.Parameters.AddWithValue("@maRap", maRap);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách tất cả Rạp
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Rạp
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_Rap()
        {
            SqlCommand cmd = new SqlCommand("SELECT [MaRap],AnhDaiDien,[TenRap],[GioiThieu],DiaChi,[SDTRieng],tb_XaPhuong.TenXaPhuong,tb_QuanHuyen.TenQuanHuyen,tb_TinhThanhPho.TenTinhThanhPho "+
              "FROM[dbo].[tb_Rap] "+
              "INNER JOIN tb_XaPhuong ON tb_XaPhuong.MaXaPhuong = tb_Rap.MaXaPhuong "+
              "INNER JOIN tb_QuanHuyen ON tb_QuanHuyen.MaQuanHuyen = tb_XaPhuong.MaQuanHuyen "+
              "INNER JOIN tb_TinhThanhPho ON tb_TinhThanhPho.MaTinhThanhPho = tb_QuanHuyen.MaTinhThanhPho");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin Rạp theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin Rạp theo mã
        /// </summary>
        /// <param name="maRap"></param>
        /// <returns></returns>
        public static DataTable Thongtin_Rap_by_Ma(int maRap)
        {
            SqlCommand cmd = new SqlCommand("SELECT [MaRap],AnhDaiDien,[TenRap],[GioiThieu],DiaChi,[SDTRieng],tb_XaPhuong.TenXaPhuong,tb_QuanHuyen.TenQuanHuyen,tb_TinhThanhPho.TenTinhThanhPho, " +
                "tb_XaPhuong.MaXaPhuong,tb_QuanHuyen.MaQuanHuyen,tb_TinhThanhPho.MaTinhThanhPho " +
              "FROM[dbo].[tb_Rap] " +
              "INNER JOIN tb_XaPhuong ON tb_XaPhuong.MaXaPhuong = tb_Rap.MaXaPhuong " +
              "INNER JOIN tb_QuanHuyen ON tb_QuanHuyen.MaQuanHuyen = tb_XaPhuong.MaQuanHuyen " +
              "INNER JOIN tb_TinhThanhPho ON tb_TinhThanhPho.MaTinhThanhPho = tb_QuanHuyen.MaTinhThanhPho WHERE MaRap=@maRap");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maRap", maRap);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả Rạp theo tỉnh thành phố
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Rạp theo tỉnh thành phố
        /// </summary>
        /// <param name="tenTinhThanhPho"></param>
        /// <returns></returns>
        public static DataTable Thongtin_Rap_TenTTP(string tenTinhThanhPho)
        {
            SqlCommand cmd = new SqlCommand("SELECT [MaRap],AnhDaiDien,[TenRap],[GioiThieu],DiaChi,[SDTRieng],tb_XaPhuong.TenXaPhuong,tb_QuanHuyen.TenQuanHuyen,tb_TinhThanhPho.TenTinhThanhPho " +
              "FROM[dbo].[tb_Rap] " +
              "INNER JOIN tb_XaPhuong ON tb_XaPhuong.MaXaPhuong = tb_Rap.MaXaPhuong " +
              "INNER JOIN tb_QuanHuyen ON tb_QuanHuyen.MaQuanHuyen = tb_XaPhuong.MaQuanHuyen " +
              "INNER JOIN tb_TinhThanhPho ON tb_TinhThanhPho.MaTinhThanhPho = tb_QuanHuyen.MaTinhThanhPho " +
              "WHERE tb_TinhThanhPho.TenTinhThanhPho=@tenTinhThanhPho");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenTinhThanhPho", tenTinhThanhPho);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}