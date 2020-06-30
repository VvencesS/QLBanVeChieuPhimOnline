using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTaiKhoan
{
    public class NhanVien
    {
        #region Phương thức lấy ra danh sách tất cả Nhân viên
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Nhân viên
        /// </summary>
        /// <returns></returns>
        public static DataTable ThongTinNhanvien()
        {
            SqlCommand cmd = new SqlCommand("select tb_NhanVien.MaNhanVien, tb_NhanVien.HoTen, tb_NhanVien.Email, tb_NhanVien.SoThe," +
                "tb_NhanVien.GioiTinh, tb_NhanVien.Sdt, tb_NhanVien.NgaySinh, tb_NhanVien.UserName, tb_NhanVien.PassWord, " +
                "tb_XaPhuong.TenXaPhuong, tb_XaPhuong.MaXaPhuong,tb_QuanHuyen.TenQuanHuyen, tb_QuanHuyen.MaQuanHuyen,tb_TinhThanhPho.TenTinhThanhPho,tb_TinhThanhPho.MaTinhThanhPho, tb_Rap.TenRap from tb_NhanVien " +
                "inner join tb_XaPhuong on tb_NhanVien.MaXaPhuong = tb_XaPhuong.MaXaPhuong " +
                "inner join tb_QuanHuyen on tb_QuanHuyen.MaQuanHuyen = tb_XaPhuong.MaQuanHuyen " +
                "inner join tb_TinhThanhPho on tb_TinhThanhPho.MaTinhThanhPho = tb_QuanHuyen.MaTinhThanhPho " +
                "inner join tb_Rap on tb_Rap.MaRap=tb_NhanVien.MaRap");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả Nhân viên
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Nhân viên
        /// </summary>
        /// <returns></returns>
        public static DataTable ThongTinTatCaNhanVien()
        {
            SqlCommand cmd = new SqlCommand("select * from tb_NhanVien");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức lấy ra Nhân viên theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Nhân viên
        /// </summary>
        /// <returns></returns>
        public static DataTable LayNhanvienTheoMa(int maNhanVien)
        {
            SqlCommand cmd = new SqlCommand("select tb_NhanVien.MaNhanVien, tb_NhanVien.HoTen, tb_NhanVien.Email, tb_NhanVien.SoThe," +
                "tb_NhanVien.GioiTinh, tb_NhanVien.Sdt, tb_NhanVien.NgaySinh, tb_NhanVien.UserName, tb_NhanVien.PassWord, " +
                "tb_XaPhuong.TenXaPhuong, tb_QuanHuyen.TenQuanHuyen, tb_TinhThanhPho.TenTinhThanhPho,tb_XaPhuong.MaXaPhuong, tb_QuanHuyen.MaQuanHuyen, tb_TinhThanhPho.MaTinhThanhPho, tb_Rap.MaRap, tb_Rap.TenRap from tb_NhanVien " +
                "inner join tb_XaPhuong on tb_NhanVien.MaXaPhuong = tb_XaPhuong.MaXaPhuong " +
                "inner join tb_QuanHuyen on tb_QuanHuyen.MaQuanHuyen = tb_XaPhuong.MaQuanHuyen " +
                "inner join tb_TinhThanhPho on tb_TinhThanhPho.MaTinhThanhPho = tb_QuanHuyen.MaTinhThanhPho " +
                "inner join tb_Rap on tb_Rap.MaRap = tb_NhanVien.MaRap where MaNhanVien=@maNhaVien");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maNhaVien", maNhanVien);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức xóa nhân viên theo mã nhân viên truyền vào
        /// <summary>
        /// Phương thức xóa nhân viên theo mã nhân viên truyền vào
        /// </summary>
        /// <param name="maNhanVien"></param>
        public static void Nhanvien_Delete(int maNhanVien)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_NhanVien] WHERE MaNhanVien=@maNhanVien");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maNhanVien", maNhanVien);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Nhanvien vào bảng Nhanvien
        /// <summary>
        /// Phương thức thêm mới Nhanvien vào bảng Nhanvien
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="hoTen"></param>
        /// <param name="email"></param>
        /// <param name="sdt"></param>
        /// <param name="soThe"></param>
        /// <param name="gioiTinh"></param>
        /// <param name="ngaySinh"></param>
        /// <param name="passWord"></param>
        /// <param name="MaXaPhuong"></param>
        /// <param name="maRap"></param>
        public static void Nhanvien_Inser(string userName, string hoTen, string email, string sdt, string soThe, bool gioiTinh, DateTime ngaySinh, string passWord, int MaXaPhuong, int maRap)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_NhanVien] ([UserName],[HoTen],[Email],[Sdt],[SoThe],[NgaySinh],[GioiTinh],[PassWord],[MaXaPhuong],MaRap) " +
                "VALUES(@userName,@hoTen,@email,@sdt,@soThe,@ngaySinh,@gioiTinh,@passWord,@MaXaPhuong,@maRap)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@userName", userName);
            cmd.Parameters.AddWithValue("@hoTen", hoTen);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@sdt", sdt);
            cmd.Parameters.AddWithValue("@soThe", soThe);
            cmd.Parameters.AddWithValue("@ngaySinh", ngaySinh);
            cmd.Parameters.AddWithValue("@gioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("@passWord", passWord);
            cmd.Parameters.AddWithValue("@MaXaPhuong", MaXaPhuong);
            cmd.Parameters.AddWithValue("@maRap", maRap);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin một Nhanvien
        /// <summary>
        /// Phương thức chỉnh sửa thông tin một Nhanvien
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="hoTen"></param>
        /// <param name="email"></param>
        /// <param name="sdt"></param>
        /// <param name="soThe"></param>
        /// <param name="gioiTinh"></param>
        /// <param name="ngaySinh"></param>
        /// <param name="passWord"></param>
        /// <param name="MaXaPhuong"></param>
        /// <param name=""></param>
        /// <param name="maRap"></param>
        /// <param name="maNhanVien"></param>
        public static void Nhanvien_Update(string userName, string hoTen, string email, string sdt, string soThe, bool gioiTinh, DateTime ngaySinh, string passWord, int MaXaPhuong, int maRap, int maNhanVien)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_NhanVien] SET[UserName] = @userName,[HoTen] = @hoTen,[Email] = @email,[Sdt] = @sdt,[SoThe] = @soThe," +
                "[NgaySinh] = @ngaySinh,[GioiTinh] = @gioiTinh,[PassWord] = @passWord,[MaXaPhuong] = @MaXaPhuong, MaRap=@maRap WHERE MaNhanVien=@maNhanVien");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@userName", userName);
            cmd.Parameters.AddWithValue("@hoTen", hoTen);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@sdt", sdt);
            cmd.Parameters.AddWithValue("@soThe", soThe);
            cmd.Parameters.AddWithValue("@ngaySinh", ngaySinh);
            cmd.Parameters.AddWithValue("@gioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("@passWord", passWord);
            cmd.Parameters.AddWithValue("@MaXaPhuong", MaXaPhuong);
            cmd.Parameters.AddWithValue("@maRap", maRap);
            cmd.Parameters.AddWithValue("@maNhanVien", maNhanVien);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Login
        /// <summary>
        /// Phương thức login
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="passWord"></param>
        /// <returns></returns>
        public static DataTable Login(string userName, string passWord)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_NhanVien WHERE UserName=@userName and PassWord=@passWord");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@userName", userName);
            cmd.Parameters.AddWithValue("@passWord", passWord);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Tìm kiếm
        /// <summary>
        /// Phương thức tìm kiếm theo họ tên hoặc username
        /// </summary>
        /// <param name="search"></param>
        /// <returns></returns>
        public static DataTable Search(string search)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_NhanVien WHERE UserName LIKE N'%'+ @search + '%' OR HoTen LIKE N'%'+@search+'%'");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@search", search);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}