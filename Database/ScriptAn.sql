USE [HaSakoProject]
GO
ALTER TABLE [dbo].[HAISANKHO] DROP CONSTRAINT [FK_HAISANKHO_DANHMUCHAISANKHO]
GO
ALTER TABLE [dbo].[HAISANKHO] DROP CONSTRAINT [FK_HAISANKHO_CHITIETNHAPHANG]
GO
/****** Object:  Table [dbo].[HAISANKHO]    Script Date: 19-May-20 13:14:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HAISANKHO]') AND type in (N'U'))
DROP TABLE [dbo].[HAISANKHO]
GO
/****** Object:  Table [dbo].[HAISANKHO]    Script Date: 19-May-20 13:14:00 ******/
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
SET IDENTITY_INSERT [dbo].[HAISANKHO] ON 

INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (1, N'Cá cơm khô sọc trắng', 150000, N'Ngon lắm', N'ca1.png', CAST(N'2018-12-02T00:00:00.000' AS DateTime), N'Túi 0.5kg', 21, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (2, N'Cá cơm khô sọc đen', 130000, NULL, N'ca2.jpg', NULL, N'Túi 0.5kg', 21, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (3, N'Khô cá bống sữa', 220000, N'Thơm', N'ca3.jpg', CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'Túi 0.5kg', 12, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (5, N'Khô cá trích', 100000, NULL, N'ca4.pg', CAST(N'2020-01-02T00:00:00.000' AS DateTime), N'Túi 0.5kg', 400, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (6, N'Khô cá kèo', 130000, N'Cay giòn', N'ca5.jpg', CAST(N'2019-12-10T00:00:00.000' AS DateTime), N'Túi 0.5kg', 353, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (7, N'Cá ngựa khô', 320000, N'Bổ', N'ca6.jpg', CAST(N'2019-10-23T00:00:00.000' AS DateTime), N'Túi 0.5kg', 125, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (8, N'Khô cá lưỡi trâu', 150000, NULL, N'ca7.jpg', CAST(N'2019-06-08T00:00:00.000' AS DateTime), N'Túi 0.5kg', 231, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (10, N'Khô cá nhồng ', 175000, NULL, N'ca8.jpg', CAST(N'2020-01-30T00:00:00.000' AS DateTime), N'Túi 0.5kg', 3, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (11, N'Bong bóng cá khô', 450000, NULL, N'ca9.jpg', NULL, N'Túi 0.5kg', 54, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (13, N'Cá đuối khô', 450000, NULL, N'ca10.jpg', NULL, N'Túi 0.5kg', 123, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (15, N'Cá lanh một nắng', 130000, NULL, N'ca11.jpg', NULL, N'Túi 0.5kg', 431, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (16, N'Cá mối một nắng', 90000, NULL, N'ca12.jpg', NULL, N'Túi 0.5kg', 32, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (17, N'Cá thu một nắng', 180000, NULL, N'ca13.jpg', NULL, N'Túi 0.5kg', 310, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (18, N'Cá dứa một nắng', 250000, NULL, N'ca14.jpg', NULL, N'Túi 0.5kg', 15, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (19, N'Cá nục một nắng', 120000, NULL, N'ca15.jpg', NULL, N'Túi 0.5kg', 54, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (20, N'Khô cá khoai', 150000, NULL, N'ca16.jpg', NULL, N'Túi 0.5kg', 13, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (21, N'Cá đù sóc một nắng', 180000, NULL, N'ca17.jpg', NULL, N'Túi 0.5kg', 43, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (23, N'Cá chìa vôi một nắng', 250000, NULL, N'ca18.jpg', NULL, N'Túi 0.5kg', 56, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (24, N'Cá hồng một nắng', 100000, NULL, N'ca19.jpg', NULL, N'Túi 0.5kg', 65, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (25, N'Cá đối nhòng một nắng', 130000, NULL, N'ca20.jpg', NULL, N'Túi 0.5kg', 12, 1, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (26, N'Cồi sò điệp khô - Túi 1kg', 320000, N'Túi 1kg', N'sodiep1.jpg', CAST(N'2020-01-02T00:00:00.000' AS DateTime), N'Túi 1kg', 32, 2, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (27, N'Cồi sò điệp khô - Túi 2kg', 600000, N'Túi 2kg', N'sodiep1.jpg', CAST(N'2019-11-11T00:00:00.000' AS DateTime), N'Túi 2kg', 43, 2, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (28, N'Cồi sò điệp khô - Túi 3kg', 1000000, N'Túi 3kg', N'sodiep1.jpg', CAST(N'2020-02-04T00:00:00.000' AS DateTime), N'Túi 3kg', 12, 2, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (29, N'Cồi sò mai khô', 300000, N'Túi 1kg', N'somai1.jpg', CAST(N'2020-03-04T00:00:00.000' AS DateTime), N'Túi 1kg ', 65, 2, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (30, N'Cồi sò mai khô', 560000, N'Túi 2kg', N'somai1.jpg', CAST(N'2020-03-05T00:00:00.000' AS DateTime), N'Túi 2kg ', 14, 2, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (31, N'Cồi sò mai khô', 900000, N'Túi 3kg', N'somai1.jpg', CAST(N'2020-03-14T00:00:00.000' AS DateTime), N'Túi 3kg', 45, 2, 1)
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
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (60, N'Chà bông cá thu', 60000, NULL, N'cathu.jpg', NULL, N'Hủ', 24, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (61, N'Cá cơm kho ăn liền', 80000, NULL, N'cacom1.jpg', NULL, N'Hủ', 44, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (62, N'Chả cá thu', 170000, N'Đặc sản', N'chacathu.jpg', CAST(N'2020-04-21T00:00:00.000' AS DateTime), N'Kg', 100, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (63, N'Cá khoai rim', 50000, N'', N'cakhoai.jpg', CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'Hủ', 211, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (64, N'Mực tẩm gia vị', 500000, NULL, N'muctam.jpg', CAST(N'2020-04-04T00:00:00.000' AS DateTime), N'Kg', 19, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (65, N'Ruốc tẩm sấy', 50000, NULL, N'ruoctam.jpg', CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'Hủ', 54, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (66, N'Mắm ruốc', 50000, NULL, N'mamruoc.jpg', CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'Hủ', 76, 7, 1)
INSERT [dbo].[HAISANKHO] ([MaHS], [TenHS], [Dongia], [Mota], [Anhbia], [Ngaycapnhat], [Donvi], [Soluongton], [MaDM], [MaNH]) VALUES (67, N'Mực rim me', 60000, NULL, N'mucrim.jpg', CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'Hủ', 45, 7, 1)
SET IDENTITY_INSERT [dbo].[HAISANKHO] OFF
GO
ALTER TABLE [dbo].[HAISANKHO]  WITH CHECK ADD  CONSTRAINT [FK_HAISANKHO_CHITIETNHAPHANG] FOREIGN KEY([MaNH])
REFERENCES [dbo].[CHITIETNHAPHANG] ([MaNH])
GO
ALTER TABLE [dbo].[HAISANKHO] CHECK CONSTRAINT [FK_HAISANKHO_CHITIETNHAPHANG]
GO
ALTER TABLE [dbo].[HAISANKHO]  WITH CHECK ADD  CONSTRAINT [FK_HAISANKHO_DANHMUCHAISANKHO] FOREIGN KEY([MaDM])
REFERENCES [dbo].[DANHMUCHAISANKHO] ([MaDM])
GO
ALTER TABLE [dbo].[HAISANKHO] CHECK CONSTRAINT [FK_HAISANKHO_DANHMUCHAISANKHO]
GO
