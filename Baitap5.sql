USE [master]
GO
/****** Object:  Database [CUA_HANG_HOA]    Script Date: 4/23/2025 10:50:47 AM ******/
CREATE DATABASE [CUA_HANG_HOA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CUA_HANG_HOA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.LINH\MSSQL\DATA\CUA_HANG_HOA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CUA_HANG_HOA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.LINH\MSSQL\DATA\CUA_HANG_HOA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CUA_HANG_HOA] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CUA_HANG_HOA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CUA_HANG_HOA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET ARITHABORT OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CUA_HANG_HOA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CUA_HANG_HOA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CUA_HANG_HOA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CUA_HANG_HOA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET RECOVERY FULL 
GO
ALTER DATABASE [CUA_HANG_HOA] SET  MULTI_USER 
GO
ALTER DATABASE [CUA_HANG_HOA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CUA_HANG_HOA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CUA_HANG_HOA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CUA_HANG_HOA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CUA_HANG_HOA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CUA_HANG_HOA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CUA_HANG_HOA', N'ON'
GO
ALTER DATABASE [CUA_HANG_HOA] SET QUERY_STORE = ON
GO
ALTER DATABASE [CUA_HANG_HOA] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CUA_HANG_HOA]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 4/23/2025 10:50:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[madh] [int] NOT NULL,
	[masp] [int] NOT NULL,
	[soluong] [int] NULL,
	[dongia] [int] NULL,
 CONSTRAINT [PK_chitiethoadon] PRIMARY KEY CLUSTERED 
