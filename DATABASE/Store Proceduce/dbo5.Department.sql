begin tran
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Department] ON 
GO

INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (1, N'Phòng Hành chánh Nhân sự', N'CDM-HCNS',1,'CDM' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (2, N'Phòng nhân sự', N'PD-NS',2,'PD' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (3, N'Phòng Quản Trị Nhân Sự', N'TB-QTNS',3,'TB' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (4, N'Chủ Tịch Hội Đồng Quản Trị', N'TDH-CTHDQT',4,'TDH' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (5, N'BP. Kế toán ngân quỹ', N'TDH-KT',5,'TDH' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (6, N'BP. Kinh Doanh', N'TDH-KD',6,'TDH' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (7, N'BP. Phát triển dự án', N'TDH-PTDA',7,'TDH' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (8, N'Ban điều hành kinh doanh xuất nhập khẩu', N'TDH-XNK',8,'TDH' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (9, N'Phòng Phó Tổng giám đốc', N'TDH-PTGĐ',9,'TDH' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (10, N'BP. QT Hành chánh - Nhân sự', N'TDH-HCNS',10,'TDH' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (11, N'BP. Đầu tư  tài chánh', N'TDH-ĐTTC',11,'TDH' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (12, N'BP. Marketing', N'TPH-M',12,'TDH' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (13, N'BP. Dịch vụ Bất động sản', N'TDH-DVBDS',13,'TDH' )
INSERT [dbo].[Department] ([ID],[Name],ShortName,[Index],CompanyID) VALUES (14, N'BP. IT', N'TDH-IT',14,'TDH' )

SET IDENTITY_INSERT [dbo].[AccessLevel] OFF
GO
SET ANSI_PADDING ON
GO

rollback