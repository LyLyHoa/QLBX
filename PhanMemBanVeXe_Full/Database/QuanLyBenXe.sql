USE [QuanLyBenXe]
GO
/****** Object:  UserDefinedFunction [dbo].[AddmasoVe]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------Function cho bang ban ve
CREATE FUNCTION [dbo].[AddmasoVe](@makt char(2))
RETURNS char(6)
AS
BEGIN 
	DECLARE @iMaso int 
  	DECLARE @vMaso varchar(9) 
  	IF @makt='VE' SET @iMaso= (SELECT MAX(RIGHT(IdVe, 4)) FROM BanVe)  	
	IF (@iMaso IS NULL) SET @vMaso= @makt+ CONVERT(varchar(6),'0001')
	ELSE
	BEGIN
		SET @iMaso= @iMaso+1
	    	SET @vMaso= '000'+ CONVERT(varchar,@iMaso) 
	    	SET @vMaso= @makt+ RIGHT(@vMaso,4)
	END
RETURN @vMaso 
END
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Xe](
	[So_Xe] [varchar](8) NOT NULL,
	[Hieu_Xe] [varchar](50) NULL,
	[Doi_Xe] [varchar](4) NULL,
	[So_Cho_Ngoi] [int] NULL,
 CONSTRAINT [pk_Xe] PRIMARY KEY CLUSTERED 
(
	[So_Xe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Xe] ([So_Xe], [Hieu_Xe], [Doi_Xe], [So_Cho_Ngoi]) VALUES (N'50H-8888', N'Huyndai', N'2012', 45)
INSERT [dbo].[Xe] ([So_Xe], [Hieu_Xe], [Doi_Xe], [So_Cho_Ngoi]) VALUES (N'50S-2934', N'Hyundai Country', N'2005', 25)
INSERT [dbo].[Xe] ([So_Xe], [Hieu_Xe], [Doi_Xe], [So_Cho_Ngoi]) VALUES (N'50S-9999', N'Huyndai', N'2012', 45)
INSERT [dbo].[Xe] ([So_Xe], [Hieu_Xe], [Doi_Xe], [So_Cho_Ngoi]) VALUES (N'50Y-3669', N'Toyota', N'2009', 16)
INSERT [dbo].[Xe] ([So_Xe], [Hieu_Xe], [Doi_Xe], [So_Cho_Ngoi]) VALUES (N'52N-3333', N'Huyndai Country', N'2008', 30)
INSERT [dbo].[Xe] ([So_Xe], [Hieu_Xe], [Doi_Xe], [So_Cho_Ngoi]) VALUES (N'53Y-7788', N'Ford Everest', N'2009', 7)
INSERT [dbo].[Xe] ([So_Xe], [Hieu_Xe], [Doi_Xe], [So_Cho_Ngoi]) VALUES (N'54H-1234', N'Hyundai Country', N'2008', 30)
INSERT [dbo].[Xe] ([So_Xe], [Hieu_Xe], [Doi_Xe], [So_Cho_Ngoi]) VALUES (N'55Y-7777', N'Ford Transit', N'2010', 16)
/****** Object:  Table [dbo].[TuyenXe]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TuyenXe](
	[IdTuyen] [varchar](30) NOT NULL,
	[TenTuyen] [nvarchar](30) NULL,
	[DiaDiemDi] [nvarchar](30) NULL,
	[DiaDiemDen] [nvarchar](30) NULL,
 CONSTRAINT [pk_TuyenXe] PRIMARY KEY CLUSTERED 
(
	[IdTuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TenTuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TuyenXe] ([IdTuyen], [TenTuyen], [DiaDiemDi], [DiaDiemDen]) VALUES (N'107', N'Sài Gòn - Nha Trang', N'Sài Gòn', N'Nha Trang')
INSERT [dbo].[TuyenXe] ([IdTuyen], [TenTuyen], [DiaDiemDi], [DiaDiemDen]) VALUES (N'153', N'Sài Gòn - Kiên Giang', N'Sài Gòn', N'Kiên Giang')
INSERT [dbo].[TuyenXe] ([IdTuyen], [TenTuyen], [DiaDiemDi], [DiaDiemDen]) VALUES (N'173', N'Sài Gòn - Bạc Liêu', N'Sài Gòn', N'Bạc Liêu')
INSERT [dbo].[TuyenXe] ([IdTuyen], [TenTuyen], [DiaDiemDi], [DiaDiemDen]) VALUES (N'23', N'Sài Gòn - Đà Lạt', N'Sài Gòn', N'Đà Lạt')
INSERT [dbo].[TuyenXe] ([IdTuyen], [TenTuyen], [DiaDiemDi], [DiaDiemDen]) VALUES (N'250', N'Sài Gòn - Cần Thơ', N'Sài Gòn', N'Cần Thơ')
INSERT [dbo].[TuyenXe] ([IdTuyen], [TenTuyen], [DiaDiemDi], [DiaDiemDen]) VALUES (N'284', N'Sài Gòn - Bình Thuận', N'Sài Gòn', N'Bình Thuận')
INSERT [dbo].[TuyenXe] ([IdTuyen], [TenTuyen], [DiaDiemDi], [DiaDiemDen]) VALUES (N'303', N'Sài Gòn - Tây Ninh', N'Sài Gòn', N'Tây Ninh')
INSERT [dbo].[TuyenXe] ([IdTuyen], [TenTuyen], [DiaDiemDi], [DiaDiemDen]) VALUES (N'503', N'Sài Gòn - Cà Mau', N'Sài Gòn', N'Cà Mau')
INSERT [dbo].[TuyenXe] ([IdTuyen], [TenTuyen], [DiaDiemDi], [DiaDiemDen]) VALUES (N'547', N'Sài Gòn - Phan Thiết', N'Sài Gòn', N'Phan Thiết')
INSERT [dbo].[TuyenXe] ([IdTuyen], [TenTuyen], [DiaDiemDi], [DiaDiemDen]) VALUES (N'602', N'Sài Gòn - Vũng Tàu', N'Sài Gòn', N'Vũng Tàu')
/****** Object:  UserDefinedFunction [dbo].[AddmasoChuyen]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------Function cho bang chuyen xe
CREATE FUNCTION [dbo].[AddmasoChuyen](@makt char(2))
RETURNS char(6)
AS
BEGIN 
	DECLARE @iMaso int 
  	DECLARE @vMaso varchar(9) 
  	IF @makt='CX' SET @iMaso= (SELECT MAX(RIGHT(IdChuyen, 4)) FROM ChuyenXe)  	
	IF (@iMaso IS NULL) SET @vMaso= @makt+ CONVERT(varchar(6),'0001')
	ELSE
	BEGIN
		SET @iMaso= @iMaso+1
	    	SET @vMaso= '000'+ CONVERT(varchar,@iMaso) 
	    	SET @vMaso= @makt+ RIGHT(@vMaso,4)
	END
RETURN @vMaso 
END
GO
/****** Object:  Table [dbo].[ChuyenXe]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenXe](
	[IdChuyen] [varchar](30) NOT NULL,
	[IdTuyen] [varchar](30) NULL,
	[NgayDi] [date] NULL,
	[Gio] [varchar](10) NULL,
	[So_Xe] [varchar](8) NULL,
 CONSTRAINT [pk_ChuyenXe] PRIMARY KEY CLUSTERED 
(
	[IdChuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChuyenXe] ([IdChuyen], [IdTuyen], [NgayDi], [Gio], [So_Xe]) VALUES (N'CX0001', N'503', CAST(0xF53C0B00 AS Date), N'20:00', N'50S-9999')
INSERT [dbo].[ChuyenXe] ([IdChuyen], [IdTuyen], [NgayDi], [Gio], [So_Xe]) VALUES (N'CX0002', N'173', CAST(0xFB3C0B00 AS Date), N'08:00', N'52N-3333')
INSERT [dbo].[ChuyenXe] ([IdChuyen], [IdTuyen], [NgayDi], [Gio], [So_Xe]) VALUES (N'CX0003', N'503', CAST(0xF53C0B00 AS Date), N'08:00', N'50H-8888')
INSERT [dbo].[ChuyenXe] ([IdChuyen], [IdTuyen], [NgayDi], [Gio], [So_Xe]) VALUES (N'CX0004', N'250', CAST(0xF53C0B00 AS Date), N'10:00', N'50S-2934')
INSERT [dbo].[ChuyenXe] ([IdChuyen], [IdTuyen], [NgayDi], [Gio], [So_Xe]) VALUES (N'CX0005', N'602', CAST(0xF83C0B00 AS Date), N'12:00', N'53Y-7788')
/****** Object:  Table [dbo].[BanVe]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BanVe](
	[IdVe] [varchar](30) NOT NULL,
	[IdChuyen] [varchar](30) NULL,
	[TenHanhKhach] [nvarchar](30) NULL,
	[SDTHanhKhach] [varchar](15) NULL,
 CONSTRAINT [pk_BanVe] PRIMARY KEY CLUSTERED 
(
	[IdVe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BanVe] ([IdVe], [IdChuyen], [TenHanhKhach], [SDTHanhKhach]) VALUES (N'VE0001', N'CX0001', N'Nguyễn Đông Hưng', N'0987456201')
INSERT [dbo].[BanVe] ([IdVe], [IdChuyen], [TenHanhKhach], [SDTHanhKhach]) VALUES (N'VE0002', N'CX0005', N'Nguyễn Ngọc Bình', N'0909332555')
INSERT [dbo].[BanVe] ([IdVe], [IdChuyen], [TenHanhKhach], [SDTHanhKhach]) VALUES (N'VE0003', N'CX0003', N'Đỗ Văn Triều', N'0938717344')
INSERT [dbo].[BanVe] ([IdVe], [IdChuyen], [TenHanhKhach], [SDTHanhKhach]) VALUES (N'VE0004', N'CX0001', N'Vương Văn Vĩ', N'0938723044')
INSERT [dbo].[BanVe] ([IdVe], [IdChuyen], [TenHanhKhach], [SDTHanhKhach]) VALUES (N'VE0005', N'CX0002', N'Nguyễn Trọng Nghĩa', N'938373094')
INSERT [dbo].[BanVe] ([IdVe], [IdChuyen], [TenHanhKhach], [SDTHanhKhach]) VALUES (N'VE0006', N'CX0002', N'Nguyễn Trọng Nghĩa', N'938373094')
/****** Object:  Table [dbo].[BangGia]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BangGia](
	[idTuyen] [varchar](30) NOT NULL,
	[gia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTuyen] ASC,
	[gia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BangGia] ([idTuyen], [gia]) VALUES (N'107', 180000)
INSERT [dbo].[BangGia] ([idTuyen], [gia]) VALUES (N'153', 135000)
INSERT [dbo].[BangGia] ([idTuyen], [gia]) VALUES (N'173', 180000)
INSERT [dbo].[BangGia] ([idTuyen], [gia]) VALUES (N'23', 165000)
INSERT [dbo].[BangGia] ([idTuyen], [gia]) VALUES (N'250', 125000)
INSERT [dbo].[BangGia] ([idTuyen], [gia]) VALUES (N'284', 125000)
INSERT [dbo].[BangGia] ([idTuyen], [gia]) VALUES (N'303', 85000)
INSERT [dbo].[BangGia] ([idTuyen], [gia]) VALUES (N'503', 200000)
INSERT [dbo].[BangGia] ([idTuyen], [gia]) VALUES (N'547', 155000)
INSERT [dbo].[BangGia] ([idTuyen], [gia]) VALUES (N'602', 85000)
/****** Object:  UserDefinedFunction [dbo].[Addmaso]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------
/* Tao 1 function Xe dung de cap nhat tang ma so tu dong cho cac Table () */
---------------------------------------------------------------------------
--Tu dong tang IdThoiDiem cho bang thoi diem


