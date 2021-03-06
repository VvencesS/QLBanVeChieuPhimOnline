USE [master]
GO
/****** Object:  Database [QLBanVeChieuPhimOnline_ASP]    Script Date: 03/07/2020 9:21:25 CH ******/
CREATE DATABASE [QLBanVeChieuPhimOnline_ASP]
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanVeChieuPhimOnline_ASP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLBanVeChieuPhimOnline_ASP]
GO
/****** Object:  Table [dbo].[tb_BaoGia]    Script Date: 03/07/2020 9:21:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_BaoGia](
	[MaDinhDang] [int] NULL,
	[MaLoaiGhe] [int] NULL,
	[MaKTG] [int] NULL,
	[MaGia] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Combo]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Combo](
	[MaCombo] [int] IDENTITY(1,1) NOT NULL,
	[TenComBo] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[Gia] [float] NULL,
 CONSTRAINT [PK_tb_Combo_1] PRIMARY KEY CLUSTERED 
(
	[MaCombo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_DatCombo]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DatCombo](
	[MaVe] [int] NULL,
	[MaCombo] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_DatGhe]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_DatGhe](
	[SoGhe] [varchar](50) NULL,
	[MaVe] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_DinhDang]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DinhDang](
	[MaDinhDang] [int] IDENTITY(1,1) NOT NULL,
	[TenDinhDang] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_DinhDang] PRIMARY KEY CLUSTERED 
(
	[MaDinhDang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_DSVeDat]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DSVeDat](
	[MaVe] [int] NULL,
	[MaThanhVien] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Ghe]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Ghe](
	[MaGhe] [int] IDENTITY(1,1) NOT NULL,
	[MaPhong] [int] NULL,
	[MaLoaiGhe] [int] NULL,
	[SoGhe] [varchar](50) NULL,
	[MaTrangThai] [int] NULL,
 CONSTRAINT [PK_tb_Ghe] PRIMARY KEY CLUSTERED 
(
	[MaGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Gia]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Gia](
	[MaGia] [int] IDENTITY(1,1) NOT NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_tb_Gia] PRIMARY KEY CLUSTERED 
(
	[MaGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_GiaVeDat]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_GiaVeDat](
	[MaVe] [int] NULL,
	[MaGia] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_HangPhim]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HangPhim](
	[MaHangPhim] [int] IDENTITY(1,1) NOT NULL,
	[TenHangPhim] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_HangPhim] PRIMARY KEY CLUSTERED 
(
	[MaHangPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_KTG]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_KTG](
	[MaKTG] [int] IDENTITY(1,1) NOT NULL,
	[NgayChieu] [datetime] NULL,
	[GioChieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_KTG] PRIMARY KEY CLUSTERED 
(
	[MaKTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_LichChieu]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LichChieu](
	[MaLichChieu] [int] IDENTITY(1,1) NOT NULL,
	[MaKTG] [int] NULL,
	[MaPhim] [int] NULL,
	[MaPhong] [int] NULL,
 CONSTRAINT [PK_tb_LichChieu] PRIMARY KEY CLUSTERED 
(
	[MaLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_LoaiGhe]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LoaiGhe](
	[MaLoaiGhe] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiGhe] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_LoaiGhe] PRIMARY KEY CLUSTERED 
(
	[MaLoaiGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_LoaiQuangCao]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LoaiQuangCao](
	[MaLoaiQuangCao] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiQuangCao] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_LoaiQuangCao] PRIMARY KEY CLUSTERED 
(
	[MaLoaiQuangCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_LoaiTinTuc]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LoaiTinTuc](
	[MaLoaiTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTinTuc] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_LoaiTinTuc] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_NhanVien]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[HoTen] [nvarchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Sdt] [varchar](50) NULL,
	[SoThe] [nchar](20) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[PassWord] [varchar](100) NULL,
	[MaXaPhuong] [int] NULL,
	[MaRap] [int] NULL,
 CONSTRAINT [PK_tb_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Phim]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Phim](
	[MaPhim] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](max) NULL,
	[AnhDaiDien] [varchar](100) NULL,
	[MaTheLoai] [int] NULL,
	[MaQuocGia] [int] NULL,
	[ThoiLuong] [nvarchar](50) NULL,
	[KhoiChieu] [datetime] NULL,
	[KetThuc] [datetime] NULL,
	[DaoDien] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Trailer] [nvarchar](max) NULL,
	[MaDinhDang] [int] NULL,
	[MaNhanVien] [int] NULL,
	[MaHangPhim] [int] NULL,
 CONSTRAINT [PK_tb_Phim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Phong]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Phong](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](max) NULL,
	[SoHangMax] [int] NULL,
	[SoCotMax] [int] NULL,
	[MaDinhDang] [int] NULL,
	[MaRap] [int] NULL,
 CONSTRAINT [PK_tb_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_QuanHuyen]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_QuanHuyen](
	[MaQuanHuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuanHuyen] [nvarchar](max) NULL,
	[MaTinhThanhPho] [int] NULL,
 CONSTRAINT [PK_tb_QuanHuyen] PRIMARY KEY CLUSTERED 
(
	[MaQuanHuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_QuangCao]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_QuangCao](
	[MaQuangCao] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiQuangCao] [int] NULL,
	[AnhQC] [varchar](max) NULL,
	[NgayThem] [datetime] NULL,
 CONSTRAINT [PK_tb_QuangCao] PRIMARY KEY CLUSTERED 
(
	[MaQuangCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_QuocGia]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_QuocGia](
	[MaQuocGia] [int] IDENTITY(1,1) NOT NULL,
	[TenQuocGia] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_QuocGia] PRIMARY KEY CLUSTERED 
(
	[MaQuocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Rap]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Rap](
	[MaRap] [int] IDENTITY(1,1) NOT NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[TenRap] [nvarchar](max) NULL,
	[GioiThieu] [ntext] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDTRieng] [nvarchar](max) NULL,
	[MaXaPhuong] [int] NULL,
 CONSTRAINT [PK_tb_Rap] PRIMARY KEY CLUSTERED 
(
	[MaRap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_SoGhe]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_SoGhe](
	[SoGhe] [varchar](50) NOT NULL,
	[SoHang] [varchar](50) NULL,
	[SoCot] [varchar](50) NULL,
 CONSTRAINT [PK_tb_SoGhe] PRIMARY KEY CLUSTERED 
(
	[SoGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_TinTuc]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TinTuc](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[TieuDe] [nvarchar](max) NULL,
	[TomTatTin] [nvarchar](max) NULL,
	[NoiDung] [ntext] NULL,
	[MaLoaiTinTuc] [int] NULL,
	[NgayThem] [datetime] NULL,
 CONSTRAINT [PK_tb_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_TinhThanhPho]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TinhThanhPho](
	[MaTinhThanhPho] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhThanhPho] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_TinhThanhPho] PRIMARY KEY CLUSTERED 
(
	[MaTinhThanhPho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ThanhVien]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[AnhDaiDien] [varchar](max) NULL,
	[HoTen] [nvarchar](max) NULL,
	[Email] [varchar](max) NULL,
	[PassWord] [varchar](100) NULL,
	[Sdt] [varchar](50) NULL,
	[SoThe] [nchar](20) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[TrangThai] [bit] NULL,
	[MaXaPhuong] [int] NULL,
 CONSTRAINT [PK_tb_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_TheLoai]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TheLoai](
	[MaTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_TrangThai]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TrangThai](
	[MaTrangThai] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_TrangThai] PRIMARY KEY CLUSTERED 
(
	[MaTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Ve]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Ve](
	[MaVe] [int] NOT NULL,
	[MaPhim] [int] NULL,
	[MaPhong] [int] NULL,
	[MaKTG] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_tb_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_XaPhuong]    Script Date: 03/07/2020 9:21:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_XaPhuong](
	[MaXaPhuong] [int] IDENTITY(1,1) NOT NULL,
	[TenXaPhuong] [nvarchar](max) NULL,
	[MaQuanHuyen] [int] NULL,
 CONSTRAINT [PK_tb_XaPhuong] PRIMARY KEY CLUSTERED 
(
	[MaXaPhuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tb_Combo] ON 

INSERT [dbo].[tb_Combo] ([MaCombo], [TenComBo], [MoTa], [Gia]) VALUES (1, N'Beta Combo 69oz', N'TIẾT KIÊM 10K !! Gồm: 1 bắp 69oz + 1 nước có ga 700ml', 60000)
INSERT [dbo].[tb_Combo] ([MaCombo], [TenComBo], [MoTa], [Gia]) VALUES (2, N'Sweet Combo 69oz', N'TIẾT KIÊM 10K !! Gồm: 1 bắp 69oz + 2 nước có ga 700ml', 80000)
SET IDENTITY_INSERT [dbo].[tb_Combo] OFF
SET IDENTITY_INSERT [dbo].[tb_DinhDang] ON 

INSERT [dbo].[tb_DinhDang] ([MaDinhDang], [TenDinhDang]) VALUES (1, N'2D')
INSERT [dbo].[tb_DinhDang] ([MaDinhDang], [TenDinhDang]) VALUES (2, N'3D')
INSERT [dbo].[tb_DinhDang] ([MaDinhDang], [TenDinhDang]) VALUES (4, N'4D')
SET IDENTITY_INSERT [dbo].[tb_DinhDang] OFF
SET IDENTITY_INSERT [dbo].[tb_Ghe] ON 

INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (2, 1, 1, N'A1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (3, 1, 3, N'M2-M1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (4, 1, 3, N'M10-M9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (9, 1, 3, N'M4-M3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (10, 1, 3, N'M6-M5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (11, 1, 3, N'M8-M7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (12, 1, 1, N'A2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (13, 1, 1, N'A3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (14, 1, 1, N'A4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (15, 1, 1, N'A5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (16, 1, 1, N'A7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (17, 1, 1, N'A9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (18, 1, 1, N'A8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (19, 1, 1, N'A10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (20, 1, 1, N'A11', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (21, 1, 1, N'A12', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (22, 1, 1, N'B1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (23, 1, 1, N'B2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (24, 1, 1, N'B3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (25, 1, 1, N'B4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (26, 1, 1, N'B5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (27, 1, 1, N'B6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (28, 1, 1, N'B7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (29, 1, 1, N'B8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (30, 1, 1, N'B9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (31, 1, 1, N'B10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (32, 1, 1, N'B11', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (33, 1, 1, N'C1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (34, 1, 1, N'C2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (35, 1, 1, N'C3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (36, 1, 1, N'C4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (37, 1, 1, N'C5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (38, 1, 1, N'C6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (39, 1, 1, N'C7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (40, 1, 1, N'C8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (41, 1, 1, N'C9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (42, 1, 1, N'C10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (43, 1, 1, N'C11', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (44, 1, 1, N'C12', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (45, 1, 1, N'D1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (46, 1, 1, N'D2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (47, 1, 1, N'D3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (48, 1, 1, N'D4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (49, 1, 1, N'D5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (50, 1, 1, N'D6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (51, 1, 1, N'D7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (52, 1, 1, N'D8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (53, 1, 1, N'D9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (54, 1, 1, N'D10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (55, 1, 1, N'D11', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (56, 1, 2, N'E1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (57, 1, 2, N'E2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (58, 1, 2, N'E3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (59, 1, 2, N'E4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (60, 1, 2, N'E5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (61, 1, 2, N'E6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (62, 1, 2, N'E7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (63, 1, 2, N'E8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (64, 1, 2, N'E9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (67, 1, 2, N'E10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (68, 1, 2, N'F1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (69, 1, 2, N'F2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (70, 1, 2, N'F3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (71, 1, 2, N'F4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (72, 1, 2, N'F5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (73, 1, 2, N'F6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (74, 1, 2, N'F7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (75, 1, 2, N'F8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (76, 1, 2, N'F9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (77, 1, 2, N'F10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (78, 1, 2, N'F11', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (79, 1, 2, N'F12', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (80, 1, 2, N'G1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (81, 1, 2, N'G2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (82, 1, 2, N'G3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (83, 1, 2, N'G4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (84, 1, 2, N'G5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (85, 1, 2, N'G6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (86, 1, 2, N'G7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (87, 1, 2, N'G8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (88, 1, 2, N'G9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (89, 1, 2, N'G10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (90, 1, 2, N'G11', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (91, 1, 2, N'G12', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (92, 1, 2, N'H1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (93, 1, 2, N'H2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (94, 1, 2, N'H3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (95, 1, 2, N'H4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (96, 1, 2, N'H5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (97, 1, 2, N'H6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (98, 1, 2, N'H7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (100, 1, 2, N'H8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (101, 1, 2, N'H9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (102, 1, 2, N'H10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (103, 1, 2, N'H11', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (104, 1, 2, N'H12', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (105, 1, 2, N'I1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (106, 1, 2, N'I2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (107, 1, 2, N'I3', 1)
GO
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (108, 1, 2, N'I4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (109, 1, 2, N'I5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (110, 1, 2, N'I6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (111, 1, 2, N'I7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (112, 1, 2, N'I8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (113, 1, 2, N'I9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (114, 1, 2, N'I10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (115, 1, 2, N'I11', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (116, 1, 2, N'I12', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (117, 1, 2, N'J1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (118, 1, 2, N'J2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (119, 1, 2, N'J3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (121, 1, 2, N'J4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (122, 1, 2, N'J5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (123, 1, 2, N'J6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (124, 1, 2, N'J7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (125, 1, 2, N'J8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (126, 1, 2, N'J9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (127, 1, 2, N'J10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (128, 1, 2, N'J11', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (129, 1, 2, N'J12', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (130, 1, 2, N'K1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (131, 1, 2, N'K2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (132, 1, 2, N'K3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (133, 1, 2, N'K4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (134, 1, 2, N'K5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (135, 1, 2, N'K6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (136, 1, 2, N'K7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (137, 1, 2, N'K8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (138, 1, 2, N'K9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (139, 1, 2, N'K10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (140, 1, 2, N'K11', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (141, 1, 2, N'K12', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (142, 1, 2, N'L1', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (143, 1, 2, N'L2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (144, 1, 2, N'L3', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (145, 1, 2, N'L4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (146, 1, 2, N'L5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (147, 1, 2, N'L6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (148, 1, 2, N'L7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (149, 1, 2, N'L8', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (150, 1, 2, N'L9', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (151, 1, 2, N'L10', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (152, 1, 2, N'L11', 1)
SET IDENTITY_INSERT [dbo].[tb_Ghe] OFF
SET IDENTITY_INSERT [dbo].[tb_Gia] ON 

INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (2, 45000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (3, 55000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (4, 60000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (5, 75000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (6, 65000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (7, 80000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (8, 95000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (9, 100000)
SET IDENTITY_INSERT [dbo].[tb_Gia] OFF
SET IDENTITY_INSERT [dbo].[tb_HangPhim] ON 

INSERT [dbo].[tb_HangPhim] ([MaHangPhim], [TenHangPhim]) VALUES (1, N'Marvel Studios')
INSERT [dbo].[tb_HangPhim] ([MaHangPhim], [TenHangPhim]) VALUES (2, N'Warner Bros')
INSERT [dbo].[tb_HangPhim] ([MaHangPhim], [TenHangPhim]) VALUES (3, N'Universal Pictures')
INSERT [dbo].[tb_HangPhim] ([MaHangPhim], [TenHangPhim]) VALUES (4, N'Walt Disney Studios Motion Pictures')
INSERT [dbo].[tb_HangPhim] ([MaHangPhim], [TenHangPhim]) VALUES (5, N'20th Century Fox')
INSERT [dbo].[tb_HangPhim] ([MaHangPhim], [TenHangPhim]) VALUES (6, N'Paramount Pictures')
INSERT [dbo].[tb_HangPhim] ([MaHangPhim], [TenHangPhim]) VALUES (7, N'Sony Pictures Studios')
INSERT [dbo].[tb_HangPhim] ([MaHangPhim], [TenHangPhim]) VALUES (8, N'Pixar')
INSERT [dbo].[tb_HangPhim] ([MaHangPhim], [TenHangPhim]) VALUES (9, N'Dream Works')
INSERT [dbo].[tb_HangPhim] ([MaHangPhim], [TenHangPhim]) VALUES (10, N'Columbia Pictures')
INSERT [dbo].[tb_HangPhim] ([MaHangPhim], [TenHangPhim]) VALUES (12, N'Khác')
SET IDENTITY_INSERT [dbo].[tb_HangPhim] OFF
SET IDENTITY_INSERT [dbo].[tb_KTG] ON 

INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (1, CAST(N'2020-07-01 00:00:00.000' AS DateTime), N'15:15')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (2, CAST(N'2020-07-01 00:00:00.000' AS DateTime), N'16:00')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (3, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'09:30')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (4, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'11:00')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (5, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'12:20')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (6, CAST(N'2020-07-04 00:00:00.000' AS DateTime), N'04:55')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (7, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'13:40')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (8, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'14:30')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (9, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'15:50')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (10, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'17:00')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (11, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'18:20')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (12, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'20:00')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (13, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'21:00')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (14, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'22:10')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (15, CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'09:30')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (16, CAST(N'2020-07-04 00:00:00.000' AS DateTime), N'11:00')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (17, CAST(N'2020-07-04 00:00:00.000' AS DateTime), N'12:20')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (18, CAST(N'2020-07-04 00:00:00.000' AS DateTime), N'13:40')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (19, CAST(N'2020-07-04 00:00:00.000' AS DateTime), N'14:30')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (20, CAST(N'2020-07-04 00:00:00.000' AS DateTime), N'15:50')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (21, CAST(N'2020-07-04 00:00:00.000' AS DateTime), N'17:00')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (22, CAST(N'2020-07-04 00:00:00.000' AS DateTime), N'18:20')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (23, CAST(N'2020-07-04 00:00:00.000' AS DateTime), N'20:00')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (24, CAST(N'2020-07-04 00:00:00.000' AS DateTime), N'21:00')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (25, CAST(N'2020-07-04 00:00:00.000' AS DateTime), N'22:10')
SET IDENTITY_INSERT [dbo].[tb_KTG] OFF
SET IDENTITY_INSERT [dbo].[tb_LichChieu] ON 

INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (1, 1, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (2, 3, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (3, 3, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (4, 4, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (5, 5, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (6, 7, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (7, 8, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (8, 9, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (9, 10, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (10, 11, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (11, 12, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (12, 13, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (13, 14, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (14, 6, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (15, 16, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (16, 17, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (17, 18, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (18, 19, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (19, 20, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (20, 21, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (21, 22, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (22, 23, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (23, 24, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (24, 25, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (25, 3, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (26, 4, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (27, 5, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (28, 7, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (29, 8, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (30, 9, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (31, 10, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (32, 11, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (33, 12, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (34, 13, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (35, 14, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (36, 6, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (37, 16, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (38, 17, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (39, 18, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (40, 19, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (41, 20, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (42, 21, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (43, 22, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (44, 23, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (45, 24, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (46, 25, 2, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (47, 3, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (48, 4, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (49, 5, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (50, 7, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (51, 8, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (52, 9, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (53, 10, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (54, 11, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (55, 12, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (56, 13, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (57, 14, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (58, 6, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (59, 16, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (60, 17, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (61, 18, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (62, 19, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (63, 20, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (64, 21, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (65, 22, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (66, 23, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (67, 24, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (68, 25, 3, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (69, 3, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (70, 4, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (71, 5, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (72, 7, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (73, 8, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (74, 9, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (75, 10, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (76, 11, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (77, 12, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (78, 13, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (79, 14, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (80, 6, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (81, 16, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (82, 17, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (83, 18, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (84, 19, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (85, 20, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (86, 21, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (87, 22, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (88, 23, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (89, 24, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (90, 25, 4, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (91, 3, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (92, 3, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (93, 4, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (94, 5, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (95, 7, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (96, 8, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (97, 9, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (98, 10, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (99, 11, 5, 1)
GO
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (100, 12, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (101, 13, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (102, 14, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (103, 6, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (104, 16, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (105, 17, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (106, 18, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (107, 19, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (108, 20, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (109, 21, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (110, 22, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (111, 23, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (112, 24, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (113, 25, 5, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (114, 3, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (115, 3, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (116, 5, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (117, 8, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (118, 9, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (119, 10, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (120, 11, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (121, 12, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (122, 13, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (123, 14, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (124, 6, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (125, 16, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (126, 17, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (127, 18, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (128, 19, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (129, 20, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (130, 21, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (131, 22, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (132, 23, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (133, 24, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (134, 25, 6, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (135, 3, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (136, 5, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (137, 7, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (138, 8, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (139, 9, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (140, 10, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (141, 11, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (142, 12, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (143, 13, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (144, 14, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (145, 6, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (146, 16, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (147, 17, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (148, 18, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (149, 19, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (150, 20, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (151, 21, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (152, 22, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (153, 23, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (154, 24, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (155, 25, 7, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (156, 3, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (157, 3, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (158, 5, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (159, 7, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (160, 8, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (161, 9, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (162, 10, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (163, 11, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (164, 12, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (165, 13, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (166, 14, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (167, 6, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (168, 16, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (169, 17, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (170, 18, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (171, 19, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (172, 20, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (173, 21, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (174, 22, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (175, 23, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (176, 24, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (177, 25, 9, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (178, 3, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (179, 3, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (180, 5, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (181, 7, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (182, 9, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (183, 10, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (184, 11, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (185, 12, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (186, 13, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (187, 14, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (188, 6, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (189, 16, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (190, 17, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (191, 18, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (192, 19, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (193, 20, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (194, 21, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (195, 22, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (196, 23, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (197, 24, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (198, 25, 10, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (199, 3, 11, 1)
GO
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (200, 3, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (201, 5, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (202, 7, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (203, 8, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (204, 9, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (205, 10, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (206, 11, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (207, 13, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (208, 14, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (209, 6, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (210, 16, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (211, 17, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (212, 18, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (213, 19, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (214, 20, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (215, 21, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (216, 22, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (217, 23, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (218, 24, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (219, 25, 11, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (220, 3, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (221, 3, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (222, 5, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (223, 7, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (224, 8, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (225, 9, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (226, 10, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (227, 11, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (228, 12, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (229, 13, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (230, 14, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (231, 6, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (232, 16, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (233, 17, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (234, 18, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (235, 19, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (236, 20, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (237, 21, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (238, 22, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (239, 23, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (240, 24, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (241, 25, 12, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (242, 3, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (243, 3, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (244, 5, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (245, 7, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (246, 8, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (247, 9, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (248, 10, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (249, 11, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (250, 13, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (251, 13, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (252, 14, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (253, 6, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (254, 16, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (255, 17, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (256, 18, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (257, 19, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (258, 20, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (259, 21, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (260, 22, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (261, 23, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (262, 24, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (263, 25, 13, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (264, 3, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (265, 3, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (266, 5, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (267, 7, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (268, 8, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (269, 9, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (270, 10, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (271, 11, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (272, 12, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (273, 13, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (274, 14, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (275, 6, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (276, 16, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (277, 17, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (278, 18, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (279, 19, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (280, 20, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (281, 21, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (282, 22, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (283, 23, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (284, 24, 14, 1)
INSERT [dbo].[tb_LichChieu] ([MaLichChieu], [MaKTG], [MaPhim], [MaPhong]) VALUES (285, 25, 14, 1)
SET IDENTITY_INSERT [dbo].[tb_LichChieu] OFF
SET IDENTITY_INSERT [dbo].[tb_LoaiGhe] ON 

INSERT [dbo].[tb_LoaiGhe] ([MaLoaiGhe], [TenLoaiGhe]) VALUES (1, N'Ghế thường')
INSERT [dbo].[tb_LoaiGhe] ([MaLoaiGhe], [TenLoaiGhe]) VALUES (2, N'Ghế vip')
INSERT [dbo].[tb_LoaiGhe] ([MaLoaiGhe], [TenLoaiGhe]) VALUES (3, N'Ghế đôi')
SET IDENTITY_INSERT [dbo].[tb_LoaiGhe] OFF
SET IDENTITY_INSERT [dbo].[tb_LoaiQuangCao] ON 

INSERT [dbo].[tb_LoaiQuangCao] ([MaLoaiQuangCao], [TenLoaiQuangCao]) VALUES (1, N'Slide')
INSERT [dbo].[tb_LoaiQuangCao] ([MaLoaiQuangCao], [TenLoaiQuangCao]) VALUES (2, N'Banner')
SET IDENTITY_INSERT [dbo].[tb_LoaiQuangCao] OFF
SET IDENTITY_INSERT [dbo].[tb_LoaiTinTuc] ON 

INSERT [dbo].[tb_LoaiTinTuc] ([MaLoaiTinTuc], [TenLoaiTinTuc]) VALUES (1, N'Khuyến mại mới')
INSERT [dbo].[tb_LoaiTinTuc] ([MaLoaiTinTuc], [TenLoaiTinTuc]) VALUES (2, N'Tin bên lề')
SET IDENTITY_INSERT [dbo].[tb_LoaiTinTuc] OFF
SET IDENTITY_INSERT [dbo].[tb_NhanVien] ON 

INSERT [dbo].[tb_NhanVien] ([MaNhanVien], [UserName], [HoTen], [Email], [Sdt], [SoThe], [NgaySinh], [GioiTinh], [PassWord], [MaXaPhuong], [MaRap]) VALUES (1, N'admin', N'Trần Đức Soạn', N'tds@gmail.com', N'0335715608', N'036099007701        ', CAST(N'1999-10-11 00:00:00.000' AS DateTime), 1, N'827ccb0eea8a706c4c34a16891f84e7b', 13, 1)
INSERT [dbo].[tb_NhanVien] ([MaNhanVien], [UserName], [HoTen], [Email], [Sdt], [SoThe], [NgaySinh], [GioiTinh], [PassWord], [MaXaPhuong], [MaRap]) VALUES (2, N'LQNguyen', N'Lưu Quang Nguyên', N'lqn@gmail.com', N'0334262541', N'547288001345        ', CAST(N'1999-06-15 00:00:00.000' AS DateTime), 0, N'827ccb0eea8a706c4c34a16891f84e7b', 2, 1)
INSERT [dbo].[tb_NhanVien] ([MaNhanVien], [UserName], [HoTen], [Email], [Sdt], [SoThe], [NgaySinh], [GioiTinh], [PassWord], [MaXaPhuong], [MaRap]) VALUES (3, N'NVHung', N'Nguyễn Văn Hùng', N'nvh@gmail.com', N'0347925577', N'046023859161        ', CAST(N'1999-06-30 00:00:00.000' AS DateTime), 1, N'827ccb0eea8a706c4c34a16891f84e7b', 1, 1)
SET IDENTITY_INSERT [dbo].[tb_NhanVien] OFF
SET IDENTITY_INSERT [dbo].[tb_Phim] ON 

INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (1, N'Cơn Mưa Tình Đầu', N'media_images_2020_03_04_untitled-1-120427-040320-33.png', 7, 9, N'126 phút', CAST(N'2020-06-19 00:28:26.000' AS DateTime), CAST(N'2020-08-19 00:28:26.000' AS DateTime), N'Tatchapong Supasri', N'CƠN MƯA TÌNH ĐẦU (tựa gốc: CLASSIC AGAIN) là sự đan xen của hai câu chuyện tình yêu cách nhau 3 thập kỷ. Bota và cô bạn thân Poppy cùng cảm nắng Non – một anh bạn cùng trường đại học. Hiểu tấm lòng của người bạn thân, Bota giấu đi cảm xúc thật của mình để cổ vũ Poppy đến với Non. Một ngày, Bota tình cờ tìm thấy chiếc hộp cũ chứa đầy những lá thư và kỷ niệm về mối tình đầu của mẹ. Những bức thư giữa mẹ cô, Dalah và một chàng trai nhà nghèo tên Kajorn khiến Bota nhận ra cảm xúc hiện tại của mình thật giống với câu chuyện tình dở dang của mẹ. Liệu cô có dũng cảm giữ lấy tình yêu của mình hay mối tình đầu của Bota cũng sẽ kết thúc đầy tiếc nuối?', N'https://www.youtube.com/embed/eO2AsawXycY?rel=0&showinfo=0&autoplay=1', 1, 1, 8)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (2, N'Ngôi Đền Kỳ Quái 2', N'media_images_2020_06_26_03-07-ngoi-den-ma-quai-2-113102-260620-57.jpg', 3, 9, N'115 phút', CAST(N'2020-07-03 00:00:00.000' AS DateTime), CAST(N'2020-10-03 00:00:00.000' AS DateTime), N'Phontharis Chotkijsadarsopon', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 18px; text-align: justify; background-color: rgb(248, 248, 248);">Nối tiếp Pee Nak 1, sau một thời gian sống ở đền, hai nh&agrave; sư trẻ Balloon v&agrave; First quyết t&acirc;m ho&agrave;n tục trở lại cuộc sống b&igrave;nh thường. Nhưng mọi chuyện kh&ocirc;ng như kế hoạch của họ khi c&oacute; một con ma xuất hiện li&ecirc;n tục quấy ph&aacute; họ v&agrave; buộc họ phải quay lại đền để lẩn trốn .</span>', N'&lt;iframe width=&quot;829&quot; height=&quot;413&quot; src=&quot;https://www.youtube.com/embed/-nPCds58vVI&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 12)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (3, N'Tiếng Vọng Từ Địa Ngục', N'media_images_2020_06_26_poster-114220-260620-24.jpg', 3, 3, N'96 phút', CAST(N'2020-03-07 00:00:00.000' AS DateTime), CAST(N'2020-03-07 00:00:00.000' AS DateTime), N'Wesley Alley - Bradley Fowler', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 18px; text-align: justify; background-color: rgb(248, 248, 248);">Bộ phim &lsquo;The Voices&rsquo; xoay quanh những c&acirc;u chuyện k&igrave; b&iacute; xảy ra với Grace - một c&ocirc; g&aacute;i trẻ vừa chia tay vị h&ocirc;n phu của m&igrave;nh - khi c&ocirc; trở về nh&agrave; sau nhiều năm xa c&aacute;ch. Vừa vật lộn với chứng bệnh t&acirc;m thần ph&acirc;n liệt hoang tưởng của chị g&aacute;i vừa đối mặt với nhiều t&igrave;nh huống kinh dị v&agrave; qu&aacute;i gở xảy ra trong căn nh&agrave;, Grace dần dần nhận ra những sự thật đen tối vẫn lu&ocirc;n ẩn s&acirc;u trong c&ocirc;, chực chờ để ph&aacute; hủy sự b&igrave;nh y&ecirc;n của cả gia đ&igrave;nh. Grace sẽ phải l&agrave;m g&igrave; khi ranh giới giữa thực tế v&agrave; giấc mơ bị x&oacute;a nh&ograve;a, khiến c&ocirc; kh&ocirc;ng c&ograve;n c&oacute; khả năng ph&acirc;n biệt thật &ndash; giả?</span>', N'&lt;iframe width=&quot;829&quot; height=&quot;384&quot; src=&quot;https://www.youtube.com/embed/7wxjpjXe6Ts&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 12)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (4, N'Bằng Chứng Vô Hình', N'media_images_2020_07_01_400x633-184740-010720-75.jpg', 2, 3, N'101 phút', CAST(N'2020-03-07 00:00:00.000' AS DateTime), CAST(N'2020-03-07 00:00:00.000' AS DateTime), N'Trịnh Đình Lê Minh', N'Sau khi bị thương trong một tai nạn &ocirc; t&ocirc;, Thu - một C&ocirc; g&aacute;i m&ugrave; đ&atilde; đến tr&igrave;nh b&aacute;o cảnh s&aacute;t về vụ việc m&agrave; c&ocirc; tin rằng đ&atilde; trở th&agrave;nh &aacute;n mạng. Tuy nhi&ecirc;n, c&ocirc; gặp kh&ocirc;ng &iacute;t kh&oacute; khăn để thuyết phục cảnh s&aacute;t tin m&igrave;nh v&igrave; l&agrave; người khiếm thị. C&ugrave;ng l&uacute;c đ&oacute;, Hải - một nh&acirc;n chứng kh&aacute;c bất ngờ xuất hiện với lời khai m&acirc;u thuẫn với Thu về hiện trường vụ &aacute;n. Trong khi cảnh s&aacute;t c&ograve;n đang đau đầu x&aacute;c minh xem th&ocirc;ng tin của ai l&agrave; sự thật, t&ecirc;n s&aacute;t nh&acirc;n đ&atilde; &acirc;m thầm theo d&otilde;i cả Thu v&agrave; Hải để t&igrave;m c&aacute;ch thủ ti&ecirc;u nh&acirc;n chứng. Đ&acirc;y l&agrave; bộ phim Việt Nam bom tấn ra rạp sau khi rạp phim cả nước được mở cửa trở lại, v&agrave; l&agrave; một trong những bộ phim bom tấn của m&ugrave;a h&egrave; n&agrave;y.', N'&lt;iframe width=&quot;829&quot; height=&quot;384&quot; src=&quot;https://www.youtube.com/embed/Pk8N-3VH9NQ&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 12)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (5, N'Kẻ Xâm Nhập', N'media_images_2020_06_10_untitled-1-120743-100620-86.jpg', 1, 7, N'102 phút', CAST(N'2020-06-26 00:00:00.000' AS DateTime), CAST(N'2020-03-08 00:00:00.000' AS DateTime), N'Son Won-Pyeong', N'Intruder l&agrave; một trong những bộ phim điện ảnh kinh dị b&iacute; ẩn, c&oacute; sự tham gia của Song Ji Hyo v&agrave; Kim Moo Yeol. Phim kể về những g&igrave; xảy ra khi một người phụ nữ t&ecirc;n Yoo Jin (Song Ji Hyo đ&oacute;ng) trở về nh&agrave; sau khi mất t&iacute;ch 25 năm trước. Chuyện n&agrave;y khiến gia đ&igrave;nh họ dần thay đổi. Người anh trai của Yoo Jin l&agrave; Seo Jin (Kim Moo Yeol thủ vai) nghi ngờ v&agrave; t&igrave;m c&aacute;ch kh&aacute;m ph&aacute; b&iacute; mật của em g&aacute;i. Ch&iacute;nh điều n&agrave;y khiến anh t&igrave;m ra được một sự thật g&acirc;y sốc.', N'&lt;iframe width=&quot;829&quot; height=&quot;384&quot; src=&quot;https://www.youtube.com/embed/5KBvb4KJeFo&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 12)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (6, N'Phi Vụ Bão Tố', N'media_images_2020_06_24_fon-185131-240620-90.jpg', 2, 3, N'99 phút', CAST(N'2020-07-03 00:00:00.000' AS DateTime), CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'Michael Polish', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 18px; text-align: justify; background-color: rgb(248, 248, 248);">PHI VỤ B&Atilde;O TỐ l&agrave; cuộc chạm tr&aacute;n giữa t&acirc;m b&atilde;o của hai sĩ quan cảnh s&aacute;t với &acirc;m mưu t&aacute;o tợn của một băng cướp. Giữa những th&aacute;ng ng&agrave;y chật vật vượt qua k&yacute; ức đau thương, ch&agrave;ng sĩ quan cảnh s&aacute;t Cadeo được giao nhiệm vụ sơ t&aacute;n khẩn cấp cư d&acirc;n tại một khu chung cư giữa l&ograve;ng Puerto Rico khi khi cơn b&atilde;o lịch sử bất ngờ đổ bộ. Tại đ&acirc;y, Cadeo v&agrave; cộng sự v&ocirc; t&igrave;nh đụng độ băng cướp &ldquo;m&aacute;u lạnh&rdquo; do John cầm đầu &ndash; kẻ sẵn s&agrave;ng t&agrave;n s&aacute;t để chiếm đoạt c&aacute;c t&aacute;c phẩm nghệ thuật v&ocirc; gi&aacute;. Giữa t&igrave;nh thế ng&agrave;n c&acirc;n treo sợi t&oacute;c, cơn b&atilde;o nghiệt ng&atilde; c&ograve;n đe dọa nhấn ch&igrave;m cả to&agrave; nh&agrave; trong biển nước. Liệu sự liều lĩnh v&agrave; l&ograve;ng can đảm c&oacute; gi&uacute;p hai sĩ quan cảnh s&aacute;t c&ugrave;ng những cư d&acirc;n c&ograve;n s&oacute;t lại trong to&agrave; chung cư sống s&oacute;t?</span>', N'&lt;iframe width=&quot;829&quot; height=&quot;384&quot; src=&quot;https://www.youtube.com/embed/zIadzwqRO6w&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 12)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (7, N'Sói 100%', N'media_images_2020_06_10_untitled-1-100842-100620-92.jpg', 4, 2, N'96 phút', CAST(N'2020-07-06 00:00:00.000' AS DateTime), CAST(N'2020-07-16 00:00:00.000' AS DateTime), N'Alexs Stadermann', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 18px; text-align: justify; background-color: rgb(248, 248, 248);">S&oacute;i 100% kể c&acirc;u chuyện về Freddy Lupin, người thừa kế của d&ograve;ng họ người s&oacute;i qu&yacute; tộc. Kh&aacute;t khao ch&aacute;y bỏng được trở th&agrave;nh một người s&oacute;i, tuy nhi&ecirc;n Freddy bị sốc khi v&agrave;o sinh nhật lần thứ 13, anh ta bị biến th&agrave;nh một ch&uacute; ch&oacute; x&ugrave; m&agrave;u hồng hung dữ. Ngay khi Freddy nghĩ rằng cuộc sống kh&ocirc;ng thể tồi tệ hơn, anh ta lại bị n&eacute;m v&agrave;o nh&agrave; t&ugrave; ch&oacute;.</span>', N'&lt;iframe width=&quot;829&quot; height=&quot;384&quot; src=&quot;https://www.youtube.com/embed/APShdq23ymI&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 12)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (8, N'Cơn Mưa Tình Đầu', N'media_images_2020_03_04_untitled-1-120427-040320-33.png', 7, 9, N'126 phút', CAST(N'2020-07-16 00:00:00.000' AS DateTime), CAST(N'2020-07-27 00:00:00.000' AS DateTime), N'Tatchapong Supasri', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 18px; text-align: justify; background-color: rgb(248, 248, 248);">CƠN MƯA T&Igrave;NH ĐẦU (tựa gốc: CLASSIC AGAIN) l&agrave; sự đan xen của hai c&acirc;u chuyện t&igrave;nh y&ecirc;u c&aacute;ch nhau 3 thập kỷ. Bota v&agrave; c&ocirc; bạn th&acirc;n Poppy c&ugrave;ng cảm nắng Non &ndash; một anh bạn c&ugrave;ng trường đại học. Hiểu tấm l&ograve;ng của người bạn th&acirc;n, Bota giấu đi cảm x&uacute;c thật của m&igrave;nh để cổ vũ Poppy đến với Non. Một ng&agrave;y, Bota t&igrave;nh cờ t&igrave;m thấy chiếc hộp cũ chứa đầy những l&aacute; thư v&agrave; kỷ niệm về mối t&igrave;nh đầu của mẹ. Những bức thư giữa mẹ c&ocirc;, Dalah v&agrave; một ch&agrave;ng trai nh&agrave; ngh&egrave;o t&ecirc;n Kajorn khiến Bota nhận ra cảm x&uacute;c hiện tại của m&igrave;nh thật giống với c&acirc;u chuyện t&igrave;nh dở dang của mẹ. Liệu c&ocirc; c&oacute; dũng cảm giữ lấy t&igrave;nh y&ecirc;u của m&igrave;nh hay mối t&igrave;nh đầu của Bota cũng sẽ kết th&uacute;c đầy tiếc nuối?</span>', N'&lt;iframe width=&quot;829&quot; height=&quot;384&quot; src=&quot;https://www.youtube.com/embed/eO2AsawXycY&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 12)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (9, N'Đoạt Xác', N'media_images_2020_06_11_untitled-1-115301-110620-85.jpg', 3, 3, N'98 phút', CAST(N'2020-06-26 00:00:00.000' AS DateTime), CAST(N'2020-07-13 00:00:00.000' AS DateTime), N'Omar Naim', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 18px; text-align: justify; background-color: rgb(248, 248, 248);">Đoạt X&aacute;c xoay quanh một cặp đ&ocirc;i mới đ&iacute;nh h&ocirc;n v&agrave; y&ecirc;u nhau say đắm Alex (Toby Kebbell) v&agrave; Lisa (Penelope Mitchell). Trong một chuyến đi, họ chạm tr&aacute;n một thực thể t&agrave; &aacute;c, b&iacute; ẩn cổ xưa v&agrave; Alex đ&atilde; bị chọn l&agrave;m vật chủ mới. Anh dần bị chiếm hữu cả về thể x&aacute;c lẫn tinh thần, trở th&agrave;nh một người đ&agrave;n &ocirc;ng đ&aacute;ng sợ v&agrave; bạo lực.</span>', N'&lt;iframe width=&quot;829&quot; height=&quot;384&quot; src=&quot;https://www.youtube.com/embed/oR6Vx1_LnSk&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 12)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (10, N'IZ*ONE: Ngước Nhìn Tôi', N'media_images_2020_06_03_untitled-1-170122-030620-87.jpg', 6, 1, N'106 phút', CAST(N'2020-06-26 00:00:00.000' AS DateTime), CAST(N'2020-07-15 00:00:00.000' AS DateTime), N'CJ E&M', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 18px; text-align: justify; background-color: rgb(248, 248, 248);">(aka: IZ ONE) l&agrave; một nh&oacute;m nhạc nữ H&agrave;n Quốc-Nhật Bản, gồm 12 th&agrave;nh vi&ecirc;n được kh&aacute;n giả H&agrave;n Quốc b&igrave;nh chọn từ 96 thực tập sinh đến từ nhiều c&ocirc;ng ty giải tr&iacute; kh&aacute;c nhau của H&agrave;n Quốc v&agrave; c&aacute;c nh&oacute;m chị em AKB48 Group của Nhật Bản. Đ&acirc;y l&agrave; bộ phim về concert trực tiếp đầu ti&ecirc;n ở H&agrave;n Quốc của IZ*ONE.</span>', N'&lt;iframe width=&quot;829&quot; height=&quot;384&quot; src=&quot;https://www.youtube.com/embed/c5zkR0Fr8vs&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 1)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (11, N'Leo Da Vinci: Truy Tìm Kho Báu', N'media_images_2020_05_19_400x633-01-152720-190520-21.jpg', 4, 2, N'85 phút', CAST(N'2020-06-05 00:00:00.000' AS DateTime), CAST(N'2020-06-23 00:00:00.000' AS DateTime), N'Sergio Manfio', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 18px; text-align: justify; background-color: rgb(248, 248, 248);">Chuyến phi&ecirc;u lưu truy t&igrave;m kho b&aacute;u của Leo Da Vinci v&agrave; những người bạn. Điều bất ngờ g&igrave; đang chờ họ ở ph&iacute;a trước.</span>', N'&lt;iframe width=&quot;829&quot; height=&quot;384&quot; src=&quot;https://www.youtube.com/embed/7MpYLU3f0OU&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 12)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (12, N'Mẹ Quỷ', N'media_images_2020_06_22_untitled-1-135334-220620-52.jpg', 3, 2, N'95 phút', CAST(N'2020-06-19 00:00:00.000' AS DateTime), CAST(N'2020-07-03 00:00:00.000' AS DateTime), N'Drew T. Pierce, Brett Pierce', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 18px; text-align: justify; background-color: rgb(248, 248, 248);">Một cậu b&eacute; mới đến độ tuổi trưởng th&agrave;nh phải vật lộn với cuộc ly h&ocirc;n sắp xảy ra của cha mẹ m&igrave;nh. V&agrave;o m&ugrave;a h&egrave; nọ, cậu v&agrave; bố chuyển đến sống tại một thị trấn nhỏ v&agrave; l&agrave;m nghề dịch vụ du lịch. Tuy nhi&ecirc;n tại đ&acirc;y, cậu bất ngờ phải đối mặt với ...một ph&ugrave; thủy ngh&igrave;n năm tuổi, sống giả dạng dưới lớp da người đang ở một căn nh&agrave; ngay kế nh&agrave; cậu.</span>', N'<iframe allow="&quot;accelerometer;" allowfullscreen="" frameborder="&quot;0&quot;" height="&quot;384&quot;" src="&quot;https://www.youtube.com/embed/rsB4-gQ8e18&quot;" width="&quot;829&quot;"></iframe>', 1, 1, 12)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (13, N'Nhím, Sóc Và Viên Đá Thần Kỳ', N'media_images_2020_03_18_nhim-soc-va-vien-da-than-ky-103005-180320-72.jpg', 4, 2, N'82 phút', CAST(N'2020-06-19 00:00:00.000' AS DateTime), CAST(N'2020-07-05 00:00:00.000' AS DateTime), N'Mimi Maynard, Regina Welker', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 18px; text-align: justify; background-color: rgb(248, 248, 248);">Latte l&agrave; một c&ocirc; nh&iacute;m nhỏ dễ thương, tự tin v&agrave; tr&agrave;n đầy sức sống. Latte rất th&iacute;ch kể chuyện mặc cho mọi người xung quanh c&oacute; muốn nghe hay kh&ocirc;ng. V&agrave; trong những c&acirc;u chuyện Latte kể, c&ocirc; lu&ocirc;n v&ocirc; t&igrave;nh xuất hiện như một nữ anh h&ugrave;ng kh&ocirc;ng sợ h&atilde;i, cứu rỗi thế giới. Một ng&agrave;y nọ, những con vật trong khu rừng thức dậy, ph&aacute;t hiện ra rằng vi&ecirc;n đ&aacute; ma thuật đ&atilde; bị mất v&agrave; kẻ đ&aacute;nh cắp ch&iacute;nh l&agrave; Vua Gấu hung dữ với đ&ocirc;i vuốt nhọn. Latte tuy&ecirc;n bố ch&iacute;nh c&ocirc; sẽ lấy lại được vi&ecirc;n đ&aacute; để mu&ocirc;n lo&agrave;i kh&ocirc;ng bị lời nguyền hạn h&aacute;n m&agrave; tuyệt chủng. Đồng h&agrave;nh với Latte l&agrave; Tjum &ndash; một ch&uacute; s&oacute;c v&agrave; kh&ocirc;ng l&acirc;u sau khi bắt đầu, Tjum ph&aacute;t hiện rằng l&ograve;ng can đảm thực sự của Latte kh&ocirc;ng lớn như những g&igrave; miệng c&ocirc; n&oacute;i. Liệu hai anh h&ugrave;ng bất đắc dĩ n&agrave;y c&oacute; th&agrave;nh c&ocirc;ng trong cuộc phi&ecirc;u lưu thử th&aacute;ch nhất cuộc đời&hellip;</span>', N'&lt;iframe width=&quot;829&quot; height=&quot;384&quot; src=&quot;https://www.youtube.com/embed/8ixiDXSi9EA&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 12)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien], [MaHangPhim]) VALUES (14, N'Trùng Quỷ Đại Dương', N'media_images_2020_06_10_untitled-1-085851-100620-43.jpg', 3, 5, N'91 phút', CAST(N'2020-06-26 00:00:00.000' AS DateTime), CAST(N'2020-07-02 00:00:00.000' AS DateTime), N'Neasa Hardiman', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 18px; text-align: justify; background-color: rgb(248, 248, 248);">Trong một chuyến t&agrave;u đ&aacute;nh c&aacute; đến T&acirc;y Ireland, phi h&agrave;nh đo&agrave;n bị mắc kẹt l&ecirc;nh đ&ecirc;nh giữa biển. Những tưởng kh&ocirc;ng c&ograve;n g&igrave; nguy hiểm hơn, họ lại phải đối mặt với một lo&agrave;i k&yacute; sinh tr&ugrave;ng đang ph&aacute;t triển ngay ch&iacute;nh trong nguồn nước sinh hoạt. Những cơn hoảng loạn, sự nghi ngờ v&agrave; xung đột bắt đầu xảy ra khiến t&igrave;nh h&igrave;nh c&agrave;ng l&uacute;c c&agrave;ng tệ hơn.</span>', N'&lt;iframe width=&quot;829&quot; height=&quot;384&quot; src=&quot;https://www.youtube.com/embed/g-Lx2iPz9UA&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tb_Phim] OFF
SET IDENTITY_INSERT [dbo].[tb_Phong] ON 

INSERT [dbo].[tb_Phong] ([MaPhong], [TenPhong], [SoHangMax], [SoCotMax], [MaDinhDang], [MaRap]) VALUES (1, N'P1', 10, 15, 1, 1)
INSERT [dbo].[tb_Phong] ([MaPhong], [TenPhong], [SoHangMax], [SoCotMax], [MaDinhDang], [MaRap]) VALUES (2, N'P2', 10, 15, 1, 1)
INSERT [dbo].[tb_Phong] ([MaPhong], [TenPhong], [SoHangMax], [SoCotMax], [MaDinhDang], [MaRap]) VALUES (3, N'P3', 10, 15, 1, 1)
INSERT [dbo].[tb_Phong] ([MaPhong], [TenPhong], [SoHangMax], [SoCotMax], [MaDinhDang], [MaRap]) VALUES (4, N'P4', 10, 15, 1, 1)
INSERT [dbo].[tb_Phong] ([MaPhong], [TenPhong], [SoHangMax], [SoCotMax], [MaDinhDang], [MaRap]) VALUES (5, N'P5', 10, 15, 1, 1)
SET IDENTITY_INSERT [dbo].[tb_Phong] OFF
SET IDENTITY_INSERT [dbo].[tb_QuanHuyen] ON 

INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (1, N'Thanh xuân', 62)
INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (3, N'Đan Phượng', 62)
INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (5, N'Mỹ Long', 1)
INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (6, N'Ngô Quyền', 3)
INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (7, N'Quyết Thắng', 17)
INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (8, N'Xuân Bình', 17)
INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (9, N'Lộc Thọ', 27)
INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (10, N'Tân Thịnh', 49)
INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (11, N'Lam Sơn', 50)
INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (12, N'Phú Mỹ', 2)
INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (13, N'Giao Thủy', 35)
INSERT [dbo].[tb_QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinhThanhPho]) VALUES (14, N'Nam Từ Liêm', 62)
SET IDENTITY_INSERT [dbo].[tb_QuanHuyen] OFF
SET IDENTITY_INSERT [dbo].[tb_QuangCao] ON 

INSERT [dbo].[tb_QuangCao] ([MaQuangCao], [MaLoaiQuangCao], [AnhQC], [NgayThem]) VALUES (1, 1, N'beta-slide.jpg', CAST(N'2020-07-01 07:30:20.867' AS DateTime))
INSERT [dbo].[tb_QuangCao] ([MaQuangCao], [MaLoaiQuangCao], [AnhQC], [NgayThem]) VALUES (2, 1, N'beta-slide-2.jpg', CAST(N'2020-07-01 07:36:27.960' AS DateTime))
INSERT [dbo].[tb_QuangCao] ([MaQuangCao], [MaLoaiQuangCao], [AnhQC], [NgayThem]) VALUES (3, 1, N'beta-slide-3.jpg', CAST(N'2020-07-01 07:36:47.923' AS DateTime))
INSERT [dbo].[tb_QuangCao] ([MaQuangCao], [MaLoaiQuangCao], [AnhQC], [NgayThem]) VALUES (4, 2, N'beta-banner-1.jpg', CAST(N'2020-07-01 07:40:17.030' AS DateTime))
INSERT [dbo].[tb_QuangCao] ([MaQuangCao], [MaLoaiQuangCao], [AnhQC], [NgayThem]) VALUES (5, 2, N'beta-banner-2.jpg', CAST(N'2020-07-01 07:40:36.497' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_QuangCao] OFF
SET IDENTITY_INSERT [dbo].[tb_QuocGia] ON 

INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (1, N'Việt Nam')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (2, N'Mỹ')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (3, N'Anh')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (4, N'Pháp')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (5, N'Nga')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (6, N'Trung Quốc')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (7, N'Hàn Quốc')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (8, N'Nhật Bản')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (9, N'Thái Lan')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (10, N'Phi-lip-pin')
SET IDENTITY_INSERT [dbo].[tb_QuocGia] OFF
SET IDENTITY_INSERT [dbo].[tb_Rap] ON 

INSERT [dbo].[tb_Rap] ([MaRap], [AnhDaiDien], [TenRap], [GioiThieu], [DiaChi], [SDTRieng], [MaXaPhuong]) VALUES (1, N'rap-beta-my-dinh.jpg', N'Beta Mỹ Đình', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Ch&iacute;nh thức mở cửa đ&oacute;n c&aacute;c t&iacute;n đồ điện ảnh v&agrave;o cuối th&aacute;ng 1 năm 2017, rạp Beta Cineplex Mỹ Đ&igrave;nh toạ lạc tại tầng hầm B1, to&agrave; nh&agrave; Golden Palace, đường Mễ Tr&igrave;, quận Nam Từ Li&ecirc;m, H&agrave; Nội.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Rạp c&oacute; vị tr&iacute; thuận lợi, rất gần những trường đại học, cao đẳng v&agrave; cấp 3 lớn tại H&agrave; Nội. Beta Cineplex Mỹ Đ&igrave;nh sở hữu tổng cộng 7 ph&ograve;ng chiếu tương đương hơn 800&nbsp;ghế ngồi. Rạp được trang bị hệ thống m&agrave;n chiếu, m&aacute;y chiếu, ph&ograve;ng chiếu hiện đại theo ti&ecirc;u chuẩn Hollywood với 100% nhập khẩu từ nước ngo&agrave;i. Trong mỗi ph&ograve;ng chiếu đều được lắp đặt hệ thống &acirc;m thanh Dolby 7.1 v&agrave; hệ thống c&aacute;ch &acirc;m chuẩn quốc tế. V&igrave; vậy m&agrave; mỗi thước phim được chiếu tại rạp đều l&agrave; những thước phim r&otilde; n&eacute;t nhất, với &acirc;m thanh v&agrave; hiệu ứng sống động nhất. Mức gi&aacute; xem phim tại rạp hết sức ưu đ&atilde;i, chỉ từ 45.000 VNĐ. Mỗi tuần, rạp c&ograve;n c&oacute; những chương tr&igrave;nh khuyến mại, ưu đ&atilde;i đặc biệt d&agrave;nh cho c&aacute;c t&iacute;n đồ điện ảnh.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Với địa điểm thuận lợi, cơ sở vật chất hiện đại, ti&ecirc;n tiến, mức gi&aacute; ưu đ&atilde;i, Beta Cineplex Mỹ Đ&igrave;nh&nbsp;chắc chắn sẽ l&agrave; địa điểm xem-ăn-chơi kh&ocirc;ng thể bỏ qua của giới trẻ H&agrave; Th&agrave;nh.&nbsp;&nbsp;</p>
', N'Tầng hầm B1, tòa nhà Golden Palace, đường Mễ Trì, quận Nam Từ Liêm, Hà Nội', N'024  7302 8885 (máy lẻ 502) / Ms. Nguyệt - 036 346 0579', 2)
INSERT [dbo].[tb_Rap] ([MaRap], [AnhDaiDien], [TenRap], [GioiThieu], [DiaChi], [SDTRieng], [MaXaPhuong]) VALUES (2, N'15676168-708711372631104-1938445758628400757-o-104437-040718-50.jpg', N'Beta Thanh Xuân', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Ch&iacute;nh thức mở cửa đ&oacute;n c&aacute;c t&iacute;n đồ điện ảnh v&agrave;o 9/12/2016, rạp Beta Cineplex Thanh Xu&acirc;n toạ lạc tại Tầng hầm B1, to&agrave; nh&agrave; Golden West, số 2 L&ecirc; Văn Thi&ecirc;m, Nh&acirc;n Ch&iacute;nh, Thanh Xu&acirc;n, H&agrave; Nội.&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Rạp c&oacute; vị tr&iacute; thuận lợi, rất gần những trường đại học, cao đẳng v&agrave; cấp 3 lớn tại H&agrave; Nội (Trường Đại học Khoa học Tự nhi&ecirc;n, Trường Đại học Khoa học X&atilde; hội v&agrave; Nh&acirc;n văn, trường H&agrave; Nội &ndash; Amsterdam, &hellip;)&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Beta Cineplex Thanh Xu&acirc;n sở hữu tổng cộng 6 ph&ograve;ng chiếu tương đương 838&nbsp;ghế ngồi. Rạp được trang bị hệ thống m&agrave;n chiếu, m&aacute;y chiếu, ph&ograve;ng chiếu hiện đại với 100% nhập khẩu từ nước ngo&agrave;i. Trong mỗi ph&ograve;ng chiếu đều được lắp đặt hệ thống &acirc;m thanh Dolby 7.1 v&agrave; hệ thống c&aacute;ch &acirc;m chuẩn quốc tế. V&igrave; vậy m&agrave; mỗi thước phim được chiếu tại rạp đều l&agrave; những thước phim r&otilde; n&eacute;t nhất, với &acirc;m thanh v&agrave; hiệu ứng sống động nhất.&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Mức gi&aacute; xem phim tại rạp hết sức ưu đ&atilde;i, chỉ từ 45.000 VNĐ. Mỗi tuần, rạp c&ograve;n c&oacute; những chương tr&igrave;nh khuyến mại, ưu đ&atilde;i đặc biệt d&agrave;nh cho c&aacute;c t&iacute;n đồ điện ảnh.&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Với địa điểm thuận lợi, cơ sở vật chất hiện đại, ti&ecirc;n tiến, mức gi&aacute; ưu đ&atilde;i, Beta Cineplex Thanh Xu&acirc;n chắc chắn sẽ l&agrave; địa điểm xem-ăn-chơi kh&ocirc;ng thể bỏ qua của giới trẻ H&agrave; Th&agrave;nh. &nbsp;&nbsp;</p>
<div>
	&nbsp;</div>
', N'Tầng hầm B1, tòa nhà Golden West, Số 2 Lê Văn Thiêm, Nhân Chính, Thanh Xuân, Hà Nội  (cách đường Lê Văn Lương 80m, đối diện số 56 Lê Văn Thiêm)', N'024  7302 8885 (máy lẻ 301) /  Mr. Giang - 098 666 14 12', 1)
INSERT [dbo].[tb_Rap] ([MaRap], [AnhDaiDien], [TenRap], [GioiThieu], [DiaChi], [SDTRieng], [MaXaPhuong]) VALUES (3, N'26814841-1983196721944128-7463239005301519863-n-110550-040718-26.jpg', N'Beta Đan Phượng', N'<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; text-align: justify; background-color: rgb(248, 248, 248);">Nhằm phục vụ nhu cầu vui chơi giải tr&iacute; của người d&acirc;n ngoại th&agrave;nh H&agrave; Nội, Beta Cineplex Đan Phượng khai trương ng&agrave;y 19/01/2018 tại khu&ocirc;n vi&ecirc;n khu đ&ocirc; thị T&acirc;n T&acirc;y Đ&ocirc; (khu đ&ocirc; thị XPHomes) huyện Đan Phượng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; text-align: justify; background-color: rgb(248, 248, 248);" />
<br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; text-align: justify; background-color: rgb(248, 248, 248);" />
<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; text-align: justify; background-color: rgb(248, 248, 248);">Nằm trong t&ograve;a nh&agrave; HHA c&oacute; kiến tr&uacute;c hiện đại v&agrave; đa năng, rạp Beta Cineplex Đan Phương cũng sở hữu thiết kế trẻ trung, năng động rất ph&ugrave; hợp với giới trẻ. Rạp c&oacute; quy m&ocirc; 5 ph&ograve;ng chiếu với 477 ghế, trong đ&oacute; c&oacute; 1 ph&ograve;ng chiếu 3D.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; text-align: justify; background-color: rgb(248, 248, 248);" />
<br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; text-align: justify; background-color: rgb(248, 248, 248);" />
<span style="color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; text-align: justify; background-color: rgb(248, 248, 248);">Kh&ocirc;ng thua k&eacute;m 2 người anh em l&agrave; Beta Mỹ Đ&igrave;nh v&agrave; Beta Thanh Xu&acirc;n, Beta Cineplex Đan Phượng cũng sẽ được trang bị m&agrave;n h&igrave;nh chiếu cong c&ugrave;ng với d&agrave;n &acirc;m thanh Dolby hiện đại.&nbsp;</span>', N'tầng 2 tòa nhà HHA, khu đô thị XPHomes (Tân Tây Đô), Tân Lập, Đan Phượng, Hà Nội.', N'024 7302 8885- máy lẻ 404. /  Ms. Thúy - 097 291 72 59', 3)
SET IDENTITY_INSERT [dbo].[tb_Rap] OFF
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A1', N'A', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A10', N'A', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A11', N'A', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A12', N'A', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A2', N'A', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A3', N'A', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A4', N'A', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A5', N'A', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A6', N'A', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A7', N'A', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A8', N'A', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A9', N'A', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B1', N'B', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B10', N'B', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B11', N'B', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B2', N'B', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B3', N'B', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B4', N'B', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B5', N'B', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B6', N'B', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B7', N'B', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B8', N'B', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B9', N'B', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C1', N'C', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C10', N'C', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C11', N'C', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C12', N'C', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C2', N'C', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C3', N'C', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C4', N'C', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C5', N'C', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C6', N'C', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C7', N'C', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C8', N'C', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C9', N'C', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D1', N'D', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D10', N'D', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D11', N'D', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D2', N'D', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D3', N'D', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D4', N'D', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D5', N'D', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D6', N'D', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D7', N'D', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D8', N'D', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D9', N'D', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E1', N'E', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E10', N'E', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E2', N'E', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E3', N'E', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E4', N'E', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E5', N'E', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E6', N'E', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E7', N'E', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E8', N'E', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E9', N'E', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F1', N'F', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F10', N'F', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F11', N'F', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F12', N'F', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F2', N'F', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F3', N'F', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F4', N'F', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F5', N'F', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F6', N'F', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F7', N'F', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F8', N'F', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F9', N'F', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G1', N'G', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G10', N'G', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G11', N'G', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G12', N'G', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G2', N'G', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G3', N'G', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G4', N'G', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G5', N'G', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G6', N'G', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G7', N'G', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G8', N'G', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G9', N'G', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H1', N'H', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H10', N'H', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H11', N'H', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H12', N'H', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H2', N'H', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H3', N'H', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H4', N'H', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H5', N'H', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H6', N'H', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H7', N'H', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H8', N'H', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H9', N'H', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I1', N'I', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I10', N'I', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I11', N'I', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I12', N'I', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I2', N'I', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I3', N'I', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I4', N'I', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I5', N'I', N'5')
GO
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I6', N'I', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I7', N'I', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I8', N'I', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I9', N'I', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J1', N'J', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J10', N'J', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J11', N'J', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J12', N'J', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J2', N'J', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J3', N'J', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J4', N'J', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J5', N'J', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J6', N'J', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J7', N'J', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J8', N'J', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J9', N'J', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K1', N'K', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K10', N'K', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K11', N'K', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K12', N'K', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K2', N'K', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K3', N'K', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K4', N'K', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K5', N'K', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K6', N'K', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K7', N'K', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K8', N'K', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'K9', N'K', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'L1', N'L', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'L10', N'L', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'L11', N'L', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'L2', N'L', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'L3', N'L', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'L4', N'L', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'L5', N'L', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'L6', N'L', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'L7', N'L', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'L8', N'L', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'L9', N'L', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'M10-M9', N'M', N'9-10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'M2-M1', N'M', N'1-2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'M4-M3', N'M', N'3-4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'M6-M5', N'M', N'6-5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'M8-M7', N'M', N'7-8')
SET IDENTITY_INSERT [dbo].[tb_TinTuc] ON 

INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (1, N'tin-khuyen-mai-1.jpg', N'QUẸT VÍ AIRPAY, XEM NGAY BOM TẤN , HOÀN TIỀN TỚI 20%', N'MÙA HÈ NẮNG NÓNG NHƯNG ƯU ĐÃI BETA MANG ĐẾN CHO BẠN CÒN "CHÁY BỎNG" HƠN CẢ THỜI TIẾT NGOÀI TRỜI.', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	Th&aacute;ng 7 năm nay, ngo&agrave;i những bom tấn sắp sửa ra mắt tr&ecirc;n to&agrave;n&nbsp;hệ thống rạp chiếu phim, Beta Cinemas c&ograve;n đem tới cho bạn h&agrave;ng loạt&nbsp;<strong style="box-sizing: border-box;">deal khủng l&ecirc;n tới 20%</strong>&nbsp;khi thanh to&aacute;n qua V&iacute; điện tử&nbsp;<strong style="box-sizing: border-box;">AirPay</strong>&nbsp;th&ocirc;ng qua ứng dụng<strong style="box-sizing: border-box;">&nbsp;AirPay, Beta Cineplex</strong>&nbsp;hoặc qua website&nbsp;<strong style="box-sizing: border-box;"><a href="https://betacineplex.vn/home.htm" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">Beta Cineplex.</a></strong></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	Chi tiết deal hot như sau:&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;⏰ Thời gian: ng&agrave;y&nbsp;<strong style="box-sizing: border-box;">01/07 - 30/09/2020.</strong></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;💸 Ho&agrave;n tiền&nbsp;<strong style="box-sizing: border-box;">20%</strong>&nbsp;tối đa 30.000đ&nbsp;với giao dịch c&oacute; gi&aacute; trị&nbsp;từ 50.000đ&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	📌 Mỗi kh&aacute;ch h&agrave;ng được hưởng khuyến m&atilde;i tối đa&nbsp;<strong style="box-sizing: border-box;">9 lần</strong>.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	NHANH TAY NHẬP M&Atilde; [&nbsp;<strong style="box-sizing: border-box;">APPHIMHAY</strong>&nbsp;]&nbsp;ĐẶT GI&Aacute; ĐỂ NHẬN ƯU Đ&Atilde;I &quot;N&Oacute;NG HỔI&quot; CẢ NH&Agrave; ƠI!!&nbsp;<strong style="box-sizing: border-box;">🤩</strong></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<b style="box-sizing: border-box;">Hướng dẫn quẹt v&iacute; AirPay&nbsp;<a href="https://www.airpay.vn/faqs/huong-dan-mua-hang/#huong-dan-nhap-ma-coupon-vao-vi-voucher" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">tại đ&acirc;y</a>!!</b></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	Th&ocirc;ng tin c&aacute;c&nbsp;<a href="https://www.airpay.vn/faqs/nap-tien/#han-muc-ngan-hang-khi-thanh-toan" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;"><strong style="box-sizing: border-box;">ng&acirc;n h&agrave;ng</strong></a>&nbsp;li&ecirc;n kết với V&iacute; AirPay.</p>
', 1, CAST(N'2020-07-01 09:25:17.420' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (2, N'tin-ben-le-1.jpg', N'Cho Tôi Xin Một Vé Đi Tuổi Thơ Cùng Scooby-Doo', N'Chú chó Scooby-Doo', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">Ch&uacute; ch&oacute;&nbsp;<strong style="box-sizing: border-box;">Scooby-Doo</strong>&nbsp;lần đầu ti&ecirc;n ra mắt c&ocirc;ng ch&uacute;ng v&agrave;o năm 1969 qua loạt phim d&agrave;i tập&nbsp;</font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">Scooby-Doo, Where Are You!&nbsp;</i></font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">(tạm dịch:&nbsp;</font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">Scooby-Doo, Cậu Đ&acirc;u Rồi&nbsp;</i></font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">hay&nbsp;</font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">Scooby-Doo: Ch&uacute; Ch&oacute; Th&aacute;m Tử</i></font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">) do h&atilde;n Hanna-Barbera sản xuất.&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">&nbsp;Sau th&agrave;nh c&ocirc;ng lớn c&ugrave;ng tầm ảnh hưởng s&acirc;u rộng, Hanna-Barbera c&ugrave;ng người kế nghiệm - xưởng phim hoạt h&igrave;nh của Warner Bros. (Warner Bros. Animation) tiếp tục cho ra đời h&agrave;ng loạt c&aacute;c sản phẩm phim ảnh, tr&ograve; chơi, truyện tranh về ch&uacute; ch&oacute; huyền thoại n&agrave;y. Vũ trụ đồ sộ của Scooby-Doo c&oacute; thể kể đến 12 series phim hoạt h&igrave;nh kh&aacute;c nhau với gần 400 tập phim tr&ecirc;n s&oacute;ng c&aacute;c k&ecirc;nh truyền h&igrave;nh nổi tiếng như CBS, ABC hay Cartoon Network từ những năm 70 cho đến tận b&acirc;y giờ.&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><img alt="https://lh5.googleusercontent.com/ehwEYj7Dm5kjAwVbWzBJhLIGvv2YDH5jMWjmD9NhoKOx8XgEafh0Xq27SH4U7uLt1zGMa8ZKdl0B7C0wTwzYmS2sr9OXEdJc6QgKpc9zYZZbUu55moH_AriOovkv6LjEBb_OGJJa" data-custom="AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQACol2Z36bwZMltinqWEkEeQ%3D" originalsrc="cid:image002.jpg@01D64EE8.F951B8B0" src="https://mail.betacorp.vn/owa/service.svc/s/GetFileAttachment?id=AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQACol2Z36bwZMltinqWEkEeQ%3D&amp;X-OWA-CANARY=BOSCCGG_nkKSKCBpbAn8L6VDHrjGHNgIekqECthtWQDqOyq5QTUp6f0QMqSXedIKAnCPsnUBtWw." style="box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 0px !important; max-width: 100%; width: 545px; height: 306px;" /></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">Hai bộ phim điện ảnh live-action (phim chuyển thể người đ&oacute;ng) với tựa đề&nbsp;</font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">Scooby-Doo&nbsp;</i></font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">v&agrave;&nbsp;</font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">Scooby-Doo 2: Monsters Unleashed</i>&nbsp;lần lượt được ra mắt v&agrave;o năm 2002 v&agrave; 2004.</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">Năm 2020, ch&uacute; ch&oacute; Scooby-Doo ch&iacute;nh thức bước qua cột mốc tuổi đời một phần hai thế kỷ. Cũng ch&iacute;nh trong năm nay, h&atilde;ng Warner Bros. cho ra mắt&nbsp;</font><a href="https://betacineplex.vn/chi-tiet-phim.htm?gf=95697b9a-fa09-4a89-bafb-d3a6467df038" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><b style="box-sizing: border-box;"><i style="box-sizing: border-box;">Cuộc Phi&ecirc;u Lưu Của Scooby-Doo</i></b></font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><b style="box-sizing: border-box;">&nbsp;</b></font></a><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">- phim hoạt h&igrave;nh đầu ti&ecirc;n về Scooby-Doo v&agrave; những người bạn được đưa l&ecirc;n m&agrave;n ảnh rộng.&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><img alt="https://lh4.googleusercontent.com/M1i7_2HX8hFEbQwW_Nj3aIXw9XL0bY90xgFYTjilZDVltcDTr4w2Mhyl3VuwArR390Y-oXmEIrQsy8EWUN7BlQAxatPgLHheiJO2KVTj76T9FXIgpN0VSbwpVNPiUUODwJZvW7mS" data-custom="AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAMAfAB%2FTgcpAs3b6Zp3eXBc%3D" height="765" originalsrc="cid:image003.png@01D64EE8.F951B8B0" src="https://mail.betacorp.vn/owa/service.svc/s/GetFileAttachment?id=AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAMAfAB%2FTgcpAs3b6Zp3eXBc%3D&amp;X-OWA-CANARY=BOSCCGG_nkKSKCBpbAn8L6VDHrjGHNgIekqECthtWQDqOyq5QTUp6f0QMqSXedIKAnCPsnUBtWw." style="box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 0px !important; max-width: 100%;" width="513" /></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">Phim đưa kh&aacute;n giả đến với cuộc gặp gỡ của ch&uacute; ch&oacute; Scooby-Doo &ldquo;ngu ngơ ngờ nghệch&rdquo; nhưng cực kỳ đ&aacute;ng y&ecirc;u với người bạn th&acirc;n Shaggy v&agrave; nh&oacute;m bạn gồm Fred Jones, Daphne Blake, Velma Dinkley từ những ng&agrave;y thơ b&eacute;. Cả nh&oacute;m c&ugrave;ng nhau th&agrave;nh lập đội th&aacute;m tử điều tra những vụ &aacute;n kỳ b&iacute; rồi được đ&ocirc;ng đảo c&ocirc;ng ch&uacute;ng biết tới. Cho đến một ng&agrave;y, Scooby-Doo v&agrave; Shaggy bị bắt c&oacute;c l&ecirc;n một phi thuyền kỳ lạ rồi v&ocirc; t&igrave;nh kh&aacute;m ph&aacute; ra &acirc;m mưu giải ph&oacute;ng con ch&oacute; ma Cerberus c&oacute; sức mạnh hủy diệt của &aacute;c nh&acirc;n Dick Dastardly. Cả nh&oacute;m buộc phải chạy đua với thời gian, cứu lấy người bạn th&acirc;n thiết, đồng thời ngăn chặn nguy cơ diệt vong cho to&agrave;n nh&acirc;n loại.&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font face="Times New Roman,serif" size="3" style="box-sizing: border-box;">&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><b style="box-sizing: border-box;">Những nh&acirc;n vật &ldquo;đi c&ugrave;ng năm th&aacute;ng&rdquo;&nbsp;</b></font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">Loạt phim về ch&uacute; ch&oacute; Scooby-Doo huyền thoại xoay quanh 5 nh&acirc;n vật ch&iacute;nh bao gồm Shaggy Rogers, Fred Jones, Daphne Blake, Velma Dinkley v&agrave; Scooby-Doo.&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><img alt="https://lh3.googleusercontent.com/AaFmYx50omnfCGYmeac6v8Y1Ds15i6FndmvvG0HraGpi5S7UE1CU1AdibkOuF76CwUHpxo6F7p8N8Lx8UFeJR6iXGBWPUX-OGg4yajYtlA_IhV9FjRSmqMjG1x7J41bFGwA82vTS" data-custom="AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQANAffGEYJU1KsS8ncFEZrW8%3D" originalsrc="cid:image004.jpg@01D64EE8.F951B8B0" src="https://mail.betacorp.vn/owa/service.svc/s/GetFileAttachment?id=AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQANAffGEYJU1KsS8ncFEZrW8%3D&amp;X-OWA-CANARY=BOSCCGG_nkKSKCBpbAn8L6VDHrjGHNgIekqECthtWQDqOyq5QTUp6f0QMqSXedIKAnCPsnUBtWw." style="box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 0px !important; max-width: 100%; width: 545px; height: 224px;" /></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: center; border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">Ch&uacute; ch&oacute; Scooby-Doo</i></font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">Scooby-Doo vốn l&agrave; ch&uacute; ch&oacute; thuộc giống Great Dane, l&agrave; th&uacute; cưng, cũng l&agrave; người bạn th&acirc;n thiết của Shaggy. Đ&acirc;y cũng l&agrave; ch&uacute; ch&oacute; đặc biệt c&oacute; khả năng n&oacute;i tiếng người d&ugrave; chỉ l&agrave; một v&agrave;i c&acirc;u từ chưa trọn vẹn. Trong bộ phim mới nhất chuẩn bị ra mắt, rất c&oacute; thể th&acirc;n phận thực sự của Scooby-Doo sẽ được h&eacute; lộ.&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><img alt="https://lh3.googleusercontent.com/Pf7ivx6LI53_4BrxACPm7YF1MA5OnsuUUdIZFJIvr8roBdob7Qxke-6yw1BK-5PHLfWR31N58h7gVBG0TKrc9vWjoLS-__m1BqmZyMySus3tWEbyQdwwtXd4vLLk5TWyJIo07JiH" data-custom="AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAKfjtSoaBXdPnGbtzTykHRM%3D" originalsrc="cid:image005.jpg@01D64EE8.F951B8B0" src="https://mail.betacorp.vn/owa/service.svc/s/GetFileAttachment?id=AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAKfjtSoaBXdPnGbtzTykHRM%3D&amp;X-OWA-CANARY=ZU9VE9pnVUuNV13xVvhLuQd407jGHNgIRhQBdjq66aKfWsQrLby7rzrnIKCgmUxmitrumJoHKp0." style="box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 0px !important; max-width: 100%; width: 545px; height: 238px;" /></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: center; border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">Scooby-Doo v&agrave; Shaggy</i></font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">Norville Rogers, t&ecirc;n th&acirc;n mật l&agrave; Shaggy l&agrave; một anh ch&agrave;ng ham ăn, ham chơi, c&oacute; phần nh&aacute;t gan v&agrave; nh&iacute; nhố. C&acirc;u n&oacute;i &lsquo;th&aacute;nh nh&acirc;n đ&atilde;i kẻ kh&ugrave; khờ&rdquo; kh&aacute; chuẩn x&aacute;c khi n&oacute;i về Shaggy c&ugrave;ng th&uacute; cưng Scooby-Doo của m&igrave;nh. Kh&ocirc;ng c&oacute; khả năng n&agrave;o nổi trội nhưng bộ đ&ocirc;i lầy lội số hai kh&ocirc;ng ai số một n&agrave;y lu&ocirc;n &ldquo;t&igrave;nh cờ&rdquo; xuất hiện đ&uacute;ng nơi, đ&uacute;ng thời điểm, v&agrave; đ&oacute;ng vai tr&ograve; quan trọng khi giải quyết c&aacute;c vụ &aacute;n kh&oacute; nhằn.&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><img alt="https://lh5.googleusercontent.com/NN-T2YV2GPpXK9bjJZVDp2VP2bm9RJJove6N27pVZLt_KZmepqy5hNJX6STxKSkdpZv1da9t0ZoOCxxuEifvjqWZVNv-B31Qh6DlHJdYT4Ayl2nNPioRlj9yuCa-X-9wMQQyhTAi" data-custom="AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAK3ndjqItJNGmuOafJCqVsI%3D" originalsrc="cid:image006.jpg@01D64EE8.F951B8B0" src="https://mail.betacorp.vn/owa/service.svc/s/GetFileAttachment?id=AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAK3ndjqItJNGmuOafJCqVsI%3D&amp;X-OWA-CANARY=ZU9VE9pnVUuNV13xVvhLuQd407jGHNgIRhQBdjq66aKfWsQrLby7rzrnIKCgmUxmitrumJoHKp0." style="box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 0px !important; max-width: 100%; width: 545px; height: 223px;" /></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: center; border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">Fred Jone hồi b&eacute; trong đồ h&oacute;a trang Halloween&nbsp;</i></font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">Fred Jone, c&ograve;n gọi l&agrave; Freddie c&oacute; vai tr&ograve; như một thủ lĩnh của nh&oacute;m. V&agrave; giống như bộ trong phục Halloween cậu mặc khi c&ograve;n nhỏ, Freddie được m&ocirc; tả như một hiệp sĩ, lu&ocirc;n xuất hiện mỗi khi người kh&aacute;c cần. Trong bộ phim điện ảnh&nbsp;<a href="https://betacineplex.vn/chi-tiet-phim.htm?gf=95697b9a-fa09-4a89-bafb-d3a6467df038" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;"><b style="box-sizing: border-box;"><i style="box-sizing: border-box;">Cuộc Phi&ecirc;u Lưu Của Scooby-Doo</i></b></a>, g&oacute;p giọng lồng tiếng cho Fred Jone l&agrave; Zac Efron - ng&ocirc;i sao của&nbsp;</font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">High School Musical</i></font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">&nbsp;v&agrave;&nbsp;</font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">The Greatest Showman.</i></font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><img alt="https://lh6.googleusercontent.com/lQt3UnMHDjl_wN2qd9eBRu3pG6515bLHCfc8T2DfJ9lfb_wjwAw4NTUVeBk4uXy4VMv3ccHcBAQ6lC2bz_H0IWJylQzfIaXLyGm5_ODIJR2cbUplFBBfWW7RVr4aAg_9zEzcxSx8" data-custom="AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAJGsmNjcsgFPkGVNAEhk34E%3D" originalsrc="cid:image007.jpg@01D64EE8.F951B8B0" src="https://mail.betacorp.vn/owa/service.svc/s/GetFileAttachment?id=AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAJGsmNjcsgFPkGVNAEhk34E%3D&amp;X-OWA-CANARY=ZU9VE9pnVUuNV13xVvhLuQd407jGHNgIRhQBdjq66aKfWsQrLby7rzrnIKCgmUxmitrumJoHKp0." style="box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 0px !important; max-width: 100%; width: 545px; height: 228px;" /></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: center; border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">Daphne - Fred - Velma</i></font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">Trong khi đ&oacute;, kh&ocirc;ng chỉ nổi bật với vẻ ngo&agrave;i đ&aacute;ng y&ecirc;u, ngọt ng&agrave;o, Daphne Blake c&ograve;n l&agrave; c&ocirc; g&aacute;i th&ocirc;ng minh, đầy nhiệt huyết. Người lồng tiếng cho nh&acirc;n vật - nữ diễn vi&ecirc;n Amanda Seyfried chia sẻ: &ldquo;Ở Daphne lu&ocirc;n to&aacute;t l&ecirc;n sự tin cậy. C&ocirc; lu&ocirc;n cố gắng thấu hiểu v&agrave; kh&ocirc;ng bao giờ chỉ tr&iacute;ch người kh&aacute;c&rdquo;.&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><img alt="https://lh5.googleusercontent.com/tpr4RYAtrX94O7BHb4JHteU0_h6a0ft-0AklkwZxNkfsDEQYXU41ZiVFhj6_OlH4cComtfM61jate9zxFvJbv1iz5E_E2OCO09TcuhsI2NT1vmTh478a0It-9xrmkPz7IQCTd3FV" data-custom="AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAGPzwWh3tPxNsGaopRwrrxk%3D" originalsrc="cid:image008.jpg@01D64EE8.F951B8B0" src="https://mail.betacorp.vn/owa/service.svc/s/GetFileAttachment?id=AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAGPzwWh3tPxNsGaopRwrrxk%3D&amp;X-OWA-CANARY=ZU9VE9pnVUuNV13xVvhLuQd407jGHNgIRhQBdjq66aKfWsQrLby7rzrnIKCgmUxmitrumJoHKp0." style="box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 0px !important; max-width: 100%; width: 545px; height: 246px;" /></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: center; border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">Velma Dinkley</i></font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">Đ&oacute;ng vai tr&ograve; như &ldquo;bộ n&atilde;o&rdquo; của đội l&agrave; Velma Dinkley, thường xuất hiện trong trang phục m&agrave;u cam c&ugrave;ng cặp cặp k&iacute;nh cận. Velma th&ocirc;ng minh, tự tin v&agrave; lu&ocirc;n biết tận dụng kiến thức v&agrave; tư duy của m&igrave;nh trong bất cứ ho&agrave;n cảnh n&agrave;o.&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><b style="box-sizing: border-box;">Tương lai của một vũ trụ điện ảnh mới</b></font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">B&ecirc;n cạnh d&agrave;n nh&acirc;n vật ch&iacute;nh quen thuộc, bộ phim sẽ c&oacute; sự g&oacute;p mặt của c&aacute;c nh&acirc;n vật thuộc thế giới hoạt h&igrave;nh Hanna-Barbera như si&ecirc;u anh h&ugrave;ng Blue Falcon v&agrave; ch&uacute; ch&oacute; nửa robot c&oacute; t&ecirc;n Dynomutt. Blue Falcon c&ugrave;ng Dynomutt sẽ l&agrave; người đồng h&agrave;nh, đồng minh quan trọng của nh&oacute;m Scooby-Doo trong nhiệm vụ ngăn chặn &acirc;m mưu giải ph&oacute;ng con ch&oacute; ma Cerberus v&agrave; giải cứu Thế giới.&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><img alt="https://lh4.googleusercontent.com/B8Bg8LKmURu2XPOom-UVgf5KXjYxouv6U8QJhYn-DBbR8cyeshDDqLlKjYEX0ffH1vnUq6AFyeYMh1Ga8pdi2XKXCPgwV__OPURDWGJYYRn6dPcLBd1Xl8-E95F_n6X3w6RVTnOZ" data-custom="AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAEivJ2zERMJNvaTNS7RDvts%3D" originalsrc="cid:image009.jpg@01D64EE8.F951B8B0" src="https://mail.betacorp.vn/owa/service.svc/s/GetFileAttachment?id=AAMkAGNlYTU3MWYxLTgwMWMtNDBhOC1iODhmLTk0Yzc2YWI0YWE2NgBGAAAAAACLNr8NlpTyR5IysaMuzMsJBwDBLwZDGwIYTqgI20rlPDamAAAAAAEMAADBLwZDGwIYTqgI20rlPDamAAAAAAJGAAABEgAQAEivJ2zERMJNvaTNS7RDvts%3D&amp;X-OWA-CANARY=ZU9VE9pnVUuNV13xVvhLuQd407jGHNgIRhQBdjq66aKfWsQrLby7rzrnIKCgmUxmitrumJoHKp0." style="box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 0px !important; max-width: 100%; width: 545px; height: 546px;" /></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: center; border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><i style="box-sizing: border-box;">Shaggy - Blue Falcon - Scooby - Dynomutt</i></font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">&nbsp;</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;">V&agrave; rất c&oacute; thể,&nbsp;<a href="https://betacineplex.vn/chi-tiet-phim.htm?gf=95697b9a-fa09-4a89-bafb-d3a6467df038" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;"><b style="box-sizing: border-box;"><i style="box-sizing: border-box;">Cuộc Phi&ecirc;u Lưu của Scooby-Doo</i></b></a></font><font color="black" face="Arial,sans-serif" style="box-sizing: border-box;"><a href="https://betacineplex.vn/chi-tiet-phim.htm?gf=95697b9a-fa09-4a89-bafb-d3a6467df038" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">&nbsp;</a>ch&iacute;nh l&agrave; vi&ecirc;n gạch đầu ti&ecirc;n để x&acirc;y n&ecirc;n một vũ trụ điện ảnh mới với rất nhiều gương mặt từ thế giới hoạt h&igrave;nh Hanna-Barbera, vốn quen thuộc với đ&ocirc;ng đảo kh&aacute;n giả như gia đ&igrave;nh Flintstone, ch&uacute; ch&oacute; Droopy hay thậm ch&iacute; l&agrave; Tom v&agrave; Jerry.</font></font></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<font face="Calibri,sans-serif" size="2" style="box-sizing: border-box;"><a href="https://betacineplex.vn/chi-tiet-phim.htm?gf=95697b9a-fa09-4a89-bafb-d3a6467df038" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;"><font color="red" face="Arial,sans-serif" style="box-sizing: border-box;"><b style="box-sizing: border-box;">SCOOB!</b></font></a><font face="Arial,sans-serif" style="box-sizing: border-box;"><b style="box-sizing: border-box;">&nbsp;-&nbsp;</b></font><font face="Arial,sans-serif" style="box-sizing: border-box;">tựa tiếng Việt:</font><a href="https://betacineplex.vn/chi-tiet-phim.htm?gf=95697b9a-fa09-4a89-bafb-d3a6467df038" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;"><font face="Arial,sans-serif" style="box-sizing: border-box;"><b style="box-sizing: border-box;">&nbsp;</b></font></a><font color="red" face="Arial,sans-serif" style="box-sizing: border-box;"><b style="box-sizing: border-box;"><a href="http://%3Ca%20href%3D%27betacineplex//4/95697b9a-fa09-4a89-bafb-d3a6467df038''%3ECu%E1%BB%99c%20Phi%C3%AAu%20L%C6%B0u%20C%E1%BB%A7a%20Scooby-Doo%3C/a%3E" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">CU&Ocirc;̣C PHI&Ecirc;U LƯU CỦA SCOOBY-DOO</a>&nbsp;</b></font><font face="Arial,sans-serif" style="box-sizing: border-box;">khởi chiếu tại Việt Nam từ</font><font face="Arial,sans-serif" style="box-sizing: border-box;"><b style="box-sizing: border-box;">&nbsp;10.07.2020.</b></font></font></p>
', 2, CAST(N'2020-07-01 09:38:57.423' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (3, N'545x415-1-175617-270620-23.jpg', N'XEM CÀNG ĐÔNG, GIÁ CÀNG RẺ, ƯU ĐÃI TỚI 60%', N'Từ ngày 28/06/2020 đến ngày 31/07/2020, hệ thống Beta Cinemas triển khai chương trình khuyến mãi: ĐI CÀNG ĐÔNG GIÁ CÀNG RẺ - ƯU ĐÃI LÊN ĐẾN 60%', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🥳<strong style="box-sizing: border-box;">&nbsp;ƯU Đ&Atilde;I CỰC ĐẶC BIỆT L&Ecirc;N TỚI 60% KHI ĐI XEM PHIM THEO NH&Oacute;M&nbsp;</strong>🥳</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻Đi nh&oacute;m 5 người&nbsp;🎁&nbsp;Tặng 2 t&uacute;i bắp lớn 44oz.<br style="box-sizing: border-box;" />
	👉🏻Đi nh&oacute;m 10 người&nbsp;🎁&nbsp;Tặng 5 t&uacute;i bắp&nbsp;lớn 44oz.<br style="box-sizing: border-box;" />
	👉🏻Đi nh&oacute;m 15 người&nbsp;🎁&nbsp;Tặng 9 t&uacute;i bắp&nbsp;lớn 44oz.<br style="box-sizing: border-box;" />
	👉🏻Đi nh&oacute;m 20 người&nbsp;🎁&nbsp;Tặng 15 t&uacute;i bắp&nbsp;lớn 44oz.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🤩&nbsp;<strong style="box-sizing: border-box;">ĐIỀU KIỆN &Aacute;P DỤNG&nbsp;</strong>🤩</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 &Aacute;p dụng với tất cả c&aacute;c k&ecirc;nh b&aacute;n h&agrave;ng của Beta Cinemas (POS, Web, App)</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 Được &aacute;p dụng đồng thời c&ugrave;ng c&aacute;c CTKM kh&aacute;c</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 Được &aacute;p dụng đối với c&aacute;c suất chiếu đặc biệt v&agrave; phim khởi chiếu sớm.&#39;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 Chỉ &aacute;p dụng cho từng giao dịch, kh&ocirc;ng gộp nhiều giao dịch.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 Chỉ &aacute;p dụng với kh&aacute;ch h&agrave;ng l&agrave; th&agrave;nh vi&ecirc;n của Beta Cinemas.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 Kh&ocirc;ng &aacute;p dụng DUY NHẤT ng&agrave;y MAD SALE DAY h&agrave;ng th&aacute;ng</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	💥&nbsp;Rủ &ldquo;đồng bọn&rdquo; c&agrave;ng đ&ocirc;ng, gi&aacute; v&eacute; c&agrave;ng hấp dẫn! Li&ecirc;n hệ ngay Beta để được tư vấn nh&eacute;!&nbsp;Fanpage Beta Cineplex:&nbsp;<a href="https://www.facebook.com/betacineplex/" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">https://www.facebook.com/betacineplex</a></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<strong style="box-sizing: border-box;">📲HOTLINE ĐẶT V&Eacute; NH&Oacute;M📲</strong></p>
<ul style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA TH&Aacute;I NGUY&Ecirc;N - Ms. Linh&nbsp;&nbsp; &nbsp;- 038 606 7253</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA BI&Ecirc;N H&Ograve;A - Mr. Tuấn - 034 779 7960</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA THANH XU&Acirc;N - Mr. Giang - 098 666 14 12</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA MỸ Đ&Igrave;NH - Ms. Nguyệt - 036 346 0579</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA THANH H&Oacute;A - Ms. Phượng - 094 505 20 00</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA BẮC GIANG- Mr. T&acirc;m - 096 850 31 86</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA LONG XUY&Ecirc;N&nbsp;&nbsp; &nbsp;- Mr. Sang - 094 485 54 93</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA ĐAN PHƯỢNG - Ms. Th&uacute;y - 097 291 72 59</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA NHA TRANG - Mr. Nam - 092 801 03 89</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA PH&Uacute; MỸ - Hotline 091 644 4010</li>
</ul>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<em style="box-sizing: border-box;">*Lưu &yacute;: Nếu bạn đi nh&oacute;m tr&ecirc;n 8 người, h&atilde;y li&ecirc;n hệ với Beta để được giữ chỗ đẹp nhất cạnh nhau nha&nbsp;</em>🥰&nbsp;</p>
', 1, CAST(N'2020-07-03 14:29:13.113' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (4, N'545x415-1-181555-230620-44.jpg', N'CÓ VÍ AIRPAY, ĐẶT VÉ BETA LIỀN NGAY!', N'GIAO DỊCH NGAY, NHẬN QUÀ LIỀN TAY! 🔥🔥', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	😭&nbsp;Cuối th&aacute;ng m&agrave; t&uacute;i tiền trống vắng nhưng vẫn muốn đi xem phim? Kh&ocirc;ng sao, v&igrave; từ nay bạn đ&atilde; c&oacute; thể đặt v&eacute; xem phim tại BETA Cinemas qua V&iacute; điện tử AirPay với mức HO&Agrave;N TIỀN &quot;si&ecirc;u khủng&quot; l&ecirc;n tới 20%.&nbsp;<br style="box-sizing: border-box;" />
	<br style="box-sizing: border-box;" />
	🌟&nbsp;Từ 00h00 ng&agrave;y 24/06/2020 kh&aacute;ch h&agrave;ng c&oacute; thể mua v&eacute; phim qua website / mobile app của Beta v&agrave; thanh to&aacute;n qua v&iacute; AIRPAY.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🌟&nbsp;Thời gian: ng&agrave;y 1/7 - 30/9/2020.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🌟&nbsp;&nbsp;Ho&agrave;n tiền 20% tối đa 30k .</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🌟&nbsp; Mỗi kh&aacute;ch h&agrave;ng được hưởng khuyến m&atilde;i tối đa 9 lần.<br style="box-sizing: border-box;" />
	<br style="box-sizing: border-box;" />
	NHANH TAY ĐẶT GI&Aacute; ĐỂ NHẬN ƯU Đ&Atilde;I &quot;N&Oacute;NG HỔI&quot; CẢ NH&Agrave; ƠI!!&nbsp;🤩<br style="box-sizing: border-box;" />
	<br style="box-sizing: border-box;" />
	💥Khi bạn cần - Beta c&oacute;, khi bạn gặp kh&oacute; - Beta lo!&nbsp;💥<br style="box-sizing: border-box;" />
	<a data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}" href="https://business.facebook.com/hashtag/beta?epa=HASHTAG" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">#BETA</a>&nbsp;<a data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}" href="https://business.facebook.com/hashtag/giatu40k?epa=HASHTAG" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">#GIATU40K</a>&nbsp;<a data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}" href="https://business.facebook.com/hashtag/airpay?epa=HASHTAG" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">#AIRPAY</a>&nbsp;<a data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}" href="https://business.facebook.com/hashtag/airpayvn?epa=HASHTAG" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">#AIRPAYVN</a></p>
', 1, CAST(N'2020-07-03 14:33:14.827' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (5, N'545x415-092048-220620-60.jpg', N'ĂN TẸT GA - ĐỒNG GIÁ 10K', N'[CHẤN ĐỘNG] Ưu đãi như ý, nhận ngay kẻo phí: Từ ngày 11/06 đến 30/06 Beta Cineplex triển khai chương trình ĂN TẸT GA - ĐỒNG GIÁ 10K tại tất cả các rạp. Nhanh tay chớp ngay ưu đãi thôi nào!!', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	⭐️&nbsp;Từ ng&agrave;y&nbsp;<strong style="box-sizing: border-box;">11/06/2020 - 30/06/2020</strong>, hệ thống rạp Beta Cineplex triển khai chương tr&igrave;nh khuyến mại đồng gi&aacute;&nbsp;<strong style="box-sizing: border-box;">10K</strong>&nbsp;cho tất cả c&aacute;c sản phẩm ở quầy Concessions (Kh&ocirc;ng bao gồm Combo, Bắp, Nước, Đồ pha chế. Ri&ecirc;ng với kh&ocirc; g&agrave; chạy gi&aacute; khuyến mại cũ 28K)&nbsp;🍊 🍋</p>
<p dir="ltr" role="presentation" style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	😍 Đến rạp&nbsp;hưởng ưu đ&atilde;i ngay th&ocirc;i!&nbsp;😍&nbsp;</p>
<p dir="ltr" role="presentation" style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🔸&nbsp;<em style="box-sizing: border-box;">Chương tr&igrave;nh &aacute;p dụng với tất cả c&aacute;c kh&aacute;ch h&agrave;ng của Beta Cinema (Kh&ocirc;ng nhất thiết phải mua v&eacute;)!</em><br style="box-sizing: border-box;" />
	<br style="box-sizing: border-box;" />
	<strong style="box-sizing: border-box;">🍸 ĂN UỐNG THẢ GA, CHẲNG LO VỀ GI&Aacute; TẠI #BETA&nbsp;🍹</strong></p>
', 1, CAST(N'2020-07-03 14:36:17.317' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (6, N'545x415-170439-290520-40.jpg', N'BẮP RANG BƠ ONLINE BETA - ĐÃ CÓ MẶT TRÊN NOW & GRAB FOOD', N'🚴‍♂#BỎNG_ONLINE_BETA CHÍNH THỨC CÓ MẶT TRÊN NOW & GRAB FOOD👩‍🍳👨‍🍳

 

Ở nhà "cày" phim, thèm bắp rang bơ thì phải làm thế nào?😱

 

⏰ Đơn giản thôi, vì giờ đây, Beta chính thức triển khai #BÁN_BẮP_ONLINE trên hệ thống NOW & GRAB FOOD 👏👏👏', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<strong style="box-sizing: border-box;">🤤 2 loại bộ kit nổ bắp rang bơ &quot;huyền thoại&quot;&nbsp;cho c&aacute;c bạn t&ugrave;y chọn:</strong></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	⚡ Mini Popcorn kit 100gr (gi&aacute; chỉ 40k):&nbsp;100gr bắp hạt, bơ Golden Olina với 2 vị: cheese &amp; caramen.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	⚡⚡ Big Popcorn kit 500gr (gi&aacute; 200k)<em style="box-sizing: border-box;">:</em>&nbsp;500gr bắp hạt, bơ Golden Onlina, t&ugrave;y chọn 1 trong 2 pack:</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	- Pack 1 gồm 5 vị: Caramel, spicy cheese, green tea, salted egg, tomato</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	- Pack 2 gồm 5 vị: Cheese, hot&amp;spicy chicken, wasabi cheese, chocolate, seaweed</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🍿 Ngo&agrave;i ra vẫn c&oacute; th&ecirc;m bắp nổ sẵn với gi&aacute; #45k, c&ugrave;ng với c&aacute;c combo v&agrave; vị bắp&nbsp;đa dạng cho bạn chọn ri&ecirc;ng với nhiều loại đồ uống đi k&egrave;m như&nbsp;Pepsi/7Up/Mirinda&nbsp;tươi&nbsp;đồng gi&aacute; #15k!</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	C&aacute;c bạn chỉ cần ở nh&agrave;, gh&eacute; thăm gian h&agrave;ng #BETA_BẮP_RANG_BƠ_ONLINE tr&ecirc;n NOW hoặc GRAB FOOD, team Beta sẽ ship tận cổng nh&agrave; nh&eacute;ee :3</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	❤ C&Ugrave;NG ĐẶT ĐI CHỜ CHI❤&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<em style="box-sizing: border-box;">*Chương tr&igrave;nh &aacute;p dụng tại khu vực H&agrave; Nội &amp; Bi&ecirc;n H&ograve;a, Đồng Nai từ ng&agrave;y 26/4/2020*</em></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	#BetaCinemas #Gi&aacute;từ40k #ởnh&agrave;cũngvui #ởnh&agrave;l&agrave;nhất</p>
', 1, CAST(N'2020-07-03 14:37:35.520' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (7, N'545x415-beta-zalo-164522-090520-44.jpg', N'GIẢM 50% KHI MUA 2 VÉ PHIM BETA TRÊN ZALO 🔥', N'Mừng rạp mở lại, nhận ngay ưu đãi cực khủng đến từ Zalo cho lần đầu tiên mua vé chỉ với 3 bước', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	1️⃣: TÌM TIX trên khung t&igrave;m kiếm của ZALO HOẶC click vào đây để mua vé:&nbsp;<a href="https://bit.ly/muavetrenZalo?fbclid=IwAR1yI_p9UvslihkK3lWIfYS_vgmVLW3tFSgcSA2yOvIDAcMHBG5sxBPcbiE" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;" target="_blank">http://bit.ly/muavetrenZalo</a><br style="box-sizing: border-box;" />
	2️⃣: Mua từ 02 vé tại Beta Cinemas.<br style="box-sizing: border-box;" />
	3️⃣: Tại màn hình thanh toán chọn &quot;Giảm 50% khi mua 2 vé&quot;.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	*Áp dụng cho khách hàng lần đầu tiên mua vé trên Zalo.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉Lưu ý:<br style="box-sizing: border-box;" />
	- Mỗi khách hàng được hưởng ưu đãi 01 lần.<br style="box-sizing: border-box;" />
	- Kh&ocirc;ng &aacute;p dụng cho kh&aacute;ch h&agrave;ng đ&atilde; từng mua v&eacute; tr&ecirc;n website/ứng dụng TIX hoặc mục V&eacute; Phim tr&ecirc;n ZaloPay.<br style="box-sizing: border-box;" />
	- &Aacute;p dụng tất cả c&aacute;c suất chiếu trong tuần.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;- Không áp dụng đồng thời với các CTKM hoặc CT Đồng giá khác của rạp hoặc các CT của TIX hoặc ZaloPay.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	- Gọi Hotline: 1900 54 54 36 nếu kh&ocirc;ng thấy khuyến m&atilde;i để được hướng dẫn trước khi x&aacute;c nhận thanh to&aacute;n.</p>
', 1, CAST(N'2020-07-03 14:38:49.207' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (8, N'545x415-202502-180420-80.jpg', N'Ở NHÀ XEM PHIM – BẮP XỊN RẠP SHIP', N'🚴‍♂Ở NHÀ XEM PHIM – BẮP XỊN RẠP SHIP👩‍🍳👨‍🍳

 

Mùa dịch Corona hạn chế ra ngoài, không thể đến rạp xem phim 🎥, lại quá thèm bắp rang bơ  thì phải làm thế nào?😱

 

⏰ Đừng lo, vì từ 26.04.2020, Beta chính thức triển khai #BÁN_BẮP_ONLINE 👏👏👏', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<strong style="box-sizing: border-box;">🤤 2 loại bộ kit nổ bắp rang bơ&nbsp;cho c&aacute;c bạn t&ugrave;y chọn:</strong></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	⚡ Mini Popcorn kit 100gr (gi&aacute; chỉ 40k):&nbsp;100gr bắp hạt, bơ Golden Olina với 2 vị: cheese &amp; caramen.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	⚡⚡ Big Popcorn kit 500gr (gi&aacute; 200k)<em style="box-sizing: border-box;">:</em>&nbsp;500gr bắp hạt, bơ Golden Onlina, t&ugrave;y chọn 1 trong 2 pack:</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	- Pack 1 gồm 5 vị: Caramel, spicy cheese, green tea, salted egg, tomato</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	- Pack 2 gồm 5 vị: Cheese, hot&amp;spicy chicken, wasabi cheese, chocolate, seaweed</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🍿Ngo&agrave;i ra vẫn c&oacute; th&ecirc;m bắp nổ sẵn với gi&aacute;&nbsp;<a data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}" href="https://www.facebook.com/hashtag/45k?source=feed_text&amp;epa=HASHTAG" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">45k</a>, Pepsi/7Up/Mirinda&nbsp;<a data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}" href="https://www.facebook.com/hashtag/t%C6%B0%C6%A1i?source=feed_text&amp;epa=HASHTAG" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">tươi</a>&nbsp;đồng gi&aacute;&nbsp;<a data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}" href="https://www.facebook.com/hashtag/15k?source=feed_text&amp;epa=HASHTAG" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">15k</a>, c&ugrave;ng nhiều loại đồ uống hấp dẫn kh&aacute;c.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	C&aacute;c bạn chỉ cần ở nh&agrave;, alo hotline 0934.632.682 hoặc inbox fanpage, team Beta sẽ ship tận cổng nh&agrave; nh&eacute;ee</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	❤ C&Ugrave;NG ĐẶT ĐI CHỜ CHI❤&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<em style="box-sizing: border-box;">*Chương tr&igrave;nh &aacute;p dụng tại khu vực H&agrave; Nội &amp; Bi&ecirc;n H&ograve;a, Đồng Nai từ ng&agrave;y 26/4/2020*</em></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	#BetaCinemas #Gi&aacute;từ40k #ởnh&agrave;cũngvui #ởnh&agrave;l&agrave;nhất</p>
', 1, CAST(N'2020-07-03 14:39:37.673' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (9, N'kxn-183811-270620-77.png', N'Liệu điện ảnh Hàn Quốc sẽ có thêm một Parasite thứ hai?', N'[ REVIEW PHIM KẺ XÂM NHẬP ]', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	&Ocirc;i giồi &ocirc;i c&aacute;c con người c&ocirc; đơn nửa năm nay chưa ra rạp ơi. Ra ngay mua một v&eacute;&nbsp;<a href="https://betacineplex.vn/chi-tiet-phim.htm?gf=438e5505-cf6b-4ffa-8045-0c6f0b8f4077" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">Kẻ x&acirc;m nhập</a>&nbsp;đi ạ!!! Phim t&acirc;m l&yacute; kinh dị đỉnh nhất từ đầu năm đến giờ thật sự. Em vừa xem&nbsp;vừa r&eacute;n ơi l&agrave; r&eacute;n, kh&ocirc;ng thể đo&aacute;n được t&igrave;nh tiết tiếp theo l&agrave; g&igrave; cả huhu...</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Phim chống chỉ định cho mấy mẹ hay&nbsp;bị bệnh tim v&agrave; chủ đ&iacute;ch v&agrave;o rạp để h&ocirc;n h&iacute;t.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Nội dung phim kể về một gia đ&igrave;nh đ&atilde; lạc mất con g&aacute;i từ l&acirc;u. Tận 30 năm sau, bỗng một con mẹ ở đ&acirc;u chui ra trưng c&aacute;i giấy x&eacute;t nghiệm ADN. Cả nh&agrave; mừng qu&aacute; đ&oacute;n mẻ về, thế l&agrave; chỉ một th&aacute;ng sau. Mẻ thay đổi cơ cấu cả nh&agrave;, thay hết to&agrave;n bộ nh&acirc;n sự đi k&egrave;m với t&agrave; thuật tẩy n&atilde;o. Khiến kh&ocirc;ng c&ograve;n ai tỉnh t&aacute;o,thậm ch&iacute; nam ch&iacute;nh - con trai trong nh&agrave; cũng bắt đầu hoang mang về nhận thức của m&igrave;nh.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Đ&acirc;y l&agrave; một phim c&oacute; &yacute; tưởng rất hay, pha trộn giữa t&acirc;m l&yacute; v&agrave; kinh dị một c&aacute;ch ho&agrave;n chỉnh. C&aacute;c t&igrave;nh tiết được sắp xếp hợp l&yacute; v&agrave; lu&ocirc;n để lại một c&aacute;i g&igrave; đ&oacute; b&iacute; ẩn kh&oacute; đo&aacute;n ra. Chưa kể, nhịp phim tuy rất nhanh nhưng mood phim lại qu&aacute; ức chế v&agrave; u tối, khiến người xem cứ phải căng n&atilde;o ra m&agrave; đo&aacute;n. Nhưng mọi thứ đều đ&atilde; được &eacute;m tới cuối. Kh&ocirc;ng một ai đo&aacute;n được g&igrave; cả.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	&Acirc;m thanh trong phim l&agrave;m gợi nhớ đến Hereditary, một si&ecirc;u phẩm kinh dị năm 2018. Những tiếng động, những đoạn nhạc khi tới cao tr&agrave;o đều mang sự quỷ qu&aacute;i đ&aacute;ng kinh sợ khiến người xem phải nh&iacute;u m&agrave;y lo lắng. Kh&ocirc;ng chỉ lo cho nh&acirc;n vật m&agrave; lo cho cả tr&aacute;i tim của m&igrave;nh nữa.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Diễn xuất trong phim cũng rất ổn. Đ&uacute;ng l&agrave; diễn vi&ecirc;n H&agrave;n chưa bao giờ l&agrave;m người xem ho&agrave;i nghi về diễn xuất ạ. Mỗi cảnh của Song Ji-hyo xuất hiện, với diễn xuất của chị đều l&agrave;m cho kh&ocirc;ng kh&iacute; th&ecirc;m phần u &aacute;m v&agrave; gh&ecirc; rợn.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Điểm trừ lại nằm ở cuối phim khi mọi thứ đ&atilde; qu&aacute; ho&agrave;n hảo th&igrave; c&aacute;i kết lại c&oacute; phần thua k&eacute;m hơn nhưng g&igrave; phim đ&atilde; x&acirc;y dựng từ ban đầu, chưa đủ &eacute;p ph&ecirc; với người xem.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	T&oacute;m lại, đ&acirc;y vẫn l&agrave; phim đ&aacute;ng xem, cực đ&aacute;ng xem trong thời điểm n&agrave;y. N&ecirc;n đừng suy nghĩ nữa, h&atilde;y đi xem ngay đi!!! Phim hiện&nbsp;<a href="https://betacineplex.vn/chi-tiet-phim.htm?gf=438e5505-cf6b-4ffa-8045-0c6f0b8f4077" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">đang chiếu</a>&nbsp;tại rạp nhe.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	<em style="box-sizing: border-box;">Nguồn: Cuồng phim - Review</em></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	KẺ X&Acirc;M NHẬP - Đang chiếu tại&nbsp;<a data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}" href="https://www.facebook.com/hashtag/beta?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARDkC8gL2pPAKvXUcmsHmmzv-X4YKnn3R5wGT3hh7I0hEUAvKgfBO0J7B4UHTnTsrUHc3dDO5PtgDmqWH2kXzGGH6hZlM4Y0NmwjRhlS0YxxUEVu5kwtEFMC6exZFnRGkR5dGiyCUmaKhqX_nTS4T3hNNHs1GMkUPSqGr1wSupc3Fw5L69g6jCZEydz_z2gVdqiFwla5SZXWU_aYf_9DGXNFrkJvk3WqP3aSz-app4alywqqtN380GczOiEcDMSX0sjlNLo8tPZyGfQegcWWB2Az5B9OE2khm2bxJSvGnaTDwMxKW2uICJA7imfWPZFVnrqJGlNgsLuSwq0JniWavhQFvEQUcqIqA9pyXRoX5UpWPiWrCdsjsrUVj0wtFuOZ8voMmUqDyOBAOD5CGON-HYFq52x22ww8kNiW-xSB0B2TVmi0yHSgCRB7f_DglAicktKy_yYxRWDp6y2x08fOsxDrFe3l8f7JAHdXZAF4cncoXDSsAFhwERTI-w&amp;__tn__=%2ANK-R" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">B</a><a href="https://www.facebook.com/betacineplex/" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">eta Cinemas</a>&nbsp;<a href="https://betacineplex.vn/gia-ve.htm" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">Gi&aacute; chỉ từ 40k</a></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Th&ocirc;ng tin chi tiết v&agrave; lịch chiếu&nbsp;<a href="https://betacineplex.vn/chi-tiet-phim.htm?gf=438e5505-cf6b-4ffa-8045-0c6f0b8f4077" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;" title="tại đây">tại đ&acirc;y</a></p>
', 2, CAST(N'2020-07-03 14:41:17.623' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (10, N'545x415-1-175617-270620-23.jpg', N'XEM CÀNG ĐÔNG, GIÁ CÀNG RẺ, ƯU ĐÃI TỚI 60%', N'Từ ngày 28/06/2020 đến ngày 31/07/2020, hệ thống Beta Cinemas triển khai chương trình khuyến mãi: ĐI CÀNG ĐÔNG GIÁ CÀNG RẺ - ƯU ĐÃI LÊN ĐẾN 60%', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🥳<strong style="box-sizing: border-box;">&nbsp;ƯU Đ&Atilde;I CỰC ĐẶC BIỆT L&Ecirc;N TỚI 60% KHI ĐI XEM PHIM THEO NH&Oacute;M&nbsp;</strong>🥳</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻Đi nh&oacute;m 5 người&nbsp;🎁&nbsp;Tặng 2 t&uacute;i bắp lớn 44oz.<br style="box-sizing: border-box;" />
	👉🏻Đi nh&oacute;m 10 người&nbsp;🎁&nbsp;Tặng 5 t&uacute;i bắp&nbsp;lớn 44oz.<br style="box-sizing: border-box;" />
	👉🏻Đi nh&oacute;m 15 người&nbsp;🎁&nbsp;Tặng 9 t&uacute;i bắp&nbsp;lớn 44oz.<br style="box-sizing: border-box;" />
	👉🏻Đi nh&oacute;m 20 người&nbsp;🎁&nbsp;Tặng 15 t&uacute;i bắp&nbsp;lớn 44oz.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🤩&nbsp;<strong style="box-sizing: border-box;">ĐIỀU KIỆN &Aacute;P DỤNG&nbsp;</strong>🤩</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 &Aacute;p dụng với tất cả c&aacute;c k&ecirc;nh b&aacute;n h&agrave;ng của Beta Cinemas (POS, Web, App)</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 Được &aacute;p dụng đồng thời c&ugrave;ng c&aacute;c CTKM kh&aacute;c</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 Được &aacute;p dụng đối với c&aacute;c suất chiếu đặc biệt v&agrave; phim khởi chiếu sớm.&#39;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 Chỉ &aacute;p dụng cho từng giao dịch, kh&ocirc;ng gộp nhiều giao dịch.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 Chỉ &aacute;p dụng với kh&aacute;ch h&agrave;ng l&agrave; th&agrave;nh vi&ecirc;n của Beta Cinemas.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉🏻 Kh&ocirc;ng &aacute;p dụng DUY NHẤT ng&agrave;y MAD SALE DAY h&agrave;ng th&aacute;ng</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	💥&nbsp;Rủ &ldquo;đồng bọn&rdquo; c&agrave;ng đ&ocirc;ng, gi&aacute; v&eacute; c&agrave;ng hấp dẫn! Li&ecirc;n hệ ngay Beta để được tư vấn nh&eacute;!&nbsp;Fanpage Beta Cineplex:&nbsp;<a href="https://www.facebook.com/betacineplex/" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">https://www.facebook.com/betacineplex</a></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<strong style="box-sizing: border-box;">📲HOTLINE ĐẶT V&Eacute; NH&Oacute;M📲</strong></p>
<ul style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA TH&Aacute;I NGUY&Ecirc;N - Ms. Linh&nbsp;&nbsp; &nbsp;- 038 606 7253</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA BI&Ecirc;N H&Ograve;A - Mr. Tuấn - 034 779 7960</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA THANH XU&Acirc;N - Mr. Giang - 098 666 14 12</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA MỸ Đ&Igrave;NH - Ms. Nguyệt - 036 346 0579</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA THANH H&Oacute;A - Ms. Phượng - 094 505 20 00</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA BẮC GIANG- Mr. T&acirc;m - 096 850 31 86</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA LONG XUY&Ecirc;N&nbsp;&nbsp; &nbsp;- Mr. Sang - 094 485 54 93</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA ĐAN PHƯỢNG - Ms. Th&uacute;y - 097 291 72 59</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA NHA TRANG - Mr. Nam - 092 801 03 89</li>
	<li style="box-sizing: border-box; border-radius: 0px !important;">
		BETA PH&Uacute; MỸ - Hotline 091 644 4010</li>
</ul>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<em style="box-sizing: border-box;">*Lưu &yacute;: Nếu bạn đi nh&oacute;m tr&ecirc;n 8 người, h&atilde;y li&ecirc;n hệ với Beta để được giữ chỗ đẹp nhất cạnh nhau nha&nbsp;</em>🥰&nbsp;</p>
', 2, CAST(N'2020-07-03 14:44:22.193' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (11, N'545x415-1-181555-230620-44.jpg', N'CÓ VÍ AIRPAY, ĐẶT VÉ BETA LIỀN NGAY!', N'GIAO DỊCH NGAY, NHẬN QUÀ LIỀN TAY! 🔥🔥', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	😭&nbsp;Cuối th&aacute;ng m&agrave; t&uacute;i tiền trống vắng nhưng vẫn muốn đi xem phim? Kh&ocirc;ng sao, v&igrave; từ nay bạn đ&atilde; c&oacute; thể đặt v&eacute; xem phim tại BETA Cinemas qua V&iacute; điện tử AirPay với mức HO&Agrave;N TIỀN &quot;si&ecirc;u khủng&quot; l&ecirc;n tới 20%.&nbsp;<br style="box-sizing: border-box;" />
	<br style="box-sizing: border-box;" />
	🌟&nbsp;Từ 00h00 ng&agrave;y 24/06/2020 kh&aacute;ch h&agrave;ng c&oacute; thể mua v&eacute; phim qua website / mobile app của Beta v&agrave; thanh to&aacute;n qua v&iacute; AIRPAY.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🌟&nbsp;Thời gian: ng&agrave;y 1/7 - 30/9/2020.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🌟&nbsp;&nbsp;Ho&agrave;n tiền 20% tối đa 30k .</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🌟&nbsp; Mỗi kh&aacute;ch h&agrave;ng được hưởng khuyến m&atilde;i tối đa 9 lần.<br style="box-sizing: border-box;" />
	<br style="box-sizing: border-box;" />
	NHANH TAY ĐẶT GI&Aacute; ĐỂ NHẬN ƯU Đ&Atilde;I &quot;N&Oacute;NG HỔI&quot; CẢ NH&Agrave; ƠI!!&nbsp;🤩</p>
', 2, CAST(N'2020-07-03 14:45:13.657' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (12, N'3759-1800-ve-163105-060320-98.jpg', N'Nắng 3-Thương Hiệu Phim Gia Đình Quen Thuộc Với Thông Điệp Đáng Nhớ', N'', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	Nhắc tới nắng một series phim về t&igrave;nh cảm gia đ&igrave;nh đ&atilde; ra mắt được tới phần thứ 3 với cố t truyện xoay quanh h&agrave;nh tr&igrave;nh trở th&agrave;nh người cha bất đắc dĩ của Kiều Minh Tuấn. Kh&ocirc;ng may trở th&agrave;nh nạn nh&acirc;n của mẹ con Quế Phương &quot;Khả Như&quot;&nbsp;v&agrave; b&eacute; &quot;Ng&acirc;n Chi&quot;. Xoay quanh c&acirc;u chuyện của Nắng 3 l&agrave; những tr&agrave;ng cười h&agrave;i hước, d&iacute; dỏm xen lẫn những b&agrave;i học đắt gi&aacute; lấy đi nước mắt của bất k&igrave; ai. Theo đ&aacute;nh gi&aacute; của nhiều kh&aacute;n giả qua suất chiếu sớm th&igrave; bộ phim c&oacute; cốt truyện kh&aacute; ổn v&agrave; logic&nbsp;ngay từ phần đầu. C&agrave;ng về sau nhịp&nbsp;phim c&agrave;ng chậm lại v&agrave; cũng l&agrave; phần lấy đi nước mắt của kh&aacute;n giả nhiều nhất</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); text-align: justify; border-radius: 0px !important;">
	May mắn thay, người xem đ&atilde; kịp thở ph&agrave;o nhẹ nh&otilde;m bới sự tung hứng v&ocirc; c&ugrave;ng ăn &yacute; giữa Kiều Minh Tuấn - Khả Như - B&eacute; Ng&acirc;n Chi. Diễn xuất nhập vai, điều khiển v&agrave; nắm bắt t&acirc;m l&yacute; nh&acirc;n vật kh&aacute; tốt đ&atilde; gi&uacute;p c&aacute;c diễn vi&ecirc;n tạo n&ecirc;n mắt x&iacute;ch, g&oacute;p phần x&acirc;u chuỗi cho bộ phim th&ecirc;m phần chặt chẽ.<br />
	<br />
	Về phần h&igrave;nh ảnh th&igrave; kh&aacute;n giả được chi&ecirc;u đ&atilde;i dưới nhiều g&oacute;c quay cận nh&acirc;n vật tốt hơn những phần trước kh&aacute; nhiều. M&agrave;u phim kh&aacute; tươi s&aacute;ng&nbsp;vui nhộn rất ph&ugrave; hợp cho cảm nhận về một phim khai th&aacute;c đề t&agrave;i t&igrave;nh cảm gia đ&igrave;nh vừa h&agrave;i hước lại kh&ocirc;ng k&eacute;m phần s&acirc;u lắng.<br style="box-sizing: border-box;" />
	<br style="box-sizing: border-box;" />
	Nh&igrave;n chung&nbsp;<a href="https://www.betacineplex.vn/chi-tiet-phim.htm?gf=02d0c8b4-60f9-4783-9dec-011aa3d72a0f" style="box-sizing: border-box; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">Nắng 3</a>&nbsp;l&agrave; một bộ phim dễ xem dễ rơi nước mắt bởi những th&ocirc;ng điệp gần gũi v&agrave; những gi&aacute; trị y&ecirc;u thương l&uacute;c n&agrave;o cũng tạo ra cảm x&uacute;c thật sự cho người xem. Ngo&agrave;i ra bộ phim c&ograve;n lập kỷ lục với số lượng suất chiếu sớm l&agrave; v&ocirc; đối ở thời điểm hiện tại với phim Việt(1800 suất chiếu sớm)<br style="box-sizing: border-box;" />
	<br style="box-sizing: border-box;" />
	<a href="betacineplex://5/1f0b7d55-9dd6-4c46-bd4d-3b50024d14ec" style="box-sizing: border-box; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">Nắng 3 - Lời Hứa Của Cha</a>&nbsp;sẽ chuẩn bị&nbsp;ra rạp tại&nbsp;<a href="betacineplex://5/1f0b7d55-9dd6-4c46-bd4d-3b50024d14ec" style="box-sizing: border-box; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">Beta Cinemas</a>&nbsp;v&agrave;o ng&agrave;y 6/3. H&atilde;y tới&nbsp;<a href="https://www.betacineplex.vn/home.htm" style="box-sizing: border-box; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">Beta Cinemas</a>&nbsp;c&ugrave;ng đ&oacute;n xem v&agrave; tận hưởng những giờ ph&uacute;t th&uacute; vị với một bộ phim về gia đ&igrave;nh đầy hứa hẹn n&agrave;y nh&eacute;&nbsp;💙💙</p>
', 2, CAST(N'2020-07-03 14:46:28.127' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (13, N'545x415-beta-zalo-164522-090520-44.jpg', N'GIẢM 50% KHI MUA 2 VÉ PHIM BETA TRÊN ZALO 🔥', N'Mừng rạp mở lại, nhận ngay ưu đãi cực khủng đến từ Zalo cho lần đầu tiên mua vé chỉ với 3 bước', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	1️⃣: TÌM TIX trên khung t&igrave;m kiếm của ZALO HOẶC click vào đây để mua vé:&nbsp;<a href="https://bit.ly/muavetrenZalo?fbclid=IwAR1yI_p9UvslihkK3lWIfYS_vgmVLW3tFSgcSA2yOvIDAcMHBG5sxBPcbiE" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;" target="_blank">http://bit.ly/muavetrenZalo</a><br style="box-sizing: border-box;" />
	2️⃣: Mua từ 02 vé tại Beta Cinemas.<br style="box-sizing: border-box;" />
	3️⃣: Tại màn hình thanh toán chọn &quot;Giảm 50% khi mua 2 vé&quot;.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	*Áp dụng cho khách hàng lần đầu tiên mua vé trên Zalo.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	👉Lưu ý:<br style="box-sizing: border-box;" />
	- Mỗi khách hàng được hưởng ưu đãi 01 lần.<br style="box-sizing: border-box;" />
	- Kh&ocirc;ng &aacute;p dụng cho kh&aacute;ch h&agrave;ng đ&atilde; từng mua v&eacute; tr&ecirc;n website/ứng dụng TIX hoặc mục V&eacute; Phim tr&ecirc;n ZaloPay.<br style="box-sizing: border-box;" />
	- &Aacute;p dụng tất cả c&aacute;c suất chiếu trong tuần.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;- Không áp dụng đồng thời với các CTKM hoặc CT Đồng giá khác của rạp hoặc các CT của TIX hoặc ZaloPay.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	- Gọi Hotline: 1900 54 54 36 nếu kh&ocirc;ng thấy khuyến m&atilde;i để được hướng dẫn trước khi x&aacute;c nhận thanh to&aacute;n.</p>
', 2, CAST(N'2020-07-03 14:47:34.570' AS DateTime))
INSERT [dbo].[tb_TinTuc] ([MaTinTuc], [AnhDaiDien], [TieuDe], [TomTatTin], [NoiDung], [MaLoaiTinTuc], [NgayThem]) VALUES (14, N'545x415-202502-180420-80.jpg', N'Ở NHÀ XEM PHIM – BẮP XỊN RẠP SHIP', N'🚴‍♂Ở NHÀ XEM PHIM – BẮP XỊN RẠP SHIP👩‍🍳👨‍🍳', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	M&ugrave;a dịch Corona hạn chế ra ngo&agrave;i, kh&ocirc;ng thể đến rạp xem phim 🎥, lại qu&aacute; th&egrave;m bắp rang bơ&nbsp; th&igrave; phải l&agrave;m thế n&agrave;o?😱</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	⏰ Đừng lo, v&igrave; từ 26.04.2020, Beta ch&iacute;nh thức triển khai #B&Aacute;N_BẮP_ONLINE 👏👏👏</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<strong style="box-sizing: border-box;">🤤 2 loại bộ kit nổ bắp rang bơ&nbsp;cho c&aacute;c bạn t&ugrave;y chọn:</strong></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	⚡ Mini Popcorn kit 100gr (gi&aacute; chỉ 40k):&nbsp;100gr bắp hạt, bơ Golden Olina với 2 vị: cheese &amp; caramen.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	⚡⚡ Big Popcorn kit 500gr (gi&aacute; 200k)<em style="box-sizing: border-box;">:</em>&nbsp;500gr bắp hạt, bơ Golden Onlina, t&ugrave;y chọn 1 trong 2 pack:</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	- Pack 1 gồm 5 vị: Caramel, spicy cheese, green tea, salted egg, tomato</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	- Pack 2 gồm 5 vị: Cheese, hot&amp;spicy chicken, wasabi cheese, chocolate, seaweed</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	🍿Ngo&agrave;i ra vẫn c&oacute; th&ecirc;m bắp nổ sẵn với gi&aacute;&nbsp;<a data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}" href="https://www.facebook.com/hashtag/45k?source=feed_text&amp;epa=HASHTAG" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">45k</a>, Pepsi/7Up/Mirinda&nbsp;<a data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}" href="https://www.facebook.com/hashtag/t%C6%B0%C6%A1i?source=feed_text&amp;epa=HASHTAG" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">tươi</a>&nbsp;đồng gi&aacute;&nbsp;<a data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}" href="https://www.facebook.com/hashtag/15k?source=feed_text&amp;epa=HASHTAG" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none; text-shadow: none; border-radius: 0px !important;">15k</a>, c&ugrave;ng nhiều loại đồ uống hấp dẫn kh&aacute;c.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	C&aacute;c bạn chỉ cần ở nh&agrave;, alo hotline 0934.632.682 hoặc inbox fanpage, team Beta sẽ ship tận cổng nh&agrave; nh&eacute;ee</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	❤ C&Ugrave;NG ĐẶT ĐI CHỜ CHI❤&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: SourceSansPro; font-size: 16px; background-color: rgb(248, 248, 248); border-radius: 0px !important;">
	<em style="box-sizing: border-box;">*Chương tr&igrave;nh &aacute;p dụng tại khu vực H&agrave; Nội &amp; Bi&ecirc;n H&ograve;a, Đồng Nai từ ng&agrave;y 26/4/2020*</em></p>
', 2, CAST(N'2020-07-03 14:48:17.730' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_TinTuc] OFF
SET IDENTITY_INSERT [dbo].[tb_TinhThanhPho] ON 

INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (1, N'An Giang')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (2, N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (3, N'Bắc Giang')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (4, N'Bắc Kạn')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (5, N'Bạc Liêu')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (6, N'Bắc Ninh')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (7, N'Bến Tre')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (8, N'Bình Định')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (9, N'Bình Dương')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (10, N'Bình Phước')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (11, N'Bình Thuận')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (12, N'Cà Mau')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (13, N'Cao Bằng')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (14, N'Đắk Lắk')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (15, N'Đắk Nông')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (16, N'Điện Biên')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (17, N'Đồng Nai')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (18, N'Đồng Tháp')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (19, N'Gia Lai')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (20, N'Hà Giang')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (21, N'Hà Nam')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (22, N'Hà Tĩnh')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (23, N'Hải Dương')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (24, N'Hậu Giang')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (25, N'Hòa Bình')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (26, N'Hưng Yên')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (27, N'Khánh Hòa')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (28, N'Kiên Giang')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (29, N'Kon Tum')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (30, N'Lai Châu')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (31, N'Lâm Đồng')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (32, N'Lạng Sơn')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (33, N'Lào Cai')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (34, N'Long An')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (35, N'Nam Định')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (36, N'Nghệ An')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (37, N'Ninh Bình')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (38, N'Ninh Thuận')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (39, N'Phú Thọ')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (40, N'Quảng Bình')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (41, N'Quảng Nam')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (42, N'Quảng Ngãi')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (43, N'Quảng Ninh')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (44, N'Quảng Trị')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (45, N'Sóc Trăng')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (46, N'Sơn La')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (47, N'Tây Ninh')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (48, N'Thái Bình')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (49, N'Thái Nguyên')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (50, N'Thanh Hóa')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (51, N'Thừa Thiên Huế')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (52, N'Tiền Giang')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (53, N'Trà Vinh')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (54, N'Tuyên Quang')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (55, N'Vĩnh Long')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (56, N'Vĩnh Phúc')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (57, N'Yên Bái')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (58, N'Phú Yên')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (59, N'Cần Thơ')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (60, N'Đà Nẵng')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (61, N'Hải Phòng')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (62, N'Hà Nội')
INSERT [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho], [TenTinhThanhPho]) VALUES (63, N'TP HCM')
SET IDENTITY_INSERT [dbo].[tb_TinhThanhPho] OFF
SET IDENTITY_INSERT [dbo].[tb_ThanhVien] ON 

INSERT [dbo].[tb_ThanhVien] ([MaThanhVien], [AnhDaiDien], [HoTen], [Email], [PassWord], [Sdt], [SoThe], [NgaySinh], [GioiTinh], [TrangThai], [MaXaPhuong]) VALUES (1, N'baymax.png', N'Trần Đức Soạn', N'tds@gmail.com', N'827ccb0eea8a706c4c34a16891f84e7b', N'0335715608', N'036099007701        ', CAST(N'1999-10-11 00:00:00.000' AS DateTime), 1, 1, 13)
SET IDENTITY_INSERT [dbo].[tb_ThanhVien] OFF
SET IDENTITY_INSERT [dbo].[tb_TheLoai] ON 

INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (1, N'Tâm lý')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (2, N'Hồi hộp')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (3, N'Kinh dị')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (4, N'Hoạt hình')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (5, N'Phiêu lưu')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (6, N'Âm nhạc')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (7, N'Tình cảm')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (8, N'Lãng mạn')
SET IDENTITY_INSERT [dbo].[tb_TheLoai] OFF
SET IDENTITY_INSERT [dbo].[tb_TrangThai] ON 

INSERT [dbo].[tb_TrangThai] ([MaTrangThai], [MoTa]) VALUES (1, N'Ghế trống')
INSERT [dbo].[tb_TrangThai] ([MaTrangThai], [MoTa]) VALUES (2, N'Ghế đang được giữ')
INSERT [dbo].[tb_TrangThai] ([MaTrangThai], [MoTa]) VALUES (3, N'Ghế đang chọn')
INSERT [dbo].[tb_TrangThai] ([MaTrangThai], [MoTa]) VALUES (4, N'Ghế đã bán')
INSERT [dbo].[tb_TrangThai] ([MaTrangThai], [MoTa]) VALUES (5, N'Ghế đã đặt trước')
SET IDENTITY_INSERT [dbo].[tb_TrangThai] OFF
SET IDENTITY_INSERT [dbo].[tb_XaPhuong] ON 

INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (1, N'Lê Văn Thiêm', 1)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (2, N'Mễ Trì', 14)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (3, N'Tân Lập', 3)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (4, N'Phương Liệt', 1)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (5, N'Điện Biên Phủ', 5)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (6, N'Nguyễn Văn Cừ', 6)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (7, N'Võ Thị Sáu', 7)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (8, N'Hùng Vương', 8)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (9, N'Hoàng Hoa Thám', 9)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (10, N'Quang Trung', 10)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (11, N'Lê Lợi', 11)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (12, N'Vạn Hạnh', 12)
INSERT [dbo].[tb_XaPhuong] ([MaXaPhuong], [TenXaPhuong], [MaQuanHuyen]) VALUES (13, N'Giao Thiện', 13)
SET IDENTITY_INSERT [dbo].[tb_XaPhuong] OFF
ALTER TABLE [dbo].[tb_BaoGia]  WITH CHECK ADD  CONSTRAINT [FK_tb_BaoGia_tb_DinhDang] FOREIGN KEY([MaDinhDang])
REFERENCES [dbo].[tb_DinhDang] ([MaDinhDang])
GO
ALTER TABLE [dbo].[tb_BaoGia] CHECK CONSTRAINT [FK_tb_BaoGia_tb_DinhDang]
GO
ALTER TABLE [dbo].[tb_BaoGia]  WITH CHECK ADD  CONSTRAINT [FK_tb_BaoGia_tb_Gia] FOREIGN KEY([MaGia])
REFERENCES [dbo].[tb_Gia] ([MaGia])
GO
ALTER TABLE [dbo].[tb_BaoGia] CHECK CONSTRAINT [FK_tb_BaoGia_tb_Gia]
GO
ALTER TABLE [dbo].[tb_BaoGia]  WITH CHECK ADD  CONSTRAINT [FK_tb_BaoGia_tb_KTG] FOREIGN KEY([MaKTG])
REFERENCES [dbo].[tb_KTG] ([MaKTG])
GO
ALTER TABLE [dbo].[tb_BaoGia] CHECK CONSTRAINT [FK_tb_BaoGia_tb_KTG]
GO
ALTER TABLE [dbo].[tb_BaoGia]  WITH CHECK ADD  CONSTRAINT [FK_tb_BaoGia_tb_LoaiGhe] FOREIGN KEY([MaLoaiGhe])
REFERENCES [dbo].[tb_LoaiGhe] ([MaLoaiGhe])
GO
ALTER TABLE [dbo].[tb_BaoGia] CHECK CONSTRAINT [FK_tb_BaoGia_tb_LoaiGhe]
GO
ALTER TABLE [dbo].[tb_DatCombo]  WITH CHECK ADD  CONSTRAINT [FK_tb_DatCombo_tb_Combo] FOREIGN KEY([MaCombo])
REFERENCES [dbo].[tb_Combo] ([MaCombo])
GO
ALTER TABLE [dbo].[tb_DatCombo] CHECK CONSTRAINT [FK_tb_DatCombo_tb_Combo]
GO
ALTER TABLE [dbo].[tb_DatCombo]  WITH CHECK ADD  CONSTRAINT [FK_tb_DatCombo_tb_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[tb_Ve] ([MaVe])
GO
ALTER TABLE [dbo].[tb_DatCombo] CHECK CONSTRAINT [FK_tb_DatCombo_tb_Ve]
GO
ALTER TABLE [dbo].[tb_DatGhe]  WITH CHECK ADD  CONSTRAINT [FK_tb_DatGhe_tb_SoGhe] FOREIGN KEY([SoGhe])
REFERENCES [dbo].[tb_SoGhe] ([SoGhe])
GO
ALTER TABLE [dbo].[tb_DatGhe] CHECK CONSTRAINT [FK_tb_DatGhe_tb_SoGhe]
GO
ALTER TABLE [dbo].[tb_DatGhe]  WITH CHECK ADD  CONSTRAINT [FK_tb_DatGhe_tb_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[tb_Ve] ([MaVe])
GO
ALTER TABLE [dbo].[tb_DatGhe] CHECK CONSTRAINT [FK_tb_DatGhe_tb_Ve]
GO
ALTER TABLE [dbo].[tb_DSVeDat]  WITH CHECK ADD  CONSTRAINT [FK_tb_DSVeDat_tb_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[tb_ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[tb_DSVeDat] CHECK CONSTRAINT [FK_tb_DSVeDat_tb_ThanhVien]
GO
ALTER TABLE [dbo].[tb_DSVeDat]  WITH CHECK ADD  CONSTRAINT [FK_tb_DSVeDat_tb_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[tb_Ve] ([MaVe])
GO
ALTER TABLE [dbo].[tb_DSVeDat] CHECK CONSTRAINT [FK_tb_DSVeDat_tb_Ve]
GO
ALTER TABLE [dbo].[tb_Ghe]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ghe_tb_LoaiGhe] FOREIGN KEY([MaLoaiGhe])
REFERENCES [dbo].[tb_LoaiGhe] ([MaLoaiGhe])
GO
ALTER TABLE [dbo].[tb_Ghe] CHECK CONSTRAINT [FK_tb_Ghe_tb_LoaiGhe]
GO
ALTER TABLE [dbo].[tb_Ghe]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ghe_tb_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[tb_Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[tb_Ghe] CHECK CONSTRAINT [FK_tb_Ghe_tb_Phong]
GO
ALTER TABLE [dbo].[tb_Ghe]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ghe_tb_SoGhe1] FOREIGN KEY([SoGhe])
REFERENCES [dbo].[tb_SoGhe] ([SoGhe])
GO
ALTER TABLE [dbo].[tb_Ghe] CHECK CONSTRAINT [FK_tb_Ghe_tb_SoGhe1]
GO
ALTER TABLE [dbo].[tb_Ghe]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ghe_tb_TrangThai] FOREIGN KEY([MaTrangThai])
REFERENCES [dbo].[tb_TrangThai] ([MaTrangThai])
GO
ALTER TABLE [dbo].[tb_Ghe] CHECK CONSTRAINT [FK_tb_Ghe_tb_TrangThai]
GO
ALTER TABLE [dbo].[tb_GiaVeDat]  WITH CHECK ADD  CONSTRAINT [FK_tb_GiaVeDat_tb_Gia] FOREIGN KEY([MaGia])
REFERENCES [dbo].[tb_Gia] ([MaGia])
GO
ALTER TABLE [dbo].[tb_GiaVeDat] CHECK CONSTRAINT [FK_tb_GiaVeDat_tb_Gia]
GO
ALTER TABLE [dbo].[tb_GiaVeDat]  WITH CHECK ADD  CONSTRAINT [FK_tb_GiaVeDat_tb_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[tb_Ve] ([MaVe])
GO
ALTER TABLE [dbo].[tb_GiaVeDat] CHECK CONSTRAINT [FK_tb_GiaVeDat_tb_Ve]
GO
ALTER TABLE [dbo].[tb_LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_tb_LichChieu_tb_KTG] FOREIGN KEY([MaKTG])
REFERENCES [dbo].[tb_KTG] ([MaKTG])
GO
ALTER TABLE [dbo].[tb_LichChieu] CHECK CONSTRAINT [FK_tb_LichChieu_tb_KTG]
GO
ALTER TABLE [dbo].[tb_LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_tb_LichChieu_tb_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[tb_Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[tb_LichChieu] CHECK CONSTRAINT [FK_tb_LichChieu_tb_Phim]
GO
ALTER TABLE [dbo].[tb_LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_tb_LichChieu_tb_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[tb_Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[tb_LichChieu] CHECK CONSTRAINT [FK_tb_LichChieu_tb_Phong]
GO
ALTER TABLE [dbo].[tb_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tb_NhanVien_tb_Rap] FOREIGN KEY([MaRap])
REFERENCES [dbo].[tb_Rap] ([MaRap])
GO
ALTER TABLE [dbo].[tb_NhanVien] CHECK CONSTRAINT [FK_tb_NhanVien_tb_Rap]
GO
ALTER TABLE [dbo].[tb_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tb_NhanVien_tb_XaPhuong] FOREIGN KEY([MaXaPhuong])
REFERENCES [dbo].[tb_XaPhuong] ([MaXaPhuong])
GO
ALTER TABLE [dbo].[tb_NhanVien] CHECK CONSTRAINT [FK_tb_NhanVien_tb_XaPhuong]
GO
ALTER TABLE [dbo].[tb_Phim]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phim_tb_DinhDang] FOREIGN KEY([MaDinhDang])
REFERENCES [dbo].[tb_DinhDang] ([MaDinhDang])
GO
ALTER TABLE [dbo].[tb_Phim] CHECK CONSTRAINT [FK_tb_Phim_tb_DinhDang]
GO
ALTER TABLE [dbo].[tb_Phim]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phim_tb_HangPhim] FOREIGN KEY([MaHangPhim])
REFERENCES [dbo].[tb_HangPhim] ([MaHangPhim])
GO
ALTER TABLE [dbo].[tb_Phim] CHECK CONSTRAINT [FK_tb_Phim_tb_HangPhim]
GO
ALTER TABLE [dbo].[tb_Phim]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phim_tb_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tb_NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[tb_Phim] CHECK CONSTRAINT [FK_tb_Phim_tb_NhanVien]
GO
ALTER TABLE [dbo].[tb_Phim]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phim_tb_QuocGia] FOREIGN KEY([MaQuocGia])
REFERENCES [dbo].[tb_QuocGia] ([MaQuocGia])
GO
ALTER TABLE [dbo].[tb_Phim] CHECK CONSTRAINT [FK_tb_Phim_tb_QuocGia]
GO
ALTER TABLE [dbo].[tb_Phim]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phim_tb_TheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[tb_TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[tb_Phim] CHECK CONSTRAINT [FK_tb_Phim_tb_TheLoai]
GO
ALTER TABLE [dbo].[tb_Phong]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phong_tb_DinhDang] FOREIGN KEY([MaDinhDang])
REFERENCES [dbo].[tb_DinhDang] ([MaDinhDang])
GO
ALTER TABLE [dbo].[tb_Phong] CHECK CONSTRAINT [FK_tb_Phong_tb_DinhDang]
GO
ALTER TABLE [dbo].[tb_Phong]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phong_tb_Rap] FOREIGN KEY([MaRap])
REFERENCES [dbo].[tb_Rap] ([MaRap])
GO
ALTER TABLE [dbo].[tb_Phong] CHECK CONSTRAINT [FK_tb_Phong_tb_Rap]
GO
ALTER TABLE [dbo].[tb_QuanHuyen]  WITH CHECK ADD  CONSTRAINT [FK_tb_QuanHuyen_tb_TinhThanhPho] FOREIGN KEY([MaTinhThanhPho])
REFERENCES [dbo].[tb_TinhThanhPho] ([MaTinhThanhPho])
GO
ALTER TABLE [dbo].[tb_QuanHuyen] CHECK CONSTRAINT [FK_tb_QuanHuyen_tb_TinhThanhPho]
GO
ALTER TABLE [dbo].[tb_QuangCao]  WITH CHECK ADD  CONSTRAINT [FK_tb_QuangCao_tb_LoaiQuangCao] FOREIGN KEY([MaLoaiQuangCao])
REFERENCES [dbo].[tb_LoaiQuangCao] ([MaLoaiQuangCao])
GO
ALTER TABLE [dbo].[tb_QuangCao] CHECK CONSTRAINT [FK_tb_QuangCao_tb_LoaiQuangCao]
GO
ALTER TABLE [dbo].[tb_Rap]  WITH CHECK ADD  CONSTRAINT [FK_tb_Rap_tb_XaPhuong] FOREIGN KEY([MaXaPhuong])
REFERENCES [dbo].[tb_XaPhuong] ([MaXaPhuong])
GO
ALTER TABLE [dbo].[tb_Rap] CHECK CONSTRAINT [FK_tb_Rap_tb_XaPhuong]
GO
ALTER TABLE [dbo].[tb_TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_tb_TinTuc_tb_LoaiTinTuc] FOREIGN KEY([MaLoaiTinTuc])
REFERENCES [dbo].[tb_LoaiTinTuc] ([MaLoaiTinTuc])
GO
ALTER TABLE [dbo].[tb_TinTuc] CHECK CONSTRAINT [FK_tb_TinTuc_tb_LoaiTinTuc]
GO
ALTER TABLE [dbo].[tb_ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_tb_ThanhVien_tb_XaPhuong] FOREIGN KEY([MaXaPhuong])
REFERENCES [dbo].[tb_XaPhuong] ([MaXaPhuong])
GO
ALTER TABLE [dbo].[tb_ThanhVien] CHECK CONSTRAINT [FK_tb_ThanhVien_tb_XaPhuong]
GO
ALTER TABLE [dbo].[tb_Ve]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ve_tb_KTG] FOREIGN KEY([MaKTG])
REFERENCES [dbo].[tb_KTG] ([MaKTG])
GO
ALTER TABLE [dbo].[tb_Ve] CHECK CONSTRAINT [FK_tb_Ve_tb_KTG]
GO
ALTER TABLE [dbo].[tb_Ve]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ve_tb_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[tb_Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[tb_Ve] CHECK CONSTRAINT [FK_tb_Ve_tb_Phim]
GO
ALTER TABLE [dbo].[tb_Ve]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ve_tb_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[tb_Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[tb_Ve] CHECK CONSTRAINT [FK_tb_Ve_tb_Phong]
GO
ALTER TABLE [dbo].[tb_XaPhuong]  WITH CHECK ADD  CONSTRAINT [FK_tb_XaPhuong_tb_QuanHuyen] FOREIGN KEY([MaQuanHuyen])
REFERENCES [dbo].[tb_QuanHuyen] ([MaQuanHuyen])
GO
ALTER TABLE [dbo].[tb_XaPhuong] CHECK CONSTRAINT [FK_tb_XaPhuong_tb_QuanHuyen]
GO
USE [master]
GO
ALTER DATABASE [QLBanVeChieuPhimOnline_ASP] SET  READ_WRITE 
GO
