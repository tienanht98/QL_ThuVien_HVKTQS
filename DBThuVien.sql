CREATE DATABASE [ThuVien]
GO
USE [ThuVien]
/****** Object:  Database [ThuVien]    Script Date: 30-Mar-18 10:09:37 PM ******/
CREATE DATABASE [ThuVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ThuVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ThuVien.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ThuVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ThuVien_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ThuVien] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ThuVien] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ThuVien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ThuVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [ThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ThuVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ThuVien]
GO
/****** Object:  Table [dbo].[ChiTietMuon]    Script Date: 30-Mar-18 10:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietMuon](
	[soPMT] [char](10) NOT NULL,
	[maCS] [char](10) NOT NULL,
	[tienCoc] [money] NULL,
	[tienTToan] [money] NULL,
 CONSTRAINT [PK_ChiTietMuon] PRIMARY KEY CLUSTERED 
(
	[soPMT] ASC,
	[maCS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietNhap]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietNhap](
	[soPN] [char](10) NOT NULL,
	[maTS] [char](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [money] NOT NULL,
 CONSTRAINT [PK_ChiTietNhap] PRIMARY KEY CLUSTERED 
(
	[soPN] ASC,
	[maTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CuonSach]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CuonSach](
	[maCS] [char](10) NOT NULL,
	[trangThai] [nvarchar](4) NOT NULL,
	[maTS] [char](10) NOT NULL,
 CONSTRAINT [PK_CuonSach] PRIMARY KEY CLUSTERED 
(
	[maCS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocGia](
	[maDG] [char](10) NOT NULL,
	[tenDG] [nvarchar](30) NOT NULL,
	[gioiTinh] [nvarchar](3) NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[SDT] [char](13) NOT NULL,
	[loaiDG] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[maDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NCC]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NCC](
	[maNCC] [char](10) NOT NULL,
	[tenNCC] [nvarchar](30) NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[SDT] [char](13) NOT NULL,
	[email] [char](50) NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[maNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NXB](
	[maNXB] [char](10) NOT NULL,
	[tenNXB] [nvarchar](30) NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[SDT] [char](13) NOT NULL,
	[email] [char](50) NULL,
 CONSTRAINT [PK_NXB] PRIMARY KEY CLUSTERED 
(
	[maNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuMuonTra]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuMuonTra](
	[soPMT] [char](10) NOT NULL,
	[ngayLap] [date] NOT NULL,
	[ngayHTra] [date] NOT NULL,
	[ngayTra] [date] NULL,
	[maDG] [char](10) NOT NULL,
	[maTT] [char](10) NOT NULL,
 CONSTRAINT [PK_PhieuMuonTra] PRIMARY KEY CLUSTERED 
(
	[soPMT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[soPN] [char](10) NOT NULL,
	[ngayLap] [date] NOT NULL,
	[maTT] [char](10) NOT NULL,
	[maNCC] [char](10) NOT NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[soPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuPhat]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuPhat](
	[soPP] [char](10) NOT NULL,
	[ngayLap] [date] NOT NULL,
	[loiVP] [nvarchar](8) NOT NULL,
	[tienPhat] [money] NOT NULL,
	[tenSach] [nvarchar](50) NOT NULL,
	[soPMT] [char](10) NOT NULL,
 CONSTRAINT [PK_PhieuPhat] PRIMARY KEY CLUSTERED 
(
	[soPP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SachCN]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SachCN](
	[tenSach] [char](10) NOT NULL,
	[tacGia] [ntext] NOT NULL,
	[theLoai] [nvarchar](20) NULL,
	[loaiHinhNhap] [nvarchar](9) NOT NULL,
	[maTT] [char](10) NOT NULL,
	[maNCC] [char](10) NULL,
 CONSTRAINT [PK_SachCN] PRIMARY KEY CLUSTERED 
(
	[tenSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TacGia](
	[maTG] [char](10) NOT NULL,
	[tenTG] [nvarchar](30) NOT NULL,
	[gioiTinh] [nvarchar](3) NOT NULL,
	[ngaySinh] [date] NULL,
	[queQuan] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[maTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[UserName] [nchar](10) NOT NULL,
	[Password] [int] NULL,
	[MaQuyen] [int] NULL,
 CONSTRAINT [PK_tbl_Users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblQuyen]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuyen](
	[MaQuyen] [int] NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblQuyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TheLoai](
	[maTL] [char](10) NOT NULL,
	[tenTL] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[maTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThuThu]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThuThu](
	[maTT] [char](10) NOT NULL,
	[tenTT] [nvarchar](30) NOT NULL,
	[gioiTinh] [nvarchar](3) NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[SDT] [char](13) NOT NULL,
	[capBac] [nvarchar](30) NULL,
 CONSTRAINT [PK_ThuThu] PRIMARY KEY CLUSTERED 
(
	[maTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TS_TL]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TS_TL](
	[maTS] [char](10) NOT NULL,
	[maTL] [char](10) NOT NULL,
 CONSTRAINT [PK_TS_TL] PRIMARY KEY CLUSTERED 
(
	[maTS] ASC,
	[maTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TuaSach]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TuaSach](
	[maTS] [char](10) NOT NULL,
	[tenTS] [nvarchar](50) NOT NULL,
	[namXB] [int] NULL,
	[Gia] [smallmoney] NULL,
	[viTri] [char](8) NOT NULL,
	[noiDungTT] [ntext] NULL,
	[nnChinh] [nvarchar](20) NULL,
	[maNXB] [char](10) NOT NULL,
 CONSTRAINT [PK_TuaSach] PRIMARY KEY CLUSTERED 
(
	[maTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Viet]    Script Date: 30-Mar-18 10:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Viet](
	[maTS] [char](10) NOT NULL,
	[maTG] [char](10) NOT NULL,
 CONSTRAINT [PK_Viet] PRIMARY KEY CLUSTERED 
(
	[maTS] ASC,
	[maTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000001', N'0000000001', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000001', N'0000000011', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000001', N'0000000021', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000001', N'0000000031', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000001', N'0000000041', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000002', N'0000000002', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000002', N'0000000012', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000002', N'0000000022', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000002', N'0000000032', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000002', N'0000000042', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000003', N'0000000003', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000003', N'0000000013', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000003', N'0000000023', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000003', N'0000000033', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000003', N'0000000043', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000004', N'0000000004', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000004', N'0000000014', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000004', N'0000000024', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000004', N'0000000034', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000004', N'0000000044', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000005', N'0000000005', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000005', N'0000000015', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000005', N'0000000025', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000005', N'0000000035', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000005', N'0000000045', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000006', N'0000000006', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000006', N'0000000016', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000006', N'0000000026', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000006', N'0000000036', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000006', N'0000000046', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000007', N'0000000007', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000007', N'0000000017', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000007', N'0000000027', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000007', N'0000000037', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000007', N'0000000047', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000008', N'0000000008', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000008', N'0000000018', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000008', N'0000000028', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000008', N'0000000038', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000008', N'0000000048', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000009', N'0000000009', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000009', N'0000000019', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000009', N'0000000029', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000009', N'0000000039', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000009', N'0000000049', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000010', N'0000000010', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000010', N'0000000020', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000010', N'0000000030', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000010', N'0000000040', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000010', N'0000000050', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000011', N'0000000001', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000011', N'0000000011', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000011', N'0000000021', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000011', N'0000000031', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000011', N'0000000041', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000012', N'0000000002', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000012', N'0000000012', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000012', N'0000000022', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000012', N'0000000032', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000012', N'0000000042', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000013', N'0000000003', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000013', N'0000000013', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000013', N'0000000023', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000013', N'0000000033', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000013', N'0000000043', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000014', N'0000000004', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000014', N'0000000014', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000014', N'0000000024', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000014', N'0000000034', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000014', N'0000000044', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000015', N'0000000005', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000015', N'0000000015', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000015', N'0000000025', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000015', N'0000000035', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000015', N'0000000045', 50000.0000, NULL)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000001', N'0000000001', 10, 12000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000002', N'0000000002', 10, 13000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000003', N'0000000003', 10, 14000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000004', N'0000000004', 10, 15000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000005', N'0000000005', 10, 16000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000006', N'0000000006', 10, 17000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000007', N'0000000007', 10, 18000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000008', N'0000000008', 10, 19000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000009', N'0000000009', 10, 20000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000010', N'0000000010', 9, 21000.0000)
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000001', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000002', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000003', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000004', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000005', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000006', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000007', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000008', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000009', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000010', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000011', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000012', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000013', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000014', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000015', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000016', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000017', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000018', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000019', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000020', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000021', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000022', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000023', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000024', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000025', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000026', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000027', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000028', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000029', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000030', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000031', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000032', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000033', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000034', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000035', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000036', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000037', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000038', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000039', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000040', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000041', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000042', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000043', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000044', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000045', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000046', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000047', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000048', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000049', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000050', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000051', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000052', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000053', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000054', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000055', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000056', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000057', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000058', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000059', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000060', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000061', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000062', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000063', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000064', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000065', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000066', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000067', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000068', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000069', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000070', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000071', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000072', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000073', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000074', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000075', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000076', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000077', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000078', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000079', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000080', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000081', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000082', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000083', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000084', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000085', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000086', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000087', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000088', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000089', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000090', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000091', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000092', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000093', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000094', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000095', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000096', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000097', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000098', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000099', N'Tốt', N'0000000010')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000001', N'Nguyễn Đức Mạnh', N'Nam', CAST(0xBF1E0B00 AS Date), N'Quế Võ-Bắc Ninh', N'01627998425  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000002', N'Nguyễn Hải Ninh', N'Nam', CAST(0xA3190B00 AS Date), N'Quế Võ-Bắc Ninh', N'01636571234  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000003', N'Vũ Viết Phúc', N'Nam', CAST(0x1A1F0B00 AS Date), N'Gia Bình-Bắc Ninh', N'01656748321  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000004', N'Nguyễn Tùng Lâm', N'Nam', CAST(0x641E0B00 AS Date), N'Gia Lâm-Hà Nội', N'01698218728  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000005', N'Nguyễn Đức Ninh', N'Nam', CAST(0x1A1F0B00 AS Date), N'Lương Tài-Bắc Ninh', N'01623453453  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000006', N'Phan Kim Liên', N'Nữ', CAST(0xE41B0B00 AS Date), N'Lập Thạch-Vĩnh Phúc', N'01628765212  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000007', N'Ngô Thùy Dung', N'Nữ', CAST(0x261A0B00 AS Date), N'Nghị Lộc-Thanh Hóa', N'01659876253  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000008', N'Nguyễn Thị Lan Anh', N'Nữ', CAST(0xBF1E0B00 AS Date), N'Khoái Châu-Hưng Yên', N'01623657382  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000009', N'Nguyễn Đức Thiện', N'Nam', CAST(0x11160B00 AS Date), N'SaPa-Lào Cai', N'01637165234  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000010', N'Nguyễn Đức Mạnh', N'Nam', CAST(0x6E1E0B00 AS Date), N'Nghi Xuân-Thanh Hóa', N'01672132131  ', N'Mượn/Đọc')
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000001', N'Hồng Hà', NULL, N'0419972837   ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000002', N'Thanh Long', NULL, N'02418765433  ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000003', N'Bạch Hổ', NULL, N'0435682121   ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000004', N'Chu Tước', NULL, N'0497453234   ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000005', N'Huyền Vũ', NULL, N'0412312392   ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000006', N'Thiên Long', NULL, N'02418721532  ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000007', N'Nam Hồng', NULL, N'04218549632  ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000001', N'NXB Chính trị', NULL, N'0111222111   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000002', N'NXB Kim Đồng', NULL, N'0111222222   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000003', N'NXB Giáo dục', NULL, N'0111222333   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000004', N'NXB Tri thức', NULL, N'0111222444   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000005', N'NXB Trẻ', NULL, N'0111222555   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000006', N'NXB Khoa học kĩ thuật', NULL, N'0111222666   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000007', N'NXB Đại học sư phạm', NULL, N'0111222777   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000008', N'NXB Học viện kĩ thuật quân sự', NULL, N'0111222888   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000009', N'NXB Đại học bách khoa', NULL, N'0111222999   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000010', N'NXB Đại học nông nghiệp', NULL, N'0111333000   ', NULL)
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000001', CAST(0xED3B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000001', N'0000000005')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000002', CAST(0xED3B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000001', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000003', CAST(0xED3B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000002', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000004', CAST(0xED3B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000002', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000005', CAST(0xED3B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000003', N'0000000002')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000006', CAST(0xEE3B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000005', N'0000000003')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000007', CAST(0xEE3B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000002', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000008', CAST(0xEE3B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000006', N'0000000004')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000009', CAST(0xED3B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000002', N'0000000002')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000010', CAST(0xEE3B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000003', N'0000000004')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000011', CAST(0x003C0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000010', N'0000000002')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000012', CAST(0xF63B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000008', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000013', CAST(0xFB3B0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000005', N'0000000003')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000014', CAST(0x023C0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000004', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000015', CAST(0x0D3C0B00 AS Date), CAST(0xEF3B0B00 AS Date), NULL, N'0000000003', N'0000000002')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000001', CAST(0x413B0B00 AS Date), N'0000000001', N'0000000001')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000002', CAST(0x923B0B00 AS Date), N'0000000002', N'0000000002')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000003', CAST(0x003C0B00 AS Date), N'0000000003', N'0000000003')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000004', CAST(0x253B0B00 AS Date), N'0000000004', N'0000000004')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000005', CAST(0x343C0B00 AS Date), N'0000000005', N'0000000005')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000006', CAST(0x1B3B0B00 AS Date), N'0000000005', N'0000000006')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000007', CAST(0xC83B0B00 AS Date), N'0000000004', N'0000000005')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000008', CAST(0xD03B0B00 AS Date), N'0000000003', N'0000000004')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000009', CAST(0x073C0B00 AS Date), N'0000000002', N'0000000003')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000010', CAST(0xF73A0B00 AS Date), N'0000000001', N'0000000002')
INSERT [dbo].[PhieuPhat] ([soPP], [ngayLap], [loiVP], [tienPhat], [tenSach], [soPMT]) VALUES (N'0000000001', CAST(0x0D3C0B00 AS Date), N'Trả Muộn', 20000.0000, N'Yêu Em Từ Cái Nhìn Đầu Tiên', N'0000000001')
INSERT [dbo].[PhieuPhat] ([soPP], [ngayLap], [loiVP], [tienPhat], [tenSach], [soPMT]) VALUES (N'0000000002', CAST(0x0D3C0B00 AS Date), N'Làm Mất', 50000.0000, N'Vẫn Cứ Thích Em', N'0000000001')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000001', N'Xuân Diệu', N'Nam', CAST(0x4FE20A00 AS Date), N'Cẩm Giàng-Hải Dương')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000002', N'Xuân Mai', N'Nữ', CAST(0x75F00A00 AS Date), N'Quế Võ-Bắc Ninh')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000003', N'Nguyễn Đình Phúc', N'Nam', CAST(0xB2D60A00 AS Date), N'Lương Tài-Bắc Ninh')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000004', N'Văn Cao', N'Nam', CAST(0x4FE20A00 AS Date), N'Thọ Xuân-Thanh Hóa')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000005', N'Chế Lan Viên', N'Nam', CAST(0x48C60A00 AS Date), N'Khoái Châu-Hưng Yên')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000006', N'Võ Trọng Phụng', N'Nam', CAST(0x87C70A00 AS Date), N'Yên Phong-Bắc Ninh')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000007', N'Thành Vũ', N'Nam', CAST(0x39BD0A00 AS Date), N'Từ Sơn-Bắc Ninh')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000008', N'Thành Nam', N'Nam', CAST(0x3EA90A00 AS Date), N'Vĩnh Yên-Vĩnh Phúc')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000009', N'Xuân Quỳnh', N'Nữ', CAST(0x0CD40A00 AS Date), N'Lập Thạch-Vĩnh Phúc')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000010', N'Quang Lân', N'Nam', CAST(0x52E20A00 AS Date), N'Nghị Lộc -Thanh Hóa')
INSERT [dbo].[tbl_Users] ([UserName], [Password], [MaQuyen]) VALUES (N'DucSon    ', 123, 2)
INSERT [dbo].[tbl_Users] ([UserName], [Password], [MaQuyen]) VALUES (N'GiapLinux ', 123, 1)
INSERT [dbo].[tbl_Users] ([UserName], [Password], [MaQuyen]) VALUES (N'HanhHip   ', 123, 1)
INSERT [dbo].[tbl_Users] ([UserName], [Password], [MaQuyen]) VALUES (N'HoangHang ', 123, 1)
INSERT [dbo].[tbl_Users] ([UserName], [Password], [MaQuyen]) VALUES (N'ManhTuan  ', 123, 1)
INSERT [dbo].[tbl_Users] ([UserName], [Password], [MaQuyen]) VALUES (N'ThanhTu   ', 123, 1)
INSERT [dbo].[tbl_Users] ([UserName], [Password], [MaQuyen]) VALUES (N'ThuyChinh ', 123, 1)
INSERT [dbo].[tblQuyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'Admin')
INSERT [dbo].[tblQuyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'Nhân Viên')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000001', N'Giáo trình')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000002', N'Thơ')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000003', N'Truyện ngắn')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000004', N'Truyện vừa')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000005', N'Tiểu thuyết')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000006', N'Ngôn tình')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000007', N'Khoa học-Kĩ thuật')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000008', N'Chính trị')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000009', N'Truyện cười')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000010', N'Kinh doanh')
INSERT [dbo].[ThuThu] ([maTT], [tenTT], [gioiTinh], [ngaySinh], [diaChi], [SDT], [capBac]) VALUES (N'0000000001', N'Nguyễn Minh Triết', N'Nam', CAST(0xB20B0B00 AS Date), NULL, N'012156123213 ', NULL)
INSERT [dbo].[ThuThu] ([maTT], [tenTT], [gioiTinh], [ngaySinh], [diaChi], [SDT], [capBac]) VALUES (N'0000000002', N'Nguyễn Thị Na', N'Nữ', CAST(0x8CFB0A00 AS Date), NULL, N'01624531234  ', NULL)
INSERT [dbo].[ThuThu] ([maTT], [tenTT], [gioiTinh], [ngaySinh], [diaChi], [SDT], [capBac]) VALUES (N'0000000003', N'Ngô Thị Lan', N'Nữ', CAST(0x0D0F0B00 AS Date), NULL, N'01234567891  ', NULL)
INSERT [dbo].[ThuThu] ([maTT], [tenTT], [gioiTinh], [ngaySinh], [diaChi], [SDT], [capBac]) VALUES (N'0000000004', N'Nguyễn Thành Long', N'Nam', CAST(0xF70E0B00 AS Date), NULL, N'01237651234  ', NULL)
INSERT [dbo].[ThuThu] ([maTT], [tenTT], [gioiTinh], [ngaySinh], [diaChi], [SDT], [capBac]) VALUES (N'0000000005', N'Nguyễn Hà My', N'Nữ', CAST(0xB8080B00 AS Date), NULL, N'01652123131  ', NULL)
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000001', N'0000000001')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000001', N'0000000002')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000001', N'0000000003')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000001', N'0000000007')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000002', N'0000000001')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000002', N'0000000002')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000003', N'0000000003')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000004', N'0000000002')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000004', N'0000000005')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000006', N'0000000005')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000006', N'0000000006')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000007', N'0000000010')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000008', N'0000000001')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000008', N'0000000007')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000009', N'0000000008')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000009', N'0000000009')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000009', N'0000000010')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000001', N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 1969, 69000.0000, N'01-01-01', NULL, N'Tiếng Việt', N'0000000001')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000002', N'Vẫn Cứ Thích Em', 1976, 50000.0000, N'01-01-02', NULL, N'Tiếng Việt', N'0000000002')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000003', N'Yêu Em Từ Cái Nhìn Đầu Tiên', 1945, 60000.0000, N'01-01-03', NULL, N'Tiếng Việt', N'0000000003')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000004', N'Tắt Đèn', 1974, 39000.0000, N'01-01-04', NULL, N'Tiếng Việt', N'0000000004')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000005', N'Cô Gái Năm Âý Chúng Ta Cùng Theo Đuổi', 1979, 45000.0000, N'01-01-05', NULL, N'Tiếng Việt', N'0000000005')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000006', N'Chàng Trai Năm Âý', 2006, 70000.0000, N'01-01-06', NULL, N'Tiếng Việt', N'0000000006')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000007', N'Ngày Trôi Về Phía Cũ', 1978, 96000.0000, N'01-01-07', NULL, N'Tiếng Việt', N'0000000007')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000008', N'Chiêc Lá Cuối Cùng', 1993, 60000.0000, N'01-01-08', NULL, N'Tiếng Việt', N'0000000008')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000009', N'Chí Phèo', 1948, 45000.0000, N'01-01-09', NULL, N'Tiếng Việt', N'0000000009')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000010', N'Lão Hạc', 1954, 39000.0000, N'01-01-10', NULL, N'Tiếng Việt', N'0000000010')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000001', N'0000000001')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000002', N'0000000002')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000003', N'0000000003')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000004', N'0000000004')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000005', N'0000000005')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000006', N'0000000006')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000007', N'0000000007')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000008', N'0000000008')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000009', N'0000000009')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000010', N'0000000010')
ALTER TABLE [dbo].[ChiTietMuon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietMuon_CuonSach_maCS] FOREIGN KEY([maCS])
REFERENCES [dbo].[CuonSach] ([maCS])
GO
ALTER TABLE [dbo].[ChiTietMuon] CHECK CONSTRAINT [FK_ChiTietMuon_CuonSach_maCS]
GO
ALTER TABLE [dbo].[ChiTietMuon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietMuon_PhieuMuonTra_soPMT] FOREIGN KEY([soPMT])
REFERENCES [dbo].[PhieuMuonTra] ([soPMT])
GO
ALTER TABLE [dbo].[ChiTietMuon] CHECK CONSTRAINT [FK_ChiTietMuon_PhieuMuonTra_soPMT]
GO
ALTER TABLE [dbo].[ChiTietNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhap_PhieuNhap_soPN] FOREIGN KEY([soPN])
REFERENCES [dbo].[PhieuNhap] ([soPN])
GO
ALTER TABLE [dbo].[ChiTietNhap] CHECK CONSTRAINT [FK_ChiTietNhap_PhieuNhap_soPN]
GO
ALTER TABLE [dbo].[ChiTietNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhap_TuaSach_maTS] FOREIGN KEY([maTS])
REFERENCES [dbo].[TuaSach] ([maTS])
GO
ALTER TABLE [dbo].[ChiTietNhap] CHECK CONSTRAINT [FK_ChiTietNhap_TuaSach_maTS]
GO
ALTER TABLE [dbo].[CuonSach]  WITH CHECK ADD  CONSTRAINT [FK_CuonSach_TuaSach_maTS] FOREIGN KEY([maTS])
REFERENCES [dbo].[TuaSach] ([maTS])
GO
ALTER TABLE [dbo].[CuonSach] CHECK CONSTRAINT [FK_CuonSach_TuaSach_maTS]
GO
ALTER TABLE [dbo].[PhieuMuonTra]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonTra_DocGia_maDG] FOREIGN KEY([maDG])
REFERENCES [dbo].[DocGia] ([maDG])
GO
ALTER TABLE [dbo].[PhieuMuonTra] CHECK CONSTRAINT [FK_PhieuMuonTra_DocGia_maDG]
GO
ALTER TABLE [dbo].[PhieuMuonTra]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonTra_TheLoai_maTT] FOREIGN KEY([maTT])
REFERENCES [dbo].[ThuThu] ([maTT])
GO
ALTER TABLE [dbo].[PhieuMuonTra] CHECK CONSTRAINT [FK_PhieuMuonTra_TheLoai_maTT]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NCC_maNCC] FOREIGN KEY([maNCC])
REFERENCES [dbo].[NCC] ([maNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NCC_maNCC]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_ThuThu_maTT] FOREIGN KEY([maTT])
REFERENCES [dbo].[ThuThu] ([maTT])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_ThuThu_maTT]
GO
ALTER TABLE [dbo].[PhieuPhat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuPhat_PhieuMuonTra_soPMT] FOREIGN KEY([soPMT])
REFERENCES [dbo].[PhieuMuonTra] ([soPMT])
GO
ALTER TABLE [dbo].[PhieuPhat] CHECK CONSTRAINT [FK_PhieuPhat_PhieuMuonTra_soPMT]
GO
ALTER TABLE [dbo].[SachCN]  WITH CHECK ADD  CONSTRAINT [FK_SachCN_NCC_maNCC] FOREIGN KEY([maNCC])
REFERENCES [dbo].[NCC] ([maNCC])
GO
ALTER TABLE [dbo].[SachCN] CHECK CONSTRAINT [FK_SachCN_NCC_maNCC]
GO
ALTER TABLE [dbo].[SachCN]  WITH CHECK ADD  CONSTRAINT [FK_SachCN_ThuThu_maTT] FOREIGN KEY([maTT])
REFERENCES [dbo].[ThuThu] ([maTT])
GO
ALTER TABLE [dbo].[SachCN] CHECK CONSTRAINT [FK_SachCN_ThuThu_maTT]
GO
ALTER TABLE [dbo].[tbl_Users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Users_tblQuyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[tblQuyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[tbl_Users] CHECK CONSTRAINT [FK_tbl_Users_tblQuyen]
GO
ALTER TABLE [dbo].[TS_TL]  WITH CHECK ADD  CONSTRAINT [FK_TS_TL_TheLoai_maTL] FOREIGN KEY([maTL])
REFERENCES [dbo].[TheLoai] ([maTL])
GO
ALTER TABLE [dbo].[TS_TL] CHECK CONSTRAINT [FK_TS_TL_TheLoai_maTL]
GO
ALTER TABLE [dbo].[TS_TL]  WITH CHECK ADD  CONSTRAINT [FK_TS_TL_TuaSach_maTS] FOREIGN KEY([maTS])
REFERENCES [dbo].[TuaSach] ([maTS])
GO
ALTER TABLE [dbo].[TS_TL] CHECK CONSTRAINT [FK_TS_TL_TuaSach_maTS]
GO
ALTER TABLE [dbo].[TuaSach]  WITH CHECK ADD  CONSTRAINT [FK_TuaSach_NXB_maNXB] FOREIGN KEY([maNXB])
REFERENCES [dbo].[NXB] ([maNXB])
GO
ALTER TABLE [dbo].[TuaSach] CHECK CONSTRAINT [FK_TuaSach_NXB_maNXB]
GO
ALTER TABLE [dbo].[Viet]  WITH CHECK ADD  CONSTRAINT [FK_Viet_TuaSach_maTG] FOREIGN KEY([maTG])
REFERENCES [dbo].[TacGia] ([maTG])
GO
ALTER TABLE [dbo].[Viet] CHECK CONSTRAINT [FK_Viet_TuaSach_maTG]
GO
ALTER TABLE [dbo].[Viet]  WITH CHECK ADD  CONSTRAINT [FK_Viet_TuaSach_maTS] FOREIGN KEY([maTS])
REFERENCES [dbo].[TuaSach] ([maTS])
GO
ALTER TABLE [dbo].[Viet] CHECK CONSTRAINT [FK_Viet_TuaSach_maTS]
GO
ALTER TABLE [dbo].[CuonSach]  WITH CHECK ADD  CONSTRAINT [CK_CuonSach_trangThai] CHECK  (([trangThai]=N'Mất' OR [trangThai]=N'Hỏng' OR [trangThai]=N'Cũ' OR [trangThai]=N'Tốt'))
GO
ALTER TABLE [dbo].[CuonSach] CHECK CONSTRAINT [CK_CuonSach_trangThai]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [CK_DocGia_gioiTinh] CHECK  (([gioiTinh]=N'Nữ' OR [gioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [CK_DocGia_gioiTinh]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [CK_DocGia_loaiDG] CHECK  (([loaiDG]=N'Mượn/Đọc' OR [loaiDG]=N'Đọc'))
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [CK_DocGia_loaiDG]
GO
ALTER TABLE [dbo].[PhieuPhat]  WITH CHECK ADD  CONSTRAINT [CK_PhieuPhat_loiVP] CHECK  (([loiVP]=N'Trả muộn' OR [loiVP]=N'Làm hỏng' OR [loiVP]=N'Làm mất'))
GO
ALTER TABLE [dbo].[PhieuPhat] CHECK CONSTRAINT [CK_PhieuPhat_loiVP]
GO
ALTER TABLE [dbo].[SachCN]  WITH CHECK ADD  CONSTRAINT [CK_SachCN_loaiHinhNhap] CHECK  (([loaiHinhNhap]=N'Nhập thêm' OR [loaiHinhNhap]=N'Nhập mới'))
GO
ALTER TABLE [dbo].[SachCN] CHECK CONSTRAINT [CK_SachCN_loaiHinhNhap]
GO
ALTER TABLE [dbo].[TacGia]  WITH CHECK ADD  CONSTRAINT [CK_TacGia_gioiTinh] CHECK  (([gioiTinh]=N'Nữ' OR [gioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[TacGia] CHECK CONSTRAINT [CK_TacGia_gioiTinh]
GO
ALTER TABLE [dbo].[ThuThu]  WITH CHECK ADD  CONSTRAINT [CK_gioiTinh] CHECK  (([gioiTinh]=N'Nữ' OR [gioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[ThuThu] CHECK CONSTRAINT [CK_gioiTinh]
GO
USE [master]
GO
ALTER DATABASE [ThuVien] SET  READ_WRITE 
GO
