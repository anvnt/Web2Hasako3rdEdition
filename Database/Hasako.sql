
GO
/****** Object:  Database [HaSakoProject]    Script Date: 12-May-20 09:20:57 ******/
CREATE DATABASE [HaSakoProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HaSakoProject', FILENAME = N'H:\HaSakoProject.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HaSakoProject_log', FILENAME = N'H:\HaSakoProject_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HaSakoProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HaSakoProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HaSakoProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HaSakoProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HaSakoProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HaSakoProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HaSakoProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [HaSakoProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HaSakoProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HaSakoProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HaSakoProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HaSakoProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HaSakoProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HaSakoProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HaSakoProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HaSakoProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HaSakoProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HaSakoProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HaSakoProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HaSakoProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HaSakoProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HaSakoProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HaSakoProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HaSakoProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HaSakoProject] SET RECOVERY FULL 
GO
ALTER DATABASE [HaSakoProject] SET  MULTI_USER 
GO
ALTER DATABASE [HaSakoProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HaSakoProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HaSakoProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HaSakoProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HaSakoProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HaSakoProject', N'ON'
GO
ALTER DATABASE [HaSakoProject] SET QUERY_STORE = OFF
GO
USE [HaSakoProject]
GO
/****** Object:  Table [dbo].[BLOG]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BLOG](
	[MaBlog] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NOT NULL,
	[Tieude] [nvarchar](128) NOT NULL,
	[Noidung] [nvarchar](max) NOT NULL,
	[Hinhanh] [varbinary](max) NULL,
	[Ngaydang] [datetime] NULL,
	[ngaychinhsua] [datetime] NOT NULL,
 CONSTRAINT [PK_BLOG] PRIMARY KEY CLUSTERED 
(
	[MaBlog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaHS] [int] NOT NULL,
	[Soluong] [int] NOT NULL,
	[Dongia] [int] NOT NULL,
	[TonggiaCTDH] [int] NULL,
 CONSTRAINT [PK_CHITIETDONHANG] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETNHAPHANG]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETNHAPHANG](
	[MaNH] [int] IDENTITY(1,1) NOT NULL,
	[Nhaynhapkho] [datetime] NULL,
	[Soluongnhap] [int] NULL,
 CONSTRAINT [PK_CHITIETNHAPHANG] PRIMARY KEY CLUSTERED 
(
	[MaNH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETTHANHTOAN]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETTHANHTOAN](
	[MaCTTT] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[MaTT] [int] NOT NULL,
	[Giamgia] [int] NULL,
	[Tongtienthanhtoan] [int] NOT NULL,
 CONSTRAINT [PK_CHITIETTHANHTOAN] PRIMARY KEY CLUSTERED 
(
	[MaCTTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUCHAISANKHO]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUCHAISANKHO](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_DANHMUCHAISANKHO] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDH] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[Dathanhtoan] [bit] NOT NULL,
	[Ngaydathang] [datetime] NOT NULL,
	[Ngaygiaohang] [datetime] NOT NULL,
	[Diachigiaohang] [nvarchar](128) NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Thanhtien] [int] NOT NULL,
 CONSTRAINT [PK_DONHANG] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HAISANKHO]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HAISANKHO](
	[MaHS] [int] IDENTITY(1,1) NOT NULL,
	[TenHS] [nvarchar](128) NULL,
	[Dongia] [int] NOT NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [nvarchar](max) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Donvi] [nvarchar](20) NULL,
	[Soluongton] [int] NULL,
	[MaDM] [int] NULL,
	[MaNH] [int] NULL,
 CONSTRAINT [PK_HAISANKHO] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HINHTHUCTHANHTOAN]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINHTHUCTHANHTOAN](
	[MaHTTT] [int] NOT NULL,
	[TenHTTT] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_HINHTHUCTHANHTOAN] PRIMARY KEY CLUSTERED 
(
	[MaHTTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKh] [nvarchar](128) NOT NULL,
	[Sodienthoai] [nvarchar](128) NULL,
	[Email] [nvarchar](128) NULL,
	[DiaChi] [nvarchar](64) NULL,
	[Gioitinh] [int] NULL,
	[Taikhoan] [nvarchar](64) NOT NULL,
	[Matkhau] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MOTAHAISANKHO]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOTAHAISANKHO](
	[MaHS] [int] NOT NULL,
	[Hinh1] [nvarchar](max) NULL,
	[Hinh2] [nvarchar](max) NULL,
	[Hinh3] [nvarchar](max) NULL,
 CONSTRAINT [PK_MOTAHAISANKHO] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](128) NOT NULL,
	[Sodienthoai] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](64) NULL,
	[Diachi] [nvarchar](64) NULL,
	[Gioitinh] [int] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOANNHANVIEN]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOANNHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[Taikhoan] [nvarchar](64) NOT NULL,
	[Matkhau] [nvarchar](64) NOT NULL,
	[Phanquyen] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_TAIKHOANNHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHTOAN]    Script Date: 12-May-20 09:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHTOAN](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[MaHTTT] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[Ngaygiothanhtoan] [datetime] NULL,
 CONSTRAINT [PK_THANHTOAN] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHITIETNHAPHANG] ON 

INSERT [dbo].[CHITIETNHAPHANG] ([MaNH], [Nhaynhapkho], [Soluongnhap]) VALUES (1, CAST(N'2018-03-21T00:00:00.000' AS DateTime), 123)
SET IDENTITY_INSERT [dbo].[CHITIETNHAPHANG] OFF
SET IDENTITY_INSERT [dbo].[DANHMUCHAISANKHO] ON 

INSERT [dbo].[DANHMUCHAISANKHO] ([MaDM], [TenDM]) VALUES (1, N'Cá khô/Cá một nắng')
INSERT [dbo].[DANHMUCHAISANKHO] ([MaDM], [TenDM]) VALUES (2, N'Sò khô')
INSERT [dbo].[DANHMUCHAISANKHO] ([MaDM], [TenDM]) VALUES (3, N'Hải sâm khô/Bào ngư khô')
INSERT [dbo].[DANHMUCHAISANKHO] ([MaDM], [TenDM]) VALUES (4, N'Cá ngựa khô')
INSERT [dbo].[DANHMUCHAISANKHO] ([MaDM], [TenDM]) VALUES (5, N'Tôm khô')
INSERT [dbo].[DANHMUCHAISANKHO] ([MaDM], [TenDM]) VALUES (6, N'Mực khô/Mực một nắng')
INSERT [dbo].[DANHMUCHAISANKHO] ([MaDM], [TenDM]) VALUES (7, N'Hải sản chế biến')
INSERT [dbo].[DANHMUCHAISANKHO] ([MaDM], [TenDM]) VALUES (8, N'Sá sùng khô')
SET IDENTITY_INSERT [dbo].[DANHMUCHAISANKHO] OFF
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [Dathanhtoan], [Ngaydathang], [Ngaygiaohang], [Diachigiaohang], [Tinhtranggiaohang], [Thanhtien]) VALUES (1, 1, 1, 1, CAST(N'2019-04-12T00:00:00.000' AS DateTime), CAST(N'2019-04-20T00:00:00.000' AS DateTime), N'ÁD', 1, 123123132)
SET IDENTITY_INSERT [dbo].[HAISANKHO] ON 

INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (1, N'Cá cơm khô sọc trắng', 150000, N'Ngon lắm', N'ca1.jpg', CAST(N'2018-12-02T00:00:00.000' AS DateTime), N'Túi 0.5kg', 21, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (2, N'Cá cơm khô sọc đen', 130000, NULL, N'ca2.jpg', NULL, N'Túi 0.5kg', 21, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (3, N'Khô cá bống sữa', 220000, N'Thơm', N'ca3.jpg', CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'Túi 0.5kg', 12, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (5, N'Khô cá trích', 100000, NULL, N'ca4.pg', CAST(N'2020-01-02T00:00:00.000' AS DateTime), N'Túi 0.5kg', 400, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (6, N'Khô cá kèo', 130000, N'Cay giòn', N'ca5.jpg', CAST(N'2019-12-10T00:00:00.000' AS DateTime), N'Túi 0.5kg', 353, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (7, N'Cá ngựa khô', 320000, N'Bổ', N'ca6.jpg', CAST(N'2019-10-23T00:00:00.000' AS DateTime), N'Túi 0.5kg', 125, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (8, N'Khô cá lưỡi trâu', 150000, NULL, N'ca7.jpg', CAST(N'2019-06-08T00:00:00.000' AS DateTime), N'Túi 0.5kg', 231, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (10, N'Khô cá nhồng ', 175000, NULL, NULL, NULL, N'Túi 0.5kg', 3, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (11, N'Bong bóng cá khô', 450000, NULL, NULL, NULL, N'Túi 0.5kg', 54, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (13, N'Cá đuối khô', 450000, NULL, NULL, NULL, N'Túi 0.5kg', 123, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (15, N'Cá lanh một nắng', 130000, NULL, NULL, NULL, N'Túi 0.5kg', 431, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (16, N'Cá mối một nắng', 90000, NULL, NULL, NULL, N'Túi 0.5kg', 32, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (17, N'Cá thu một nắng', 180000, NULL, NULL, NULL, N'Túi 0.5kg', 310, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (18, N'Cá dứa một nắng', 250000, NULL, NULL, NULL, N'Túi 0.5kg', 15, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (19, N'Cá nục một nắng', 120000, NULL, NULL, NULL, N'Túi 0.5kg', 54, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (20, N'Khô cá khoai', 150000, NULL, NULL, NULL, N'Túi 0.5kg', 13, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (21, N'Cá đù sóc một nắng', 180000, NULL, NULL, NULL, N'Túi 0.5kg', 43, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (23, N'Cá chìa vôi một nắng', 250000, NULL, NULL, NULL, N'Túi 0.5kg', 56, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (24, N'Cá hồng một nắng', 100000, NULL, NULL, NULL, N'Túi 0.5kg', 65, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (25, N'Cá đối nhòng một nắngaCá đối nhòng một nắng', 130000, NULL, NULL, NULL, N'Túi 0.5kg', 12, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (26, N'Cồi sò điệp khô', 320000, N'Túi 1kg', N'sodiep1.jpg', CAST(N'2020-01-02T00:00:00.000' AS DateTime), N'Túi 1kg', 32, 2, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (27, N'Cồi sò điệp khô', 600000, N'Túi 2kg', N'sodiep2.jpg', CAST(N'2019-11-11T00:00:00.000' AS DateTime), N'Túi 2kg', 43, 2, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (28, N'Cồi sò điệp khô', 1000000, N'Túi 3kg', N'sodiep3.jpg', CAST(N'2020-02-04T00:00:00.000' AS DateTime), N'Túi 3kg', 12, 2, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (29, N'Cồi sò mai khô', 300000, N'Túi 1kg', N'somai1.jpg', CAST(N'2020-03-04T00:00:00.000' AS DateTime), N'Túi 1kg ', 65, 2, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (30, N'Cồi sò mai khô', 560000, N'Túi 2kg', N'somai2.jpg', CAST(N'2020-03-05T00:00:00.000' AS DateTime), N'Túi 2kg ', 14, 2, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (31, N'Cồi sò mai khô', 900000, N'Túi 3kg', N'somai3.jpg', CAST(N'2020-03-14T00:00:00.000' AS DateTime), N'Túi 3kg', 45, 2, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (32, N'Bào ngư khô loại 1', 450000, N'Béo bổ', N'baongu1.jpg', CAST(N'2019-08-09T00:00:00.000' AS DateTime), N'Túi 0.5kg', 78, 3, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (33, N'Bào ngư khô loại 2', 400000, NULL, N'baongu2.jpg', CAST(N'2019-08-09T00:00:00.000' AS DateTime), N'Túi 0.5kg', 67, 3, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (34, N'Hải sâm khô loại 1', 400000, NULL, N'haisam1.jpg', CAST(N'2019-10-02T00:00:00.000' AS DateTime), N'Túi 0.5kg', 43, 3, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (36, N'Hải sâm khô loại 2', 370000, NULL, N'haisam2.jpg', CAST(N'2019-12-14T00:00:00.000' AS DateTime), N'Túi 0.5kg', 90, 3, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (37, N'Cá ngựa khô loại 1', 500000, NULL, N'cangua1.jpg', CAST(N'2019-10-02T00:00:00.000' AS DateTime), N'Túi 0.5kg', 32, 4, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (39, N'Cá ngựa khô loại 2', 450000, NULL, N'cangua1.jpg', CAST(N'2019-10-02T00:00:00.000' AS DateTime), N'Túi 0.5kg', 12, 4, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (40, N'Cá ngựa khô loại 1', 900000, NULL, N'cangua1.jpg', CAST(N'2020-03-14T00:00:00.000' AS DateTime), N'Túi 1kg', 54, 4, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (41, N'Cá ngựa khô loại 2', 800000, NULL, N'cangua1.jpg', CAST(N'2020-03-14T00:00:00.000' AS DateTime), N'Túi 1kg', 43, 4, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (42, N'Tôm khô - Túi 0,5kg', 400000, N'Nấu canh ngon', N'tomkho1.jpg', CAST(N'2018-12-04T00:00:00.000' AS DateTime), N'Túi 0,5kg', 1, 5, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (43, N'Tôm khô - Túi 1kg', 700000, N'Ngon hơn', N'tomkho2.jpg', CAST(N'2018-09-09T00:00:00.000' AS DateTime), N'Túi 1kg', 32, 5, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (44, N'Tép khô-Túi 0.5kg', 90000, N'', N'tepkho1.jpg', CAST(N'2018-07-02T00:00:00.000' AS DateTime), N'Túi 0,5kg', 47, 5, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (46, N'Tép khô - Túi 1kg', 150000, NULL, N'tepkho2.jpg', CAST(N'2018-01-21T00:00:00.000' AS DateTime), N'Túi 1kg', 33, 5, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (47, N'Mực khô loại 1 - Túi 0.5kg ', 625000, N'Nhậu là số dách', N'muckho1.jpg', CAST(N'2019-09-08T00:00:00.000' AS DateTime), N'Túi 0.5kg', 98, 6, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (48, N'Mực khô loại 1 - Túi 1kg', 1200000, N'', N'muckho2.jpg', CAST(N'2019-11-19T00:00:00.000' AS DateTime), N'Túi 1kg', 43, 6, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (50, N'Mực khô loại 2 - Túi 0.5kg', 575000, NULL, N'muckho3.jpg', CAST(N'2019-11-19T00:00:00.000' AS DateTime), N'Túi 0.5kg', 32, 6, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (51, N'Mực khô loại 2 - Túi 1kg', 1100000, N'Nhậu là số dách', N'muckho3.jpg', CAST(N'2020-03-14T00:00:00.000' AS DateTime), N'Túi 1kg', 52, 6, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (52, N'Sá sùng khô - Size L', 2600000, N'chẹp', N'sasung1.jpg', CAST(N'2018-07-02T00:00:00.000' AS DateTime), N'Túi 0.5kg', 54, 8, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (53, N'Sá sùng khô - Size M -Túi 1kg', 4500000, N'Ngon lắm á', N'sasung2.jpg', CAST(N'2020-03-14T00:00:00.000' AS DateTime), N'Túi 1kg', 12, 8, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (55, N'Sá sùng khô - Size M -Túi 0.5kg', 2500000, NULL, N'sasung3.jpg', CAST(N'2020-03-14T00:00:00.000' AS DateTime), N'Túi 0.5kg', 4, 8, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (56, N'Cá hồi hun khói', 1500000, NULL, N'cahoi.jpg', CAST(N'2019-09-08T00:00:00.000' AS DateTime), N'Kg', 41, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (57, N'Ruốc cá hồi', 110000, N'Ăn kèm bao tuyệt', N'ruoccahoi.jpg', CAST(N'2019-12-23T00:00:00.000' AS DateTime), N'Hủ', 47, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (58, N'Ruốc tôm', 500000, NULL, N'ruoctom.jpg', CAST(N'2019-12-26T00:00:00.000' AS DateTime), N'Hủ', 64, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (59, N'Cá cơm tẩm mè', 80000, NULL, N'cacom.jpg', CAST(N'2019-11-03T00:00:00.000' AS DateTime), N'Hủ', 91, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (60, N'Chà bông cá thu', 60000, NULL, NULL, NULL, N'Hủ', 24, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (61, N'Cá cơm kho ăn liền', 80000, NULL, NULL, NULL, N'Hủ', 44, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (62, N'Chả cá thu', 170000, N'Đặc sản', N'cathu.jpg', CAST(N'2020-04-21T00:00:00.000' AS DateTime), N'Kg', 100, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (63, N'Cá khoai rim', 50000, N'', N'cakhoai.jpg', CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'Hủ', 211, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (64, N'Mực tẩm gia vị', 500000, NULL, N'muctam.jpg', CAST(N'2020-04-04T00:00:00.000' AS DateTime), N'Kg', 19, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (65, N'Ruốc tẩm sấy', 50000, NULL, N'ruoctam.jpg', CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'Hủ', 54, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (66, N'Mắm ruốc', 50000, NULL, N'mamruoc.jpg', CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'Hủ', 76, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (67, N'Mực rim me', 60000, NULL, N'mucrim.jpg', CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'Hủ', 45, 7, 1)
SET IDENTITY_INSERT [dbo].[HAISANKHO] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [TenKh], [Sodienthoai], [Email], [DiaChi], [Gioitinh], [Taikhoan], [Matkhau]) VALUES (1, N'Bùi Xuân Thành', N'0349542348', N'thanhbxden@gmail.com', N'Thủ Đức, thành phố Hồ Chí Minh', 1, N'thanhbx', N'123456')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKh], [Sodienthoai], [Email], [DiaChi], [Gioitinh], [Taikhoan], [Matkhau]) VALUES (2, N'Hồ Ngọc Phương Uyên', N'098243313', N'uyenphuong@gmail.com', N'Quy Nhơn, Bình Định', 0, N'uyenphuong', N'1234567')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKh], [Sodienthoai], [Email], [DiaChi], [Gioitinh], [Taikhoan], [Matkhau]) VALUES (3, N'Trần Văn Khánh', N'0365478785', N'guitarbuon@gmail.com', N'Chiến Lược, Bình Tân, tp Hồ Chí Minh', 1, N'khanhtran', N'123456')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKh], [Sodienthoai], [Email], [DiaChi], [Gioitinh], [Taikhoan], [Matkhau]) VALUES (4, N'Nguyễn Ngọc Anh Thảo', N'0355437753', N'anhthao11@gmail.com', N'KTX Khu B, ĐHQG thành phố HCM', 0, N'anhthao11', N'1234567')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKh], [Sodienthoai], [Email], [DiaChi], [Gioitinh], [Taikhoan], [Matkhau]) VALUES (5, N'Lê Văn Hoàng', N'0251743513', N'vanhoang@gmail.com', N'Võ Văn Tần, Quận 3, thành phố Hồ Chí Minh', 1, N'hoang123', N'13579')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Sodienthoai], [Email], [Diachi], [Gioitinh]) VALUES (1, N'Võ Nguyễn Tâm An', N'0809434123', N'anvnt17411c@st.uel.edu.vn', N'Bảo Lộc, Lâm Đồng', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Sodienthoai], [Email], [Diachi], [Gioitinh]) VALUES (2, N'Nguyễn Thành Duy', N'0356593184', N'nguyenduy10011999@gmail.com', N'Núi Đỏ, Long Khánh, Đồng Nai', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Sodienthoai], [Email], [Diachi], [Gioitinh]) VALUES (3, N'Nguyễn Anh Nhật', N'0398754345', N'nhatna17411c@st.uel.edu.vn', N'KTX B, ĐHQG thành phố Hồ Chí Minh', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Sodienthoai], [Email], [Diachi], [Gioitinh]) VALUES (4, N'Nguyễn Quốc Triệu', N'0989868434', N'trieunq17411c@st.uel.edu.vn', N'Phạm Văn Đồng, Thủ Đức', 1)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
SET IDENTITY_INSERT [dbo].[TAIKHOANNHANVIEN] ON 

INSERT [dbo].[TAIKHOANNHANVIEN] ([MaNV], [Taikhoan], [Matkhau], [Phanquyen]) VALUES (1, N'anvonguyentam', N'123456', N'admin')
INSERT [dbo].[TAIKHOANNHANVIEN] ([MaNV], [Taikhoan], [Matkhau], [Phanquyen]) VALUES (2, N'nguyenduy', N'12345678', N'staff')
INSERT [dbo].[TAIKHOANNHANVIEN] ([MaNV], [Taikhoan], [Matkhau], [Phanquyen]) VALUES (3, N'anhnhat', N'123456789', N'staff')
INSERT [dbo].[TAIKHOANNHANVIEN] ([MaNV], [Taikhoan], [Matkhau], [Phanquyen]) VALUES (4, N'quoctrieu', N'1234567', N'staff')
SET IDENTITY_INSERT [dbo].[TAIKHOANNHANVIEN] OFF
ALTER TABLE [dbo].[HAISANKHO]  WITH CHECK ADD  CONSTRAINT [FK_HAISANKHO_CHITIETNHAPHANG] FOREIGN KEY([MaNH])
REFERENCES [dbo].[CHITIETNHAPHANG] ([MaNH])
GO
ALTER TABLE [dbo].[HAISANKHO] CHECK CONSTRAINT [FK_HAISANKHO_CHITIETNHAPHANG]
GO
USE [master]
GO
ALTER DATABASE [HaSakoProject] SET  READ_WRITE 
GO
