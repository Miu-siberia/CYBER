USE [BanHangOnline]
GO
/****** Object:  Database [BanHangOnline]    Script Date: 4/13/2021 5:24:55 PM ******/
CREATE DATABASE [BanHangOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanHangOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BanHangOnline.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanHangOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BanHangOnline_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BanHangOnline] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanHangOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanHangOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanHangOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanHangOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanHangOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanHangOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanHangOnline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BanHangOnline] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BanHangOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanHangOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanHangOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanHangOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanHangOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanHangOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanHangOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanHangOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanHangOnline] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BanHangOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanHangOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanHangOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanHangOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanHangOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanHangOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanHangOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanHangOnline] SET RECOVERY FULL 
GO
ALTER DATABASE [BanHangOnline] SET  MULTI_USER 
GO
ALTER DATABASE [BanHangOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanHangOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanHangOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanHangOnline] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BanHangOnline', N'ON'
GO
USE [BanHangOnline]
GO
/****** Object:  Table [dbo].[baiViet]    Script Date: 4/13/2021 5:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[baiViet](
	[maBV] [varchar](10) NOT NULL,
	[tenBV] [nvarchar](250) NOT NULL,
	[hinhDD] [varchar](max) NULL,
	[ndTomTat] [nvarchar](2000) NULL,
	[ngayDang] [datetime] NULL,
	[noiDung] [nvarchar](4000) NULL,
	[taiKhoan] [varchar](20) NOT NULL,
	[daDuyet] [bit] NULL,
	[maLoai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maBV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctDonHang]    Script Date: 4/13/2021 5:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctDonHang](
	[soDH] [varchar](10) NOT NULL,
	[maSP] [varchar](10) NOT NULL,
	[soLuong] [int] NULL,
	[giaBan] [bigint] NULL,
	[giamGia] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[soDH] ASC,
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[donHang]    Script Date: 4/13/2021 5:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[donHang](
	[soDH] [varchar](10) NOT NULL,
	[maKH] [varchar](10) NOT NULL,
	[taiKhoan] [varchar](20) NOT NULL,
	[ngayDat] [datetime] NULL,
	[daKichHoat] [bit] NULL DEFAULT ((1)),
	[ngayGH] [datetime] NULL,
	[diaChiGH] [nvarchar](250) NULL,
	[ghiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[soDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[khachHang]    Script Date: 4/13/2021 5:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khachHang](
	[maKH] [varchar](10) NOT NULL,
	[tenKH] [nvarchar](50) NOT NULL,
	[soDT] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[diaChi] [nvarchar](250) NULL,
	[ngaySinh] [datetime] NULL,
	[gioiTinh] [bit] NULL DEFAULT ((1)),
	[ghiChu] [ntext] NULL,
	[maQH] [int] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loaiSP]    Script Date: 4/13/2021 5:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiSP](
	[maLoai] [int] IDENTITY(1,1) NOT NULL,
	[loaiSP] [nvarchar](88) NOT NULL DEFAULT (N'Dụng cụ nhà bếp'),
	[ghiChu] [ntext] NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhomTk]    Script Date: 4/13/2021 5:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhomTk](
	[maNhom] [int] IDENTITY(1,1) NOT NULL,
	[tenNhom] [nvarchar](35) NOT NULL DEFAULT (N'Giao hàng'),
	[ghiChu] [ntext] NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[maNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[quanHuyen]    Script Date: 4/13/2021 5:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quanHuyen](
	[maQH] [int] IDENTITY(1,1) NOT NULL,
	[tenQH] [nvarchar](88) NOT NULL,
	[tinhThanh] [nvarchar](65) NOT NULL,
	[ghiChu] [ntext] NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[maQH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanPham]    Script Date: 4/13/2021 5:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sanPhamBanChay](
	[maSP] [varchar](10) NOT NULL,
	[tenSP] [nvarchar](500) NOT NULL,
	[hinhDD] [varchar](max) NULL DEFAULT (''),
	[ndTomTat] [nvarchar](2000) NULL DEFAULT (''),
	[ngayDang] [datetime] NULL DEFAULT (getdate()),
	[loaiHang] [nvarchar](30) NULL DEFAULT ('QA'),
	[noiDung] [nvarchar](4000) NULL DEFAULT (''),
	[taiKhoan] [varchar](20) NOT NULL,
	[daDuyet] [bit] NULL DEFAULT ((0)),
	[giaBan] [int] NULL DEFAULT ((0)),
	[giamGia] [int] NULL DEFAULT ((0)),
	[maLoai] [int] NULL DEFAULT ((1)),
	[nhaSanXuat] [nvarchar](89) NULL DEFAULT (N'Việt nam'),
	[dvt] [nvarchar](12) NULL DEFAULT (N'Cái'),
PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/*****/
CREATE TABLE [dbo].[mayTinhDeBan](
	[maSP] [varchar](10) NOT NULL,
	[tenSP] [nvarchar](500) NOT NULL,
	[hinhDD] [varchar](max) NULL DEFAULT (''),
	[ndTomTat] [nvarchar](2000) NULL DEFAULT (''),
	[ngayDang] [datetime] NULL DEFAULT (getdate()),
	[loaiHang] [nvarchar](30) NULL DEFAULT ('QA'),
	[noiDung] [nvarchar](4000) NULL DEFAULT (''),
	[taiKhoan] [varchar](20) NOT NULL,
	[daDuyet] [bit] NULL DEFAULT ((0)),
	[giaBan] [int] NULL DEFAULT ((0)),
	[giamGia] [int] NULL DEFAULT ((0)),
	[maLoai] [int] NULL DEFAULT ((1)),
	[nhaSanXuat] [nvarchar](89) NULL DEFAULT (N'Việt nam'),
	[dvt] [nvarchar](12) NULL DEFAULT (N'Cái'),
PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****/
CREATE TABLE [dbo].[laptopXachTay](
	[maSP] [varchar](10) NOT NULL,
	[tenSP] [nvarchar](500) NOT NULL,
	[hinhDD] [varchar](max) NULL DEFAULT (''),
	[ndTomTat] [nvarchar](2000) NULL DEFAULT (''),
	[ngayDang] [datetime] NULL DEFAULT (getdate()),
	[loaiHang] [nvarchar](30) NULL DEFAULT ('QA'),
	[noiDung] [nvarchar](4000) NULL DEFAULT (''),
	[taiKhoan] [varchar](20) NOT NULL,
	[daDuyet] [bit] NULL DEFAULT ((0)),
	[giaBan] [int] NULL DEFAULT ((0)),
	[giamGia] [int] NULL DEFAULT ((0)),
	[maLoai] [int] NULL DEFAULT ((1)),
	[nhaSanXuat] [nvarchar](89) NULL DEFAULT (N'Việt nam'),
	[dvt] [nvarchar](12) NULL DEFAULT (N'Cái'),
PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/***/
/****** Object:  Table [dbo].[taiKhoanTV]    Script Date: 4/13/2021 5:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taiKhoanTV](
	[taiKhoan] [varchar](20) NOT NULL,
	[matKhau] [varchar](20) NOT NULL,
	[hoDem] [nvarchar](50) NULL,
	[tenTV] [nvarchar](30) NOT NULL,
	[ngaysinh] [datetime] NULL,
	[gioiTinh] [bit] NULL DEFAULT ((1)),
	[soDT] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[diaChi] [nvarchar](250) NULL,
	[trangThai] [bit] NULL DEFAULT ((0)),
	[ghiChu] [ntext] NULL,
	[maNhom] [int] NULL DEFAULT ((2)),
	[maQH] [int] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[taiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0001', N'01', 5, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0001', N'03', 8, 2300000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0001', N'04', 3, 4500000, 35)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0001', N'08', 2, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0002', N'01', 5, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0002', N'02', 8, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0002', N'05', 1, 3500000, 23)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0003', N'02', 5, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0003', N'04', 3, 4500000, 35)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0003', N'06', 8, 31500000, 42)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0003', N'07', 2, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0004', N'03', 2, 2300000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0004', N'04', 3, 4500000, 35)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0005', N'06', 6, 31500000, 42)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0005', N'07', 3, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0005', N'08', 3, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0006', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0006', N'05', 1, 3500000, 23)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0006', N'06', 3, 31500000, 42)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0006', N'07', 9, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0007', N'01', 5, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0007', N'03', 8, 2300000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0007', N'04', 3, 4500000, 35)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0008', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0008', N'02', 1, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0008', N'03', 5, 2300000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0008', N'06', 2, 31500000, 42)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0009', N'01', 5, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0009', N'08', 2, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0010', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0010', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0010', N'07', 1, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0010', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0011', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0011', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0011', N'07', 1, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0011', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0012', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0012', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0012', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0013', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0013', N'07', 1, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0013', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0014', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0014', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0015', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0015', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0016', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0016', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0017', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0017', N'07', 1, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0017', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0018', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0018', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0018', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0019', N'07', 1, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0019', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0020', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0020', N'07', 1, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0020', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0021', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0021', N'07', 1, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0021', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0022', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0022', N'08', 7, 1300000, 27)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0023', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0023', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0023', N'07', 1, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0024', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0024', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0025', N'03', 2, 2300000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0025', N'05', 2, 3500000, 23)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0025', N'06', 1, 31500000, 42)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0025', N'07', 7, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0026', N'03', 2, 2300000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0026', N'05', 2, 3500000, 23)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0026', N'07', 7, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0027', N'06', 1, 31500000, 42)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0027', N'07', 7, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0028', N'03', 2, 2300000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0028', N'07', 7, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0029', N'03', 2, 2300000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0029', N'05', 2, 3500000, 23)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0030', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0030', N'07', 7, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0031', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0031', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0031', N'04', 1, 4500000, 35)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0031', N'07', 7, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0032', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0032', N'07', 7, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0033', N'04', 1, 4500000, 35)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0033', N'07', 7, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0034', N'02', 2, 450000, 15)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0034', N'04', 1, 4500000, 35)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0034', N'07', 7, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0035', N'01', 2, 1650000, 20)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0035', N'04', 1, 4500000, 35)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0035', N'07', 7, 300000, 12)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0036', N'01', 2, 1650000, 20)
GO
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (N'DH0036', N'07', 7, 300000, 12)
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0001', N'KH001', N'minh', CAST(N'2020-02-12 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'23 Trần Quang Khải, P.Tân Định', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0002', N'KH002', N'minh', CAST(N'2020-02-12 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'112/2 Bến Vân Đồn, P1', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0003', N'KH003', N'minh', CAST(N'2020-02-12 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'221 Nguyễn Trãi, P5', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0004', N'KH004', N'minh', CAST(N'2020-02-12 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'122 Cách Mạng Tháng 8, P10', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0005', N'KH005', N'minh', CAST(N'2020-02-12 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'96 Nguyễn Thiện Thuật, P7', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0006', N'KH006', N'minh', CAST(N'2020-02-12 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'211 Xô Viết Nghệ Tĩnh, P26', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0007', N'KH001', N'minh', CAST(N'2020-02-13 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-15 00:00:00.000' AS DateTime), N'23 Trần Quang Khải, P.Tân Định', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0008', N'KH002', N'minh', CAST(N'2020-02-13 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'112/2 Bến Vân Đồn, P1', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0009', N'KH003', N'minh', CAST(N'2020-02-13 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-15 00:00:00.000' AS DateTime), N'221 Nguyễn Trãi, P5', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0010', N'KH004', N'minh', CAST(N'2020-02-13 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-15 00:00:00.000' AS DateTime), N'122 Cách Mạng Tháng 8, P10', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0011', N'KH005', N'minh', CAST(N'2020-02-13 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'96 Nguyễn Thiện Thuật, P7', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0012', N'KH006', N'minh', CAST(N'2020-02-13 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'211 Xô Viết Nghệ Tĩnh, P26', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0013', N'KH001', N'minh', CAST(N'2020-03-02 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-05 00:00:00.000' AS DateTime), N'23 Trần Quang Khải, P.Tân Định', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0014', N'KH002', N'minh', CAST(N'2020-03-10 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'112/2 Bến Vân Đồn, P1', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0015', N'KH003', N'minh', CAST(N'2020-03-11 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'221 Nguyễn Trãi, P5', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0016', N'KH004', N'minh', CAST(N'2020-03-12 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'122 Cách Mạng Tháng 8, P10', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0017', N'KH005', N'minh', CAST(N'2020-03-13 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'96 Nguyễn Thiện Thuật, P7', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0018', N'KH006', N'minh', CAST(N'2020-03-12 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-14 00:00:00.000' AS DateTime), N'211 Xô Viết Nghệ Tĩnh, P26', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0019', N'KH001', N'minh', CAST(N'2020-03-15 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-16 00:00:00.000' AS DateTime), N'23 Trần Quang Khải, P.Tân Định', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0020', N'KH002', N'minh', CAST(N'2020-03-23 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-25 00:00:00.000' AS DateTime), N'112/2 Bến Vân Đồn, P1', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0021', N'KH003', N'minh', CAST(N'2020-03-22 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-24 00:00:00.000' AS DateTime), N'221 Nguyễn Trãi, P5', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0022', N'KH004', N'minh', CAST(N'2020-03-21 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-23 00:00:00.000' AS DateTime), N'122 Cách Mạng Tháng 8, P10', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0023', N'KH005', N'minh', CAST(N'2020-03-25 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-26 00:00:00.000' AS DateTime), N'96 Nguyễn Thiện Thuật, P7', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0024', N'KH006', N'minh', CAST(N'2020-03-26 00:00:00.000' AS DateTime), 1, CAST(N'2020-02-28 00:00:00.000' AS DateTime), N'211 Xô Viết Nghệ Tĩnh, P26', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0025', N'KH001', N'minh', CAST(N'2020-04-02 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-05 00:00:00.000' AS DateTime), N'23 Trần Quang Khải, P.Tân Định', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0026', N'KH002', N'minh', CAST(N'2020-04-10 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-14 00:00:00.000' AS DateTime), N'112/2 Bến Vân Đồn, P1', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0027', N'KH003', N'minh', CAST(N'2020-04-11 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-14 00:00:00.000' AS DateTime), N'221 Nguyễn Trãi, P5', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0028', N'KH004', N'minh', CAST(N'2020-04-12 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-14 00:00:00.000' AS DateTime), N'122 Cách Mạng Tháng 8, P10', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0029', N'KH005', N'minh', CAST(N'2020-04-13 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-14 00:00:00.000' AS DateTime), N'96 Nguyễn Thiện Thuật, P7', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0030', N'KH006', N'minh', CAST(N'2020-04-12 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-14 00:00:00.000' AS DateTime), N'211 Xô Viết Nghệ Tĩnh, P26', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0031', N'KH001', N'minh', CAST(N'2020-04-15 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-16 00:00:00.000' AS DateTime), N'23 Trần Quang Khải, P.Tân Định', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0032', N'KH002', N'minh', CAST(N'2020-04-23 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-25 00:00:00.000' AS DateTime), N'112/2 Bến Vân Đồn, P1', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0033', N'KH003', N'minh', CAST(N'2020-04-22 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-24 00:00:00.000' AS DateTime), N'221 Nguyễn Trãi, P5', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0034', N'KH004', N'minh', CAST(N'2020-04-21 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-23 00:00:00.000' AS DateTime), N'122 Cách Mạng Tháng 8, P10', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0035', N'KH005', N'minh', CAST(N'2020-04-25 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-26 00:00:00.000' AS DateTime), N'96 Nguyễn Thiện Thuật, P7', N'')
INSERT [dbo].[donHang] ([soDH], [maKH], [taiKhoan], [ngayDat], [daKichHoat], [ngayGH], [diaChiGH], [ghiChu]) VALUES (N'DH0036', N'KH006', N'minh', CAST(N'2020-04-26 00:00:00.000' AS DateTime), 1, CAST(N'2020-04-28 00:00:00.000' AS DateTime), N'211 Xô Viết Nghệ Tĩnh, P26', N'')
INSERT [dbo].[khachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [ghiChu], [maQH]) VALUES (N'KH001', N'Nguyễn Minh Hùng', N'0901222222', N'nmhung@gmail.com', N'23 Trần Quang Khải, P.Tân Định', CAST(N'1985-02-23 00:00:00.000' AS DateTime), 1, N'', 1)
INSERT [dbo].[khachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [ghiChu], [maQH]) VALUES (N'KH002', N'Võ Hoàng Ý Lan', N'0901333333', N'vhylan@gmail.com', N'112/2 Bến Vân Đồn, P1', CAST(N'1980-08-11 00:00:00.000' AS DateTime), 0, N'', 4)
INSERT [dbo].[khachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [ghiChu], [maQH]) VALUES (N'KH003', N'Trần Thanh Trung', N'0901246357', N'tttrung@gmail.com', N'221 Nguyễn Trãi, P5', CAST(N'1989-01-30 00:00:00.000' AS DateTime), 1, N'', 5)
INSERT [dbo].[khachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [ghiChu], [maQH]) VALUES (N'KH004', N'Phan Quang Tuấn', N'0903121212', N'tqtuan@yahoo.com', N'122 Cách Mạng Tháng 8, P10', CAST(N'1994-10-12 00:00:00.000' AS DateTime), 1, N'', 3)
INSERT [dbo].[khachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [ghiChu], [maQH]) VALUES (N'KH005', N'Nguyễn Quang Minh', N'0908552323', N'nqminh@hotmail.com', N'96 Nguyễn Thiện Thuật, P7', CAST(N'1981-05-29 00:00:00.000' AS DateTime), 1, N'', 3)
INSERT [dbo].[khachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [ghiChu], [maQH]) VALUES (N'KH006', N'Bùi Đình Thưởng', N'0913441256', N'bdthuong@gmail.com', N'211 Xô Viết Nghệ Tĩnh, P26', CAST(N'1995-09-20 00:00:00.000' AS DateTime), 1, N'', 13)
INSERT [dbo].[khachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [ghiChu], [maQH]) VALUES (N'KH007', N'Đỗ Nguyễn Hoàng Anh', N'0968717189', N'dnhanh@yahoo.com', N'91 Hoa Sữa, P12', CAST(N'1992-02-11 00:00:00.000' AS DateTime), 1, N'', 20)
INSERT [dbo].[khachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [ghiChu], [maQH]) VALUES (N'KH008', N'Nguyễn Vinh Quang', N'0903456789', N'nvquang@yahoo.com', N'11/3/12 Phan Đình Phùng, P11', CAST(N'1981-08-12 00:00:00.000' AS DateTime), 1, N'', 20)
INSERT [dbo].[khachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [ghiChu], [maQH]) VALUES (N'KH009', N'Nguyễn Anh Dũng', N'0918262626', N'nadung@gmail.com', N'18 Nguyễn Oanh, P9', CAST(N'1989-06-30 00:00:00.000' AS DateTime), 1, N'', 24)
INSERT [dbo].[khachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [ghiChu], [maQH]) VALUES (N'KH010', N'Lý Tuấn Sinh', N'0908787878', N'ltsinh@hotmail.com', N'107/2 Lê Đức Thọ, P12', CAST(N'1979-12-31 00:00:00.000' AS DateTime), 1, N'', 24)
SET IDENTITY_INSERT [dbo].[loaiSP] ON 

INSERT [dbo].[loaiSP] ([maLoai], [loaiSP], [ghiChu]) VALUES (1, N'Laptop', N'')
INSERT [dbo].[loaiSP] ([maLoai], [loaiSP], [ghiChu]) VALUES (2, N' All In One', N'')
INSERT [dbo].[loaiSP] ([maLoai], [loaiSP], [ghiChu]) VALUES (3, N'Desktop', N'')
INSERT [dbo].[loaiSP] ([maLoai], [loaiSP], [ghiChu]) VALUES (4, N'Màn hình', N'')
INSERT [dbo].[loaiSP] ([maLoai], [loaiSP], [ghiChu]) VALUES (5, N'Thiết bị mạng', N'')
INSERT [dbo].[loaiSP] ([maLoai], [loaiSP], [ghiChu]) VALUES (6, N'Máy chủ', N'')
SET IDENTITY_INSERT [dbo].[loaiSP] OFF
SET IDENTITY_INSERT [dbo].[nhomTk] ON 

INSERT [dbo].[nhomTk] ([maNhom], [tenNhom], [ghiChu]) VALUES (1, N'Quản lý', N'')
INSERT [dbo].[nhomTk] ([maNhom], [tenNhom], [ghiChu]) VALUES (2, N'Giao hàng', N'')
INSERT [dbo].[nhomTk] ([maNhom], [tenNhom], [ghiChu]) VALUES (3, N'Marketing', N'')
SET IDENTITY_INSERT [dbo].[nhomTk] OFF
SET IDENTITY_INSERT [dbo].[quanHuyen] ON 

INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (1, N'Q1', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (2, N'Q2', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (3, N'Q3', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (4, N'Q4', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (5, N'Q5', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (6, N'Q6', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (7, N'Q7', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (8, N'Q8', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (9, N'Q9', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (10, N'Q10', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (11, N'Q11', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (12, N'Q12', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (13, N'Bình Thạnh', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (14, N'Bình Tân', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (15, N'Bình chánh', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (16, N'Tân Phú', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (17, N'Cần Giờ', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (18, N'Nhà Bè', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (19, N'Củ Chi', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (20, N'Phú Nhuận', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (21, N'Tân Bình', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (22, N'Hóc Môn', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (23, N'Thủ Đức', N'TP Hồ Chí Minh', N'')
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh], [ghiChu]) VALUES (24, N'Gò Vấp', N'TP Hồ Chí Minh', N'')
SET IDENTITY_INSERT [dbo].[quanHuyen] OFF
INSERT [dbo].[sanPhamBanChay] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [loaiHang], [noiDung], [taiKhoan], [daDuyet], [giaBan], [giamGia], [maLoai], [nhaSanXuat], [dvt]) VALUES (N'01', N'Máy tính để bàn đồng bộ Dell Optiplex 7000 SFF (i5-12500 | /8GB (2x4GB) | SSD 256GB | DVDRW | Wlan_BT | Ubuntu | 3yr)', N'C:\Users\miu\Downloads\sql\sản phẩm bán chạy45554_pc_dell_irs3020_4vgwp_850x850_0-300x300.jpg', N'', CAST(N'2020-09-12 15:31:15.857' AS DateTime), N'TX', N'', 0,  17,950,000, 20, NULL, NULL, NULL)
INSERT [dbo].[sanPhamBanChay] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [loaiHang], [noiDung], [taiKhoan], [daDuyet], [giaBan], [giamGia], [maLoai], [nhaSanXuat], [dvt]) VALUES (N'02', N'Màn Hình Dell P2422H (23.8 inch – FHD – IPS – 60Hz – 5ms – DisplayPort – HDMI – VGA)', N'C:\Users\miu\Downloads\sql\sản phẩm bán chạy/39575_20617_man_hinh_dell_p2422he_1-300x300.jpg', N'', CAST(N'2020-09-12 15:31:15.857' AS DateTime), N'', N'', N'', 0, 4,789,000, 15, NULL, NULL, NULL)
INSERT [dbo].[sanPhamBanChay] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [loaiHang], [noiDung], [taiKhoan], [daDuyet], [giaBan], [giamGia], [maLoai], [nhaSanXuat], [dvt]) VALUES (N'03', N'Máy tính để bàn All in One Dell OptiPlex 7400 (Core i5-12500 | 8GB | 512GB | Intel Iris Xe | 23,8 inch FHD | Ubuntu)', N'C:\Users\miu\Downloads\sql\sản phẩm bán chạy/45235_m__y_t__nh_b__n_dell_inspiron_aio_dt_5420_42inaio540020-300x300.jpg', N'', CAST(N'2020-09-12 15:31:15.857' AS DateTime), N'', N'', N'', 0,  26,990,000, 20, NULL, NULL, NULL)
INSERT [dbo].[sanPhamBanChay] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [loaiHang], [noiDung], [taiKhoan], [daDuyet], [giaBan], [giamGia], [maLoai], [nhaSanXuat], [dvt]) VALUES (N'04', N'Máy tính bàn Dell Inspiron AIO DT 5420 42INAIO540020 (i7-1355U | 16GB | SSD 512GB | 23.8 FHD | Windows 11 Home + Office Home and Student 2021)', N'C:\Users\miu\Downloads\sql\sản phẩm bán chạy/45738_m__y_t__nh_______b__n_dell_aio_inspiron_24_5415_862tc__2_-300x300.jpg', N'', CAST(N'2020-09-12 15:31:15.857' AS DateTime), N'', N'', N'', 0, 25,990,000, 35, NULL, NULL, NULL)
INSERT [dbo].[sanPhamBanChay] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [loaiHang], [noiDung], [taiKhoan], [daDuyet], [giaBan], [giamGia], [maLoai], [nhaSanXuat], [dvt]) VALUES (N'05', N'Laptop Dell Mobile Precision 5570 (Core i7-12800H | 16 GB | 256 GB | RTX™ A2000 | 15.6 inch 4K | Ubuntu Linux)', N'C:\Users\miu\Downloads\sql\sản phẩm bán chạy/44383_laptop_dell_mobile_precision_3470__3_-300x300.jpg', N'', CAST(N'2020-09-12 15:31:15.857' AS DateTime), N'', N'', N'', 0, 17,000,000, 23, NULL, NULL, NULL)
INSERT [dbo].[sanPhamBanChay] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [loaiHang], [noiDung], [taiKhoan], [daDuyet], [giaBan], [giamGia], [maLoai], [nhaSanXuat], [dvt]) VALUES (N'06', N'Laptop Dell Latitude 5430 L5430I714U 3Y (Intel Core i7-1255U | 8GB | 256GB | Intel Iris Xe | 14.0 inch FHD | Ubuntu)', N'C:\Users\miu\Downloads\sql\sản phẩm bán chạy/44419_laptop_latitude_5430_l5430i714u_512-300x300.jpg', N'', CAST(N'2020-09-12 15:31:15.857' AS DateTime), N'', N'', N'', 0, 27,990,000, 42, NULL, NULL, NULL)
INSERT [dbo].[sanPhamBanChay] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [loaiHang], [noiDung], [taiKhoan], [daDuyet], [giaBan], [giamGia], [maLoai], [nhaSanXuat], [dvt]) VALUES (N'07', N'Laptop Dell Inspiron 3530 71011775 (Core i7-1355U | 8GB | 512GB | Intel Iris Xe | 15.6 inch FHD | Win 11 | Office | Đen)', N'C:\Users\miu\Downloads\sql\sản phẩm bán chạy/45276_laptop_dell_inspiron_3530_71011775_anphatpc_1-300x300.jpg', N'', CAST(N'2020-09-12 15:31:15.857' AS DateTime), N'', N'', N'', 0, 20,490,000, 12, NULL, NULL, NULL)
INSERT [dbo].[sanPhamBanChay] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [loaiHang], [noiDung], [taiKhoan], [daDuyet], [giaBan], [giamGia], [maLoai], [nhaSanXuat], [dvt]) VALUES (N'08', N'Laptop Dell Inspiron 14 5430 N4I5497W1 (Intel Core i5 1340P | 16GB | 512 GB | Intel Iris Xe | 14 inch FHD | Win 11 | Office | Bạc)', N'C:\Users\miu\Downloads\sql\sản phẩm bán chạy/45400_laptop_dell_inspiron_14_5430_n5430i58w1__2_-300x300.jpg', N'', CAST(N'2020-09-12 15:31:15.857' AS DateTime), N'', N'', N'minh', 0, 22,490,000, 27, NULL, NULL, NULL)
INSERT [dbo].[taiKhoanTV] ([taiKhoan], [matKhau], [hoDem], [tenTV], [ngaysinh], [gioiTinh], [soDT], [email], [diaChi], [trangThai], [ghiChu], [maNhom], [maQH]) VALUES (N'admin', N'abc', N'Nguyễn Quang', N'Hưng', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 1, N'935694223', N'nqhung@gmail.com', N'472 CMT8, P.11,Q3, TP.HCM', 1, N'', NULL, NULL)
INSERT [dbo].[taiKhoanTV] ([taiKhoan], [matKhau], [hoDem], [tenTV], [ngaysinh], [gioiTinh], [soDT], [email], [diaChi], [trangThai], [ghiChu], [maNhom], [maQH]) VALUES (N'minh', N'123', N'Nguyễn Minh', N'Quang', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 1, N'935694223', N'minhminh@gmail.com', N'472 CMT8, P.11,Q3, TP.HCM', 1, N'', NULL, NULL)
ALTER TABLE [dbo].[baiViet] ADD  DEFAULT ((0)) FOR [daDuyet]
GO
ALTER TABLE [dbo].[baiViet] ADD  DEFAULT ((1)) FOR [maLoai]
GO
ALTER TABLE [dbo].[baiViet]  WITH CHECK ADD FOREIGN KEY([maLoai])
REFERENCES [dbo].[loaiSP] ([maLoai])
GO
ALTER TABLE [dbo].[baiViet]  WITH CHECK ADD FOREIGN KEY([taiKhoan])
REFERENCES [dbo].[taiKhoanTV] ([taiKhoan])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ctDonHang]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[sanPham] ([maSP])
GO
ALTER TABLE [dbo].[ctDonHang]  WITH CHECK ADD FOREIGN KEY([soDH])
REFERENCES [dbo].[donHang] ([soDH])
GO
ALTER TABLE [dbo].[donHang]  WITH CHECK ADD FOREIGN KEY([maKH])
REFERENCES [dbo].[khachHang] ([maKH])
GO
ALTER TABLE [dbo].[donHang]  WITH CHECK ADD FOREIGN KEY([taiKhoan])
REFERENCES [dbo].[taiKhoanTV] ([taiKhoan])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[khachHang]  WITH CHECK ADD FOREIGN KEY([maQH])
REFERENCES [dbo].[quanHuyen] ([maQH])
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD FOREIGN KEY([maLoai])
REFERENCES [dbo].[loaiSP] ([maLoai])
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD FOREIGN KEY([taiKhoan])
REFERENCES [dbo].[taiKhoanTV] ([taiKhoan])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[taiKhoanTV]  WITH CHECK ADD FOREIGN KEY([maNhom])
REFERENCES [dbo].[nhomTk] ([maNhom])
GO
ALTER TABLE [dbo].[taiKhoanTV]  WITH CHECK ADD FOREIGN KEY([maQH])
REFERENCES [dbo].[quanHuyen] ([maQH])
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD CHECK  (([giamGia]>=(0) AND [giamGia]<=(100)))
GO
USE [master]
GO
ALTER DATABASE [BanHangOnline] SET  READ_WRITE 
GO
0\]