CREATE FUNCTION [dbo].[Addmaso](@makt char(2))
RETURNS char(6)
AS
BEGIN 
	DECLARE @iMaso int 
  	DECLARE @vMaso varchar(9) 
  	IF @makt='TD' SET @iMaso= (SELECT MAX(RIGHT(IdThoiDiem, 4)) FROM ThoiDiem)  	
	IF (@iMaso IS NULL) SET @vMaso= @makt+ CONVERT(varchar(6),'0001')
	ELSE
	BEGIN
		SET @iMaso= @iMaso+1
	    	SET @vMaso= '000'+ CONVERT(varchar,@iMaso) 
	    	SET @vMaso= @makt+ RIGHT(@vMaso,4)
	END
RETURN @vMaso 
END
GO
/****** Object:  Table [dbo].[ThoiDiem]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThoiDiem](
	[IdThoiDiem] [varchar](30) NOT NULL,
	[Ngay] [date] NOT NULL,
	[Gio] [varchar](10) NOT NULL,
 CONSTRAINT [pk_ThoiDiem] PRIMARY KEY CLUSTERED 
(
	[IdThoiDiem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietTuyen]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietTuyen](
	[IdTuyen] [varchar](30) NOT NULL,
	[IdThoiDiem] [varchar](30) NOT NULL,
 CONSTRAINT [pk_ChiTietTuyen] PRIMARY KEY CLUSTERED 
(
	[IdTuyen] ASC,
	[IdThoiDiem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChoNgoi]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChoNgoi](
	[IdChuyen] [varchar](30) NOT NULL,
	[So_Xe] [varchar](8) NOT NULL,
	[TenChoNgoi] [nvarchar](10) NOT NULL,
 CONSTRAINT [pk_ChoNgoi] PRIMARY KEY CLUSTERED 
(
	[IdChuyen] ASC,
	[So_Xe] ASC,
	[TenChoNgoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChoNgoi] ([IdChuyen], [So_Xe], [TenChoNgoi]) VALUES (N'CX0001', N'50S-9999', N'1')
INSERT [dbo].[ChoNgoi] ([IdChuyen], [So_Xe], [TenChoNgoi]) VALUES (N'CX0001', N'50S-9999', N'23')
INSERT [dbo].[ChoNgoi] ([IdChuyen], [So_Xe], [TenChoNgoi]) VALUES (N'CX0002', N'52N-3333', N'10')
INSERT [dbo].[ChoNgoi] ([IdChuyen], [So_Xe], [TenChoNgoi]) VALUES (N'CX0002', N'52N-3333', N'11')
INSERT [dbo].[ChoNgoi] ([IdChuyen], [So_Xe], [TenChoNgoi]) VALUES (N'CX0002', N'52N-3333', N'16')
INSERT [dbo].[ChoNgoi] ([IdChuyen], [So_Xe], [TenChoNgoi]) VALUES (N'CX0002', N'52N-3333', N'2')
INSERT [dbo].[ChoNgoi] ([IdChuyen], [So_Xe], [TenChoNgoi]) VALUES (N'CX0002', N'52N-3333', N'4')
INSERT [dbo].[ChoNgoi] ([IdChuyen], [So_Xe], [TenChoNgoi]) VALUES (N'CX0002', N'52N-3333', N'5')
INSERT [dbo].[ChoNgoi] ([IdChuyen], [So_Xe], [TenChoNgoi]) VALUES (N'CX0003', N'50H-8888', N'30')
INSERT [dbo].[ChoNgoi] ([IdChuyen], [So_Xe], [TenChoNgoi]) VALUES (N'CX0005', N'53Y-7788', N'1')
/****** Object:  StoredProcedure [dbo].[usp_MuaVe]    Script Date: 03/23/2017 15:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_MuaVe] 
@idChuyen varchar(30),
@ten nvarchar(30),
@sdt int,
@soXe varchar(8),
@tenChoNgoi varchar(10)
as
begin
	declare @soChoNgoi int = (select Cast(So_Cho_Ngoi as int) from Xe where So_Xe = @soXe )
	if(cast(@tenChoNgoi as int) <=0 or cast(@tenChoNgoi as int)>@soChoNgoi) return
	insert ChoNgoi(IdChuyen,So_Xe,TenChoNgoi) values(@idChuyen,@soXe,@tenChoNgoi)
	insert BanVe(IdVe,IdChuyen,TenHanhKhach,SDTHanhKhach) values(dbo.addmasoVe('VE'),@idChuyen,@ten,@sdt)
end
GO
/****** Object:  Table [dbo].[LoaiNguoiDung]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiNguoiDung](
	[IdLoaiND] [varchar](30) NOT NULL,
	[TenLoaiND] [nvarchar](30) NOT NULL,
 CONSTRAINT [pk_LoaiNguoiDung] PRIMARY KEY CLUSTERED 
(
	[IdLoaiND] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LoaiNguoiDung] ([IdLoaiND], [TenLoaiND]) VALUES (N'Admin', N'Administrator')
INSERT [dbo].[LoaiNguoiDung] ([IdLoaiND], [TenLoaiND]) VALUES (N'Nhan_Vien', N'Nhân Viên')
INSERT [dbo].[LoaiNguoiDung] ([IdLoaiND], [TenLoaiND]) VALUES (N'Quan_Ly', N'Quản Lý')
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiaDiem](
	[IdDiaDiem] [varchar](30) NOT NULL,
	[TenDiaDiem] [nvarchar](30) NOT NULL,
 CONSTRAINT [pk_DiaDiem] PRIMARY KEY CLUSTERED 
(
	[IdDiaDiem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DiaDiem] ([IdDiaDiem], [TenDiaDiem]) VALUES (N'BL', N'Bạc Liêu')
INSERT [dbo].[DiaDiem] ([IdDiaDiem], [TenDiaDiem]) VALUES (N'BT', N'Bình Thuận')
INSERT [dbo].[DiaDiem] ([IdDiaDiem], [TenDiaDiem]) VALUES (N'CM', N'Cà Mau')
INSERT [dbo].[DiaDiem] ([IdDiaDiem], [TenDiaDiem]) VALUES (N'CT', N'Cần Thơ')
INSERT [dbo].[DiaDiem] ([IdDiaDiem], [TenDiaDiem]) VALUES (N'DL', N'Đà Lạt')
INSERT [dbo].[DiaDiem] ([IdDiaDiem], [TenDiaDiem]) VALUES (N'KG', N'Kiên Giang')
INSERT [dbo].[DiaDiem] ([IdDiaDiem], [TenDiaDiem]) VALUES (N'NT', N'Nha Trang')
INSERT [dbo].[DiaDiem] ([IdDiaDiem], [TenDiaDiem]) VALUES (N'PT', N'Phan Thiết')
INSERT [dbo].[DiaDiem] ([IdDiaDiem], [TenDiaDiem]) VALUES (N'SG', N'Sài Gòn')
INSERT [dbo].[DiaDiem] ([IdDiaDiem], [TenDiaDiem]) VALUES (N'TN', N'Tây Ninh')
INSERT [dbo].[DiaDiem] ([IdDiaDiem], [TenDiaDiem]) VALUES (N'VT', N'Vũng Tàu')
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[IdNguoiDung] [varchar](30) NOT NULL,
	[PassND] [varchar](30) NULL,
	[HoTen] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDT] [varchar](15) NULL,
	[IdLoaiND] [varchar](30) NOT NULL,
 CONSTRAINT [pk_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[IdNguoiDung] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NguoiDung] ([IdNguoiDung], [PassND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [IdLoaiND]) VALUES (N'admin', N'123456', N'Đỗ Văn Triều', CAST(0x81120B00 AS Date), N'Nam', N'Q.7, Tp. Hồ Chí Minh', N'0938717344', N'Admin')
INSERT [dbo].[NguoiDung] ([IdNguoiDung], [PassND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [IdLoaiND]) VALUES (N'mytien', N'123456', N'Quách Mỹ Tiên', CAST(0x81120B00 AS Date), N'Nữ', N'Q.3, Tp. Hồ Chí Minh', N'0938717344', N'Nhan_Vien')
INSERT [dbo].[NguoiDung] ([IdNguoiDung], [PassND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [IdLoaiND]) VALUES (N'toanh', N'123456', N'Trần Tố Anh', CAST(0x81120B00 AS Date), N'Nữ', N'Q.5, Tp. Hồ Chí Minh', N'0938717344', N'Nhan_Vien')
INSERT [dbo].[NguoiDung] ([IdNguoiDung], [PassND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [IdLoaiND]) VALUES (N'vanhoang', N'123456', N'Hồ Văn Hoàng', CAST(0x81120B00 AS Date), N'Nam', N'Q.8, Tp. Hồ Chí Minh', N'0938717344', N'Quan_Ly')
INSERT [dbo].[NguoiDung] ([IdNguoiDung], [PassND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [IdLoaiND]) VALUES (N'vantrieu', N'123456', N'Đỗ Văn Triều', CAST(0x81120B00 AS Date), N'Nam', N'Q.7, Tp. Hồ Chí Minh', N'0938717344', N'Quan_Ly')
INSERT [dbo].[NguoiDung] ([IdNguoiDung], [PassND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [IdLoaiND]) VALUES (N'vantrieu2', N'123456', N'Đỗ Văn Triều', CAST(0x81120B00 AS Date), N'Nam', N'Q.7, Tp. Hồ Chí Minh', N'0938717344', N'Nhan_Vien')
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 03/23/2017 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IdNhanVien] [varchar](30) NOT NULL,
	[Xe] [int] NOT NULL,
	[TuyenXe] [int] NOT NULL,
	[ThoiDiem] [int] NOT NULL,
	[ChuyenXe] [int] NOT NULL,
	[BanVe] [int] NOT NULL,
 CONSTRAINT [pk_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IdNhanVien] ASC,
	[Xe] ASC,
	[TuyenXe] ASC,
	[ThoiDiem] ASC,
	[ChuyenXe] ASC,
	[BanVe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PhanQuyen] ([IdNhanVien], [Xe], [TuyenXe], [ThoiDiem], [ChuyenXe], [BanVe]) VALUES (N'mytien', 0, 1, 1, 0, 1)
INSERT [dbo].[PhanQuyen] ([IdNhanVien], [Xe], [TuyenXe], [ThoiDiem], [ChuyenXe], [BanVe]) VALUES (N'toanh', 0, 1, 0, 0, 1)
INSERT [dbo].[PhanQuyen] ([IdNhanVien], [Xe], [TuyenXe], [ThoiDiem], [ChuyenXe], [BanVe]) VALUES (N'vantrieu2', 0, 0, 1, 1, 1)
/****** Object:  Default [def_BanVe]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[BanVe] ADD  CONSTRAINT [def_BanVe]  DEFAULT ([dbo].[AddmasoVe]('VE')) FOR [IdVe]
GO
/****** Object:  Default [def_ChuyenXe]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[ChuyenXe] ADD  CONSTRAINT [def_ChuyenXe]  DEFAULT ([dbo].[AddmasoChuyen]('CX')) FOR [IdChuyen]
GO
/****** Object:  Default [def_ThoiDiem]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[ThoiDiem] ADD  CONSTRAINT [def_ThoiDiem]  DEFAULT ([dbo].[Addmaso]('TD')) FOR [IdThoiDiem]
GO
/****** Object:  ForeignKey [FK__BangGia__idTuyen__286302EC]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD FOREIGN KEY([idTuyen])
REFERENCES [dbo].[TuyenXe] ([IdTuyen])
GO
/****** Object:  ForeignKey [fk_BanVe_ChuyenXe]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[BanVe]  WITH CHECK ADD  CONSTRAINT [fk_BanVe_ChuyenXe] FOREIGN KEY([IdChuyen])
REFERENCES [dbo].[ChuyenXe] ([IdChuyen])
GO
ALTER TABLE [dbo].[BanVe] CHECK CONSTRAINT [fk_BanVe_ChuyenXe]
GO
/****** Object:  ForeignKey [fk_ChiTietTuyen_ThoiDiem]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[ChiTietTuyen]  WITH CHECK ADD  CONSTRAINT [fk_ChiTietTuyen_ThoiDiem] FOREIGN KEY([IdThoiDiem])
REFERENCES [dbo].[ThoiDiem] ([IdThoiDiem])
GO
ALTER TABLE [dbo].[ChiTietTuyen] CHECK CONSTRAINT [fk_ChiTietTuyen_ThoiDiem]
GO
/****** Object:  ForeignKey [fk_ChiTietTuyen_TuyenXe]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[ChiTietTuyen]  WITH CHECK ADD  CONSTRAINT [fk_ChiTietTuyen_TuyenXe] FOREIGN KEY([IdTuyen])
REFERENCES [dbo].[TuyenXe] ([IdTuyen])
GO
ALTER TABLE [dbo].[ChiTietTuyen] CHECK CONSTRAINT [fk_ChiTietTuyen_TuyenXe]
GO
/****** Object:  ForeignKey [fk_ChoNgoi_ChuyenXe]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[ChoNgoi]  WITH CHECK ADD  CONSTRAINT [fk_ChoNgoi_ChuyenXe] FOREIGN KEY([IdChuyen])
REFERENCES [dbo].[ChuyenXe] ([IdChuyen])
GO
ALTER TABLE [dbo].[ChoNgoi] CHECK CONSTRAINT [fk_ChoNgoi_ChuyenXe]
GO
/****** Object:  ForeignKey [fk_ChoNgoi_Xe]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[ChoNgoi]  WITH CHECK ADD  CONSTRAINT [fk_ChoNgoi_Xe] FOREIGN KEY([So_Xe])
REFERENCES [dbo].[Xe] ([So_Xe])
GO
ALTER TABLE [dbo].[ChoNgoi] CHECK CONSTRAINT [fk_ChoNgoi_Xe]
GO
/****** Object:  ForeignKey [fk_ChuyenXe_TuyenXe]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [fk_ChuyenXe_TuyenXe] FOREIGN KEY([IdTuyen])
REFERENCES [dbo].[TuyenXe] ([IdTuyen])
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [fk_ChuyenXe_TuyenXe]
GO
/****** Object:  ForeignKey [fk_ChuyenXe_Xe]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [fk_ChuyenXe_Xe] FOREIGN KEY([So_Xe])
REFERENCES [dbo].[Xe] ([So_Xe])
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [fk_ChuyenXe_Xe]
GO
/****** Object:  ForeignKey [fk_NguoiDung_LoaiNguoiDung]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [fk_NguoiDung_LoaiNguoiDung] FOREIGN KEY([IdLoaiND])
REFERENCES [dbo].[LoaiNguoiDung] ([IdLoaiND])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [fk_NguoiDung_LoaiNguoiDung]
GO
/****** Object:  ForeignKey [fk_PhanQuyen_NguoiDung]    Script Date: 03/23/2017 15:56:14 ******/
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [fk_PhanQuyen_NguoiDung] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NguoiDung] ([IdNguoiDung])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [fk_PhanQuyen_NguoiDung]
GO
