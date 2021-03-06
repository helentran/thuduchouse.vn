USE [HeThongBaoCao]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/27/2017 4:04:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Msnv] [varchar](20) NOT NULL,
	[HoTen] [varchar](50) NULL,
	[MaBoPhan] [int] NULL,
	[UserName] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
	[ChucVu] [int] NULL,
	[QuyenTruyCap] [int] NULL,
	[MaCty] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'11/02/08', N'Cao Hoàng Kim Ngân', 36, N'ngancao', N'ngan', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0209M031', N'D&#432;&#417;ng Thành Minh', 35, N'thanhminh', N'Matkhauns1', 2, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0312T151', N'Ngô Lê Quang Trung', 116, N'trungngo', N'171277', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'8006H001', N'Lê Chí Hi&#7871;u', 1, N'hieule', N'thuduchouse', 1, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'ThuyNgoc', N'Tôn N&#7919; Ng&#7885;c Thuý', 50, N'thuyton', N'Nt321', 4, 2, N'CDM')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'01/08/2013', N'Lê H&#7891;ng Anh', 36, N'anhle', N'axiterx', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'8911C013', N'&#272;&#7863;ng V&#259;n Chánh', 36, N'vanchanh', N'Vc321', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'9910T053', N'Võ Th&#7883; Thu', 5, N'thuvo', N'Tt321', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'020107KT', N'Quan Di&#7877;m Trang', 38, N'diemtrang', N'trang262151', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0706T58', N'Lê H&#7891;ng Th&#7911;y', 116, N'thuyle', N'Ht321', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'05/3/197', N'Nguy&#7877;n Y Cao Nguyên', 49, N'caonguyen', N'Cn321', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'25/7/80', N'V&#432;&#417;ng Th&#7883; Kim Uyên', 36, N'kimuyen', N'KHANHuyen', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'9402H018', N'L&#432;&#417;ng Th&#7883; Hoa', 36, N'luonghoa', N'flower', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'9910H019', N'Nguy&#7877;n Th&#7883; B&#7841;ch Hoa', 36, N'hoanguyen', N'Bh321', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'03/09/83', N'Ph&#7841;m Th&#7909;y Nh&#432; Qu&#7923;nh', 36, N'nhuquynh', N'trongdat13', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0104X063', N'Lê Ng&#7885;c Xuân', 36, N'xuanle', N'benghi8', 4, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0505H170', N'Nguy&#7877;n V&#361; B&#7843;o Hoàng', 32, N'hoangnguyen', N'Bh321', 1, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'TrungHanh_PD', N'H&#7891; Trung H&#7841;nh', 53, N'trunghanh', N'Th321', 3, 2, N'PD')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'02/9/86', N'Tr&#7847;n Cung My', 5, N'cungmy', N'Cm321', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900319', N'Nguy&#7877;n L&#432;&#417;ng Th&#7909;y Vy ', 5, N'vynguyen', N'hoaminhkhoacat', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'9310C010', N'Lê Ng&#7885;c Châu', 4, N'chaule', N'Nc321', 4, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'20/01/80', N'La C&#7849;m Nam', 48, N'namla', N'namla', 4, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'080107S', N'Nguy&#7877;n Ng&#7885;c S&#417;n ', 4, N'sonnguyen', N'son456789', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'020107TT', N'Nguy&#7877;n Th&#7883; Th&#7843;o', 4, N'thaonguyen', N'Tt321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0401D152', N'Tr&#7847;n Th&#7883; Bích &#272;ào', 116, N'daotran', N'Bd321', 4, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'9612D015', N'Chu Duy Thanh D&#361;ng ', 116, N'dungchu', N'Td321', 2, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900348', N'D&#432;&#417;ng Qu&#7889;c D&#361;ng', 5, N'dungduong', N'03082004', 2, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900369', N'Lê Chí Th&#7911; Khoa', 114, N'khoale', N'Tk321', 4, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'tn112008', N'Nguy&#7877;n Hu&#7923;nh Anh Th&#432; ', 116, N'thunguyen', N'At321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'01/11/2010', N'Lê Th&#7883; Anh Th&#432;', 36, N'thule', N'sieuquay', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900361', N'Nguy&#7877;n Th&#7883; Ng&#7885;c Lam', 114, N'lamnguyen', N'banxnk', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0409T162', N'Tr&#7883;nh Di&#7879;p Thanh Th&#7843;o', 5, N'thaotrinh', N'thaotrinh81', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'NganNS', N'Nguy&#7877;n Th&#7883; Mai Ngân', 53, N'ngannguyen', N'Mn321', 3, 2, N'PD')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'BinhTT', N'Tr&#7847;n Th&#7883; Thanh Bình', 59, N'binhtran', N'Tb321', 3, 2, N'GD')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0411T165', N'Nguy&#7877;n V&#259;n Tuy&#7871;n', 38, N'tuyennguyen', N'tdh54321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900363', N'Nguy&#7877;n Th&#7883; Bích Ng&#7885;c', 114, N'ngocnguyen', N'Bn321', 4, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0404T155', N'Lê Bích Trâm', 5, N'tramle', N'baby2110', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'9505S047', N'Lê Chí S&#7929;', 35, N'syle', N'Cs321', 2, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'011206K', N'Tr&#7847;n H&#7891;ng Kh&#7843;i', 35, N'khaitran', N'khai321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'9910H019', N'Nguy&#7877;n Th&#7883; B&#7841;ch Hoa', 36, N'hoanguyen', N'Bh321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'9110N003', N'Tr&#7847;n Quang Nh&#432;&#7901;ng', 32, N'nhuongtran', N'nhuongtr', 1, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'9/5/1982', N'Lê Kim H&#7857;ng', 4, N'hangle', N'Kh321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900324', N'Võ Nguyên Tho&#7841;i An', 5, N'anvo', N'thoaian', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900315', N'Nguy&#7877;n Th&#7883; Thanh Y&#7871;n', 48, N'yennguyen', N'Ty321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900321', N' V&#432;&#417;ng &#272;&#236;nh T&#244; Ng&#7885;c', 35, N'ngocvuong', N'ngocto', 3, 1, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900323', N'Nguy&#7877;n Ng&#7885;c Tân', 4, N'tannguyen', N'nntan2979', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900311', N'Nguy&#7877;n Tr&#7847;n &#272;&#259;ng Khuê', 116, N'khuenguyen', N'khue', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900338', N'Bùi Thanh Trúc', 38, N'trucbui', N'truc', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900349', N'Lê Thanh Phong', 5, N'phongle', N'241008', 4, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0508T173', N'Tr&#432;&#417;ng Công Tu&#7845;n', 35, N'congtuan', N'1vo2con3..', 3, 2, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'CDM_ ThuyPham', N'Ph&#7841;m Thanh Thúy', 50, N'thanhthuy', N'Tt321', 3, 2, N'CDM')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'8109T008', N'Quan Minh Tu&#7845;n', 4, N'tuanquan', N'Mt321', 2, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0305D132', N'Tr&#432;&#417;ng V&#259;n Chí D&#361;ng', 116, N'dungtruong', N'Cd321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0604P178', N'&#272;&#7895; Hu&#7923;nh Phong', 116, N'phongdo', N'Hp321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'9510T056', N'Bùi V&#259;n Trung', 116, N'trungbui', N'Vt321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'AT010407', N'Tr&#7847;n Anh Trung', 116, N'trungtran', N'At321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'06/01/79', N'Ngô Thanh Tùng', 116, N'tungngo', N'Tt321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0308P136', N'Phùng Tr&#7847;n Uyên Ph&#432;&#417;ng', 48, N'phuongphung', N'Up321', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'TamLe', N'Lê Thanh Tâm', 56, N'tamle', N'Tt321', 4, 2, N'TB')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'8006B005', N'Ph&#7841;m Th&#7883; Thanh Bình', 32, N'binhpham', N'10meo', 2, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900317', N'Quách Tri&#7873;u Trung Phú', 35, N'phuquach', N'tdh2010', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900363', N'Nguy&#7877;n Th&#7883; Bích Ng&#7885;c', 114, N'ngocnguyen', N'Bn321', 4, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'01/11/2010', N'Lê Th&#7883; Anh Th&#432;', 36, N'thule', N'sieuquay', 3, 3, N'TDH')
GO
INSERT [dbo].[Admin] ([Msnv], [HoTen], [MaBoPhan], [UserName], [Password], [ChucVu], [QuyenTruyCap], [MaCty]) VALUES (N'0900407', N'Tr&#7847;n Mai Ph&#432;&#417;ng', 35, N'phuongtran', N'helen@123', 3, 2, N'TDH')
GO
