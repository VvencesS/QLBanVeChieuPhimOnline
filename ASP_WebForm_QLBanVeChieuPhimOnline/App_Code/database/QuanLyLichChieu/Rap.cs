﻿using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QuanLyLichChieu
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
        /// <param name="tenRap"></param>
        /// <param name="gioiThieu"></param>
        /// <param name="sdtRieng"></param>
        /// <param name="maXaPhuong"></param>
        public static void Rap_Inser(string tenRap, int gioiThieu, int sdtRieng, int maXaPhuong)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_Rap] ([TenRap],[GioiThieu],[SDTRieng],[MaXaPhuong]) VALUES(@tenRap,@gioThieu,@sdtRieng,@maXaPhuong)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenRap", tenRap);
            cmd.Parameters.AddWithValue("@gioiThieu", gioiThieu);
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
        public static void Rap_Update(int maRap, string tenRap, int gioiThieu, int sdtRieng, int maXaPhuong)
        {
            SqlCommand cmd = new SqlCommand("UPDATE[dbo].[tb_Rap] "+
               "SET[TenRap] = @tenRap "+
               "  ,[GioiThieu] = @gioiThieu"+
               "   ,[SDTRieng] = @sdtRieng "+
               "  ,[MaXaPhuong] = @maXaPhuong "+
               "WHERE MaRap = @maRap");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenRap", tenRap);
            cmd.Parameters.AddWithValue("@gioiThieu", gioiThieu);
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
            SqlCommand cmd = new SqlCommand("SELECT [MaRap],[TenRap],[GioiThieu],[SDTRieng],tb_XaPhuong.TenXaPhuong,tb_QuanHuyen.TenQuanHuyen,tb_TinhThanhPho.TenTinhThanhPho "+
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
            SqlCommand cmd = new SqlCommand("SELECT [MaRap],[TenRap],[GioiThieu],[SDTRieng],tb_XaPhuong.TenXaPhuong,tb_QuanHuyen.TenQuanHuyen,tb_TinhThanhPho.TenTinhThanhPho " +
              "FROM[dbo].[tb_Rap] " +
              "INNER JOIN tb_XaPhuong ON tb_XaPhuong.MaXaPhuong = tb_Rap.MaXaPhuong " +
              "INNER JOIN tb_QuanHuyen ON tb_QuanHuyen.MaQuanHuyen = tb_XaPhuong.MaQuanHuyen " +
              "INNER JOIN tb_TinhThanhPho ON tb_TinhThanhPho.MaTinhThanhPho = tb_QuanHuyen.MaTinhThanhPho WHERE MaRap=@maRap");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maRap", maRap);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}