(
	[madh] ASC,
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[donhang]    Script Date: 4/23/2025 10:50:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donhang](
	[madh] [int] NOT NULL,
	[ngaylap] [date] NULL,
	[makh] [int] NULL,
	[manv] [int] NULL,
	[tongtien] [int] NULL,
 CONSTRAINT [PK_donhang] PRIMARY KEY CLUSTERED 
(
	[madh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach hang]    Script Date: 4/23/2025 10:50:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach hang](
	[MaKH] [int] NOT NULL,
	[TenKH] [varchar](10) NULL,
	[sdt] [int] NULL,
	[diachi] [varchar](10) NULL,
	[email] [varchar](10) NULL,
 CONSTRAINT [PK_khach hang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 4/23/2025 10:50:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[madh] [int] NULL,
	[tongtien_khaibao] [money] NULL,
	[tongtien_thucte] [money] NULL,
	[TIME] [datetime] NULL,
	[hanhdong] [nvarchar](50) NULL,
	[ghichu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 4/23/2025 10:50:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manv] [int] NOT NULL,
	[tennv] [varchar](10) NULL,
	[ngaysinh] [date] NULL,
	[sdt] [int] NULL,
	[chucvu] [varchar](10) NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhapkho]    Script Date: 4/23/2025 10:50:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhapkho](
	[maphieu] [int] NOT NULL,
	[masp] [int] NULL,
	[soluong] [int] NULL,
	[ngaynhap] [date] NULL,
 CONSTRAINT [PK_nhapkho] PRIMARY KEY CLUSTERED 
(
	[maphieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 4/23/2025 10:50:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[masp] [int] NOT NULL,
	[tensp] [varchar](50) NULL,
	[loaisp] [nvarchar](50) NULL,
	[gia] [int] NOT NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chitiethoadon] ([madh], [masp], [soluong], [dongia]) VALUES (1, 1, 3, 50)
INSERT [dbo].[chitiethoadon] ([madh], [masp], [soluong], [dongia]) VALUES (2, 2, 7, 20)
INSERT [dbo].[chitiethoadon] ([madh], [masp], [soluong], [dongia]) VALUES (3, 3, 7, 73)
INSERT [dbo].[chitiethoadon] ([madh], [masp], [soluong], [dongia]) VALUES (101, 1, 5, 100)
GO
INSERT [dbo].[donhang] ([madh], [ngaylap], [makh], [manv], [tongtien]) VALUES (1, CAST(N'2025-03-11' AS Date), 1, 1, 20)
INSERT [dbo].[donhang] ([madh], [ngaylap], [makh], [manv], [tongtien]) VALUES (2, CAST(N'2025-02-01' AS Date), 2, 2, 40)
INSERT [dbo].[donhang] ([madh], [ngaylap], [makh], [manv], [tongtien]) VALUES (3, CAST(N'2025-03-07' AS Date), 3, 3, 25)
INSERT [dbo].[donhang] ([madh], [ngaylap], [makh], [manv], [tongtien]) VALUES (101, NULL, NULL, NULL, 100)
GO
INSERT [dbo].[khach hang] ([MaKH], [TenKH], [sdt], [diachi], [email]) VALUES (1, N'linh', 336, N'thainguyen', N'k22@')
INSERT [dbo].[khach hang] ([MaKH], [TenKH], [sdt], [diachi], [email]) VALUES (2, N'my', 932, N'bacgiang', N'k21@')
INSERT [dbo].[khach hang] ([MaKH], [TenKH], [sdt], [diachi], [email]) VALUES (3, N'trang', 234, N'thainguyen', N'k22@')
GO
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([log_id], [madh], [tongtien_khaibao], [tongtien_thucte], [TIME], [hanhdong], [ghichu]) VALUES (1, 101, 100.0000, 0.0000, CAST(N'2025-04-23T10:22:24.130' AS DateTime), NULL, N'Tổng tiền đơn hàng không khớp với chi tiết hóa đơn')
SET IDENTITY_INSERT [dbo].[Log] OFF
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [sdt], [chucvu]) VALUES (1, N'linh', CAST(N'2004-02-01' AS Date), 123, N'sv')
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [sdt], [chucvu]) VALUES (2, N'bình', CAST(N'2006-02-01' AS Date), 23, N'sv')
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [sdt], [chucvu]) VALUES (3, N'my', CAST(N'2004-02-05' AS Date), 456, N'sv')
GO
INSERT [dbo].[nhapkho] ([maphieu], [masp], [soluong], [ngaynhap]) VALUES (1, 1, 4, CAST(N'2025-03-01' AS Date))
INSERT [dbo].[nhapkho] ([maphieu], [masp], [soluong], [ngaynhap]) VALUES (2, 2, 2, CAST(N'2025-02-07' AS Date))
INSERT [dbo].[nhapkho] ([maphieu], [masp], [soluong], [ngaynhap]) VALUES (3, 3, 6, CAST(N'2025-04-01' AS Date))
GO
INSERT [dbo].[sanpham] ([masp], [tensp], [loaisp], [gia], [soluong]) VALUES (1, N'hoahong', N'do', 5000, 2)
INSERT [dbo].[sanpham] ([masp], [tensp], [loaisp], [gia], [soluong]) VALUES (2, N'hoahong', N'vang', 6000, 2)
INSERT [dbo].[sanpham] ([masp], [tensp], [loaisp], [gia], [soluong]) VALUES (3, N'hoacuc', N'trang', 4000, 3)
GO
ALTER TABLE [dbo].[Log] ADD  DEFAULT (getdate()) FOR [TIME]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_donhang] FOREIGN KEY([madh])
REFERENCES [dbo].[donhang] ([madh])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_donhang]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_sanpham] FOREIGN KEY([masp])
REFERENCES [dbo].[sanpham] ([masp])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_sanpham]
GO
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD  CONSTRAINT [FK_donhang_khach hang] FOREIGN KEY([makh])
REFERENCES [dbo].[khach hang] ([MaKH])
GO
ALTER TABLE [dbo].[donhang] CHECK CONSTRAINT [FK_donhang_khach hang]
GO
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD  CONSTRAINT [FK_donhang_nhanvien] FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
GO
ALTER TABLE [dbo].[donhang] CHECK CONSTRAINT [FK_donhang_nhanvien]
GO
ALTER TABLE [dbo].[khach hang]  WITH CHECK ADD  CONSTRAINT [FK_khach hang_khach hang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[khach hang] ([MaKH])
GO
ALTER TABLE [dbo].[khach hang] CHECK CONSTRAINT [FK_khach hang_khach hang]
GO
ALTER TABLE [dbo].[nhapkho]  WITH CHECK ADD  CONSTRAINT [FK_nhapkho_sanpham] FOREIGN KEY([masp])
REFERENCES [dbo].[sanpham] ([masp])
GO
ALTER TABLE [dbo].[nhapkho] CHECK CONSTRAINT [FK_nhapkho_sanpham]
GO
/****** Object:  Trigger [dbo].[trg_LogTongTienLech]    Script Date: 4/23/2025 10:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ngo Thi Thuy Linh
-- Create date: 2025-04-23
-- Description:kiem tra so tien lech
-- =============================================
CREATE TRIGGER [dbo].[trg_LogTongTienLech]
ON [dbo].[donhang]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Thêm vào bảng log nếu phát hiện lệch tổng tiền
    INSERT INTO Log(madh, tongtien_khaibao, tongtien_thucte, ghichu)
    SELECT 
        i.madh,
        i.tongtien,
        ISNULL(ct.tongtien_thucte, 0),
        N'Tổng tiền đơn hàng không khớp với chi tiết hóa đơn'
    FROM inserted i
    OUTER APPLY (
        SELECT SUM(soluong * dongia) AS tongtien_thucte
        FROM chitiethoadon
        WHERE madh = i.madh
    ) ct
    WHERE i.tongtien <> ISNULL(ct.tongtien_thucte, 0);
END;
GO
ALTER TABLE [dbo].[donhang] ENABLE TRIGGER [trg_LogTongTienLech]
GO
/****** Object:  Trigger [dbo].[trg_TongTienLech]    Script Date: 4/23/2025 10:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_TongTienLech]
ON [dbo].[donhang]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Thêm vào bảng log nếu phát hiện lệch tổng tiền
    INSERT INTO Log(madh, tongtien_khaibao, tongtien_thucte, ghichu)
    SELECT 
        i.madh,
        i.tongtien,
        ISNULL(ct.tongtien_thucte, 0),
        N'Tổng tiền đơn hàng không khớp với chi tiết hóa đơn'
    FROM inserted i
    OUTER APPLY (
        SELECT SUM(soluong * dongia) AS tongtien_thucte
        FROM chitiethoadon
        WHERE madh = i.madh
    ) ct
    WHERE i.tongtien <> ISNULL(ct.tongtien_thucte, 0);
END;
GO
ALTER TABLE [dbo].[donhang] ENABLE TRIGGER [trg_TongTienLech]
GO
USE [master]
GO
ALTER DATABASE [CUA_HANG_HOA] SET  READ_WRITE 
GO
