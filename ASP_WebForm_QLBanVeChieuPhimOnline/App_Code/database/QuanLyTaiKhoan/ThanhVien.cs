using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTaiKhoan
{
    public class ThanhVien
    {
        #region Phương thức lấy ra danh sách tất cả Thành viên
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Thành viên
        /// </summary>
        /// <returns></returns>
        public static DataTable ThongTinThanhVien()
        {
            SqlCommand cmd = new SqlCommand("SELECT tb_ThanhVien.[MaThanhVien],tb_ThanhVien.[HoTen],tb_ThanhVien.[Email],tb_ThanhVien.[PassWord],tb_ThanhVien.[Sdt]," +
                "tb_ThanhVien.[SoThe],tb_ThanhVien.[NgaySinh],tb_ThanhVien.[GioiTinh],tb_ThanhVien.[TrangThai],tb_ThanhVien.AnhDaiDien, " +
                "tb_XaPhuong.TenXaPhuong, tb_QuanHuyen.TenQuanHuyen, tb_TinhThanhPho.TenTinhThanhPho,tb_XaPhuong.MaXaPhuong, tb_QuanHuyen.MaQuanHuyen, tb_TinhThanhPho.MaTinhThanhPho from [tb_ThanhVien] " +
                "inner join tb_XaPhuong on tb_ThanhVien.MaXaPhuong = tb_XaPhuong.MaXaPhuong " +
                "inner join tb_QuanHuyen on tb_QuanHuyen.MaQuanHuyen = tb_XaPhuong.MaQuanHuyen " +
                "inner join tb_TinhThanhPho on tb_TinhThanhPho.MaTinhThanhPho = tb_QuanHuyen.MaTinhThanhPho");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức lấy ra Thành viên theo mã
        /// <summary>
        /// Phương thức lấy ra Thành viên theo mã
        /// </summary>
        /// <returns></returns>
        public static DataTable ThongTinThanhVienByMa(int maThanhVien)
        {
            SqlCommand cmd = new SqlCommand("SELECT tb_ThanhVien.[MaThanhVien],tb_ThanhVien.AnhDaiDien,tb_ThanhVien.[HoTen],tb_ThanhVien.[Email],tb_ThanhVien.[PassWord],tb_ThanhVien.[Sdt]," +
                "tb_ThanhVien.[SoThe],tb_ThanhVien.[NgaySinh],tb_ThanhVien.[GioiTinh],tb_ThanhVien.[TrangThai]," +
                "tb_XaPhuong.TenXaPhuong, tb_QuanHuyen.TenQuanHuyen, tb_TinhThanhPho.TenTinhThanhPho,tb_XaPhuong.MaXaPhuong, tb_QuanHuyen.MaQuanHuyen, tb_TinhThanhPho.MaTinhThanhPho from [tb_ThanhVien] " +
                "inner join tb_XaPhuong on tb_ThanhVien.MaXaPhuong = tb_XaPhuong.MaXaPhuong " +
                "inner join tb_QuanHuyen on tb_QuanHuyen.MaQuanHuyen = tb_XaPhuong.MaQuanHuyen " +
                "inner join tb_TinhThanhPho on tb_TinhThanhPho.MaTinhThanhPho = tb_QuanHuyen.MaTinhThanhPho where MaThanhVien=@maThanhVien");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maThanhVien", maThanhVien);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả Thành viên
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Thành viên
        /// </summary>
        /// <returns></returns>
        public static DataTable ThongTinTatCaThanhVien()
        {
            SqlCommand cmd = new SqlCommand("SELECT * from [tb_ThanhVien]");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức xóa thành viên theo mã thành viên truyền vào
        /// <summary>
        /// Phương thức xóa thành viên theo mã thành viên truyền vào
        /// </summary>
        /// <param name="maThanhVien"></param>
        public static void ThanhVien_Delete(int maThanhVien)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_ThanhVien] WHERE MaThanhVien=@maThanhVien");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maThanhVien", maThanhVien);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Nhanvien vào bảng Nhanvien
        /// <summary>
        /// Phương thức thêm mới Nhanvien vào bảng Nhanvien
        /// </summary>
        /// <param name="anhDaiDien"></param>
        /// <param name="hoTen"></param>
        /// <param name="email"></param>
        /// <param name="sdt"></param>
        /// <param name="soThe"></param>
        /// <param name="gioiTinh"></param>
        /// <param name="ngaySinh"></param>
        /// <param name="passWord"></param>
        /// <param name="MaXaPhuong"></param>
        /// <param name="trangThai"></param>
        public static void ThanhVien_Inser(string anhDaiDien, string hoTen, string email, string sdt, string soThe, bool gioiTinh, DateTime ngaySinh, string passWord, int MaXaPhuong, bool trangThai)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_ThanhVien] (AnhDaiDien, [HoTen] ,[Email] ,[PassWord] ,[Sdt] ,[SoThe] ,[NgaySinh] ,[GioiTinh] ,[TrangThai] ,[MaXaPhuong]) " +
                "VALUES(@anhDaiDien,@hoTen,@email,@passWord,@sdt,@soThe,@ngaySinh,@gioiTinh,@trangThai,@MaXaPhuong)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@trangThai", trangThai);
            cmd.Parameters.AddWithValue("@hoTen", hoTen);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@sdt", sdt);
            cmd.Parameters.AddWithValue("@soThe", soThe);
            cmd.Parameters.AddWithValue("@ngaySinh", ngaySinh);
            cmd.Parameters.AddWithValue("@gioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("@passWord", passWord);
            cmd.Parameters.AddWithValue("@MaXaPhuong", MaXaPhuong);
            cmd.Parameters.AddWithValue("@anhDaiDien", anhDaiDien);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin một Nhanvien
        /// <summary>
        /// Phương thức chỉnh sửa Thành viên
        /// </summary>
        /// <param name="hoTen"></param>
        /// <param name="email"></param>
        /// <param name="sdt"></param>
        /// <param name="soThe"></param>
        /// <param name="gioiTinh"></param>
        /// <param name="ngaySinh"></param>
        /// <param name="userName"></param>
        /// <param name="passWord"></param>
        /// <param name="MaXaPhuong"></param>
        /// <param name=""></param>
        /// <param name="trangThai"></param>
        /// <param name="maThanhVien"></param>
        public static void ThanhVien_Update(string anhDaiDien, string hoTen, string email, string sdt, string soThe, bool gioiTinh, DateTime ngaySinh, string passWord, int MaXaPhuong, bool trangThai, int maThanhVien)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_ThanhVien] SET [AnhDaiDien] = @anhDaiDien,[HoTen] = @hoTen,[Email] = @email,[Sdt] = @sdt,[SoThe] = @soThe," +
                "[NgaySinh] = @ngaySinh,[GioiTinh] = @gioiTinh,[PassWord] = @passWord,[MaXaPhuong] = @MaXaPhuong WHERE MaThanhVien=@maThanhVien");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@trangThai", trangThai);
            cmd.Parameters.AddWithValue("@hoTen", hoTen);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@sdt", sdt);
            cmd.Parameters.AddWithValue("@soThe", soThe);
            cmd.Parameters.AddWithValue("@ngaySinh", ngaySinh);
            cmd.Parameters.AddWithValue("@gioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("@passWord", passWord);
            cmd.Parameters.AddWithValue("@MaXaPhuong", MaXaPhuong);
            cmd.Parameters.AddWithValue("@anhDaiDien", anhDaiDien);
            cmd.Parameters.AddWithValue("@maThanhVien", maThanhVien);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Tìm kiếm
        /// <summary>
        /// Phương thức tìm kiếm theo họ tên hoặc Email
        /// </summary>
        /// <param name="search"></param>
        /// <returns></returns>
        public static DataTable Search(string search)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_ThanhVien WHERE Email LIKE N'%'+ @search + '%' OR HoTen LIKE N'%'+@search+'%'");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@search", search);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Đăng nhập
        public static DataTable Login(string email, string passWord)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_ThanhVien WHERE Email=@email and PassWord=@passWord");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@passWord", passWord);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}