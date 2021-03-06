USE [HRSystem]
GO
/****** Object:  Table [dbo].[AccessLevel]    Script Date: 9/11/2017 1:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessLevel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Account]    Script Date: 9/11/2017 1:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CodeEmp] [varchar](10) NULL,
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[AccessLevel] [tinyint] NOT NULL,
	[UserRole] [tinyint] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[CompanyID] [varchar](10) NOT NULL,
	[CreateDate] [datetime] NULL CONSTRAINT [UC_Account_CreateDate]  DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 9/11/2017 1:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[ID] [varchar](10) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[CompanyType] [nvarchar](50) NOT NULL,
	[Phone] [varchar](18) NULL,
	[Address] [nvarchar](500) NULL,
	[Fax] [varchar](50) NULL,
	[Website] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyType]    Script Date: 9/11/2017 1:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompanyType](
	[ID] [varchar](10) NOT NULL,
	[Name] [nvarchar](500) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 9/11/2017 1:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[ShortName] [nvarchar](20) NULL,
	[Index] [int] NOT NULL CONSTRAINT [UC_Department_Index]  DEFAULT ((0)),
	[CompanyID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/11/2017 1:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[IDEmp] [int] IDENTITY(1,1) NOT NULL,
	[IDDept] [varchar](10) NULL,
	[IDComp] [varchar](3) NULL,
	[CodeEmp] [varchar](10) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[PlaceOfBirth] [nvarchar](150) NULL,
	[EthnicGroup] [nvarchar](20) NULL,
	[Religion] [nvarchar](20) NULL,
	[PlaceOfOrigin] [nvarchar](50) NULL,
	[Nationality] [nvarchar](20) NULL,
	[CurrentAddress] [nvarchar](200) NULL,
	[ResidentAddress] [nvarchar](200) NULL,
	[Telephone] [varchar](18) NULL,
	[Mobile] [varchar](18) NULL,
	[IDNumber] [varchar](15) NULL,
	[DateOfIssue] [datetime] NULL,
	[PlaceOfIssue] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[Image] [nvarchar](200) NULL,
	[Position] [nvarchar](200) NULL,
	[Email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 9/11/2017 1:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] NOT NULL,
	[WebID] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Note] [nvarchar](500) NULL,
	[Index] [int] NULL,
	[Class] [varchar](100) NULL,
	[Slug] [varchar](50) NULL,
	[ParentSlugID] [int] NOT NULL DEFAULT ((0)),
	[Action] [varchar](50) NULL,
	[Image] [nvarchar](200) NULL,
	[Active] [bit] NULL CONSTRAINT [DF_Entry_Active]  DEFAULT ((1))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 9/11/2017 1:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Website]    Script Date: 9/11/2017 1:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Website](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Link] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AccessLevel] ON 

GO
INSERT [dbo].[AccessLevel] ([ID], [LevelName]) VALUES (3, N'Access + Add/Edit')
GO
INSERT [dbo].[AccessLevel] ([ID], [LevelName]) VALUES (4, N'Access + Add/Edit/Remove')
GO
INSERT [dbo].[AccessLevel] ([ID], [LevelName]) VALUES (2, N'Access + Preview')
GO
INSERT [dbo].[AccessLevel] ([ID], [LevelName]) VALUES (1, N'Deny')
GO
SET IDENTITY_INSERT [dbo].[AccessLevel] OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

GO
INSERT [dbo].[Account] ([ID], [CodeEmp], [Username], [Password], [AccessLevel], [UserRole], [DepartmentID], [CompanyID], [CreateDate]) VALUES (1, N'E002', N'helen', N'helen', 1, 4, 2, N'1', CAST(N'2017-09-09 00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'1', N'ThuDuc House', N'CTTV', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'2', N'Tân Hồng Uy', N'CTTV', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'3', N'SAVICO', N'CTTV', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'4', N'Công ty CII', N'CTTV', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'5', N'Đô Thành', N'CTTV', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'6', N'Góp vốn', N'CTTV', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'7', N'Hoán đổi', N'CTTV', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'CDM', N'Công ty TNHH Quản Lý Và Kinh Doanh Chợ Nông Sản Thủ Đức', N'CTLD', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'DAB', N'Cty TNHH nước đá tinh khiết Đông An Bình', N'CTLD', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'DW', N'Cty Liên Doanh DAEWON-THUDUC', N'CTTV', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'PD', N'Công Ty TNHH XD Phong Đức', N'CTTV', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'TB', N'Cty TNHH Dịch vụTam Bình Thủ Đức', N'CTLD', N'', N'', N'', N'')
GO
INSERT [dbo].[Company] ([ID], [Name], [CompanyType], [Phone], [Address], [Fax], [Website]) VALUES (N'TDH', N'Công ty cổ phần Phát Triển Nhà Thủ Đức', N'CTLD', N'', N'', N'', N'')
GO
INSERT [dbo].[CompanyType] ([ID], [Name]) VALUES (N'CTTV', N'Công ty Thành Viên')
GO
INSERT [dbo].[CompanyType] ([ID], [Name]) VALUES (N'CTLD', N'Công ty Liên Doanh')
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (1, N'Phòng Hành chánh Nhân sự', N'CDM-HCNS', 1, N'CDM')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (2, N'Phòng nhân sự', N'PD-NS', 2, N'PD')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (3, N'Phòng Quản Trị Nhân Sự', N'TB-QTNS', 3, N'TB')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (4, N'Chủ Tịch Hội Đồng Quản Trị', N'TDH-CTHDQT', 4, N'TDH')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (5, N'BP. Kế toán ngân quỹ', N'TDH-KT', 5, N'TDH')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (6, N'BP. Kinh Doanh', N'TDH-KD', 6, N'TDH')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (7, N'BP. Phát triển dự án', N'TDH-PTDA', 7, N'TDH')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (8, N'Ban điều hành kinh doanh xuất nhập khẩu', N'TDH-XNK', 8, N'TDH')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (9, N'Phòng Phó Tổng giám đốc', N'TDH-PTGĐ', 9, N'TDH')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (10, N'BP. QT Hành chánh - Nhân sự', N'TDH-HCNS', 10, N'TDH')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (11, N'BP. Đầu tư  tài chánh', N'TDH-ĐTTC', 11, N'TDH')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (12, N'BP. Marketing', N'TPH-M', 12, N'TDH')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (13, N'BP. Dịch vụ Bất động sản', N'TDH-DVBDS', 13, N'TDH')
GO
INSERT [dbo].[Department] ([ID], [Name], [ShortName], [Index], [CompanyID]) VALUES (14, N'BP. IT', N'TDH-IT', 14, N'TDH')
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

GO
INSERT [dbo].[Employee] ([IDEmp], [IDDept], [IDComp], [CodeEmp], [FirstName], [LastName], [DateOfBirth], [PlaceOfBirth], [EthnicGroup], [Religion], [PlaceOfOrigin], [Nationality], [CurrentAddress], [ResidentAddress], [Telephone], [Mobile], [IDNumber], [DateOfIssue], [PlaceOfIssue], [Gender], [Image], [Position], [Email]) VALUES (1, N'2', N'1', N'E001', N'Ân', N'Quách Đình', CAST(N'2017-02-03 00:00:00.000' AS DateTime), N'Bình Định', N'KInh', N'', N'Bình Định', N'', N'97/43B đường 8, KP2,P.Tăng Nhơn Phú B, Q.9', N'Cát Hưng, Phù Cát, Bình Định', N'83799455', N'0937005331', N'211861286', CAST(N'1991-01-01 00:00:00.000' AS DateTime), N'CA. Bình Ðịnh', N'Nữ', N'', N'Công nhân', N'')
GO
INSERT [dbo].[Employee] ([IDEmp], [IDDept], [IDComp], [CodeEmp], [FirstName], [LastName], [DateOfBirth], [PlaceOfBirth], [EthnicGroup], [Religion], [PlaceOfOrigin], [Nationality], [CurrentAddress], [ResidentAddress], [Telephone], [Mobile], [IDNumber], [DateOfIssue], [PlaceOfIssue], [Gender], [Image], [Position], [Email]) VALUES (2, N'14', N'1', N'E002', N'helen', N'tran', CAST(N'1991-01-01 00:00:00.000' AS DateTime), N'a', N'a', N'a', N'a', N'a', N'aaa', N'aaaaa', N'0123456789', N'0123456789', N'1231', CAST(N'1991-01-01 00:00:00.000' AS DateTime), N'a', N'nam', NULL, N'a', N'helentran2609@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (1, 1, N'home', N'Trang chủ', 1, N'home', N'home', 0, N'', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (2, 1, N'report', N'Báo cáo', 2, N'report', N'report', 0, N'report', NULL, 0)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (3, 1, N'Human Resources', N'Danh sách nhân viên', 3, N'employee', N'employee', 0, N'employee/index', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (4, 1, N'Personal Card', N'Danh thiếp cá nhân', 6, N'percard', N'percard', 0, N'percard', NULL, 0)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (5, 1, N'Administrator', N'Quản lý hệ thống', 7, N'admin', N'admin', 0, N'admin', N'imag.png', 0)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (6, 1, N'Task & Assign', N'Giao việc và công văn', 4, N'assign', N'assign', 0, N'assign', NULL, 0)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (7, 1, N'Nhan vien thao', N'Nhân viên thao tác', 5, N'staff-work', N'staffwork', 0, N'staff-work', NULL, 0)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (8, 1, N'asd', N'Phòng hành chánh nhân sự', 8, N'sad', N'asd', 2, N'asd', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (9, 1, N'Phòng kế toán ngân quỹ', N'Phòng kế toán ngân quỹ', 9, N'pktnq', N'pktnq', 2, N'pktnq', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (10, 1, N'Phòng phát triển dự án', N'Phòng phát triển dự án', 10, N'pptda', N'pptda', 2, N'pptda', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (11, 1, N'Phòng marketing', N'Phòng marketing', 11, N'pmk', N'pmk', 2, N'pmk', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (12, 1, N'Phòng quản trị chiến lược', N'Phòng quản trị chiến lược', 12, N'pqtcl', N'pqtcl', 2, N'pqtcl', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (13, 1, N'Phòng bán hàng', N'Phòng bán hàng', 13, N'pbh', N'pbh', 2, N'pbh', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (14, 1, N'Phòng giao dịch bất động sản', N'Phòng giao dịch bất động sản', 14, N'pgdbds', N'pgdbds', 2, N'pgdbds', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (15, 1, N'Phòng đầu tư tài chính', N'Phòng đầu tư tài chính', 15, N'pdttc', N'pdttc', 2, N'pdttc', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (16, 1, N'Các công ty thành viên', N'Các công ty thành viên', 16, N'ccttv', N'ccttv', 2, N'ccttv', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (17, 1, N'Báo cáo tình hình đào tạo', N'Báo cáo tình hình đào tạo', 17, N'bcthdt', N'bcthdt', 8, N'bcthdt', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (18, 1, N'Tình hình HĐ - Nhân sự', N'Tình hình HĐ - Nhân sự', 18, N'thhdns', N'thhdns', 8, N'thhdns', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (19, 1, N'BC biến động nhân sự', N'BC biến động nhân sự', 19, N'bcbdns', N'bcbdns', 8, N'bcbdns', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (20, 1, N'Văn phòng quà tặng', N'Văn phòng quà tặng', 20, N'vpqt', N'vpqt', 8, N'vpqt', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (21, 1, N'Thông tin về các dự án', N'Thông tin về các dự án', 21, N'ttvcda', N'ttvcda', 10, N'ttvcda', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (22, 1, N'BC sản xuất kinh doanh', N'BC sản xuất kinh doanh', 22, N'bcsxkd', N'bcsxkd', 12, N'bcsxkd', NULL, 1)
GO
INSERT [dbo].[Menu] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlugID], [Action], [Image], [Active]) VALUES (23, 1, N'Danh sách khách hàng', N'Danh sách khách hàng', 23, N'dskh', N'dskh', 13, N'dskh', NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

GO
INSERT [dbo].[UserRole] ([ID], [RoleName]) VALUES (1, N'Ban tổng')
GO
INSERT [dbo].[UserRole] ([ID], [RoleName]) VALUES (2, N'Giám đốc bộ phận')
GO
INSERT [dbo].[UserRole] ([ID], [RoleName]) VALUES (4, N'Nhân viên')
GO
INSERT [dbo].[UserRole] ([ID], [RoleName]) VALUES (3, N'Phó GĐ bộ phận')
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Website] ON 

GO
INSERT [dbo].[Website] ([ID], [Name], [Link]) VALUES (1, N'Web Nhân sự', N'http://nhansu.thuduchouse.vn')
GO
SET IDENTITY_INSERT [dbo].[Website] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UC_AccessLevel_LevelName]    Script Date: 9/11/2017 1:37:31 AM ******/
ALTER TABLE [dbo].[AccessLevel] ADD  CONSTRAINT [UC_AccessLevel_LevelName] UNIQUE NONCLUSTERED 
(
	[LevelName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UC_Account_Username]    Script Date: 9/11/2017 1:37:31 AM ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [UC_Account_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UC_Employee_CodeEmp]    Script Date: 9/11/2017 1:37:31 AM ******/
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [UC_Employee_CodeEmp] UNIQUE NONCLUSTERED 
(
	[CodeEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UC_Menu_ID]    Script Date: 9/11/2017 1:37:31 AM ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [UC_Menu_ID] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UC_Menu_Slug]    Script Date: 9/11/2017 1:37:31 AM ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [UC_Menu_Slug] UNIQUE NONCLUSTERED 
(
	[Slug] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UC_UserRole_RoleName]    Script Date: 9/11/2017 1:37:31 AM ******/
ALTER TABLE [dbo].[UserRole] ADD  CONSTRAINT [UC_UserRole_RoleName] UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Company]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Department]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Company]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Website] FOREIGN KEY([WebID])
REFERENCES [dbo].[Website] ([ID])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Website]
GO
/****** Object:  StoredProcedure [dbo].[spm_Account]    Script Date: 9/11/2017 1:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Helen Tran>
-- Create date: <16-02-2017>
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[spm_Account]
	-- Add the parameters for the stored procedure here
		@ID	int = null,
		@CodeEmp varchar(10)=null,
		@Username varchar(20) = null,
		@Password varchar(20) = null,
		@AccessLevel tinyint = null,
		@UserRole tinyint = null,
		@DepartmentID int = null,
		@CompanyID varchar(10) = null,
		@sql nvarchar(20) = 'select'

AS
BEGIN
   --SET NOCOUNT ON;
   --query: INSERT
    IF @sql='insert' BEGIN
		IF @Username IS NOT NULL and @Password IS NOT NULL
		BEGIN
			IF NOT EXISTS (SELECT TOP 1 1 FROM Account WHERE Username = @Username and [Password] = @Password)
			BEGIN
				-- Insert statements for procedure here
				INSERT INTO Account(CodeEmp,Username,[Password],AccessLevel,UserRole,DepartmentID,CompanyID) 
				VALUES(@CodeEmp,@Username,@Password,@AccessLevel,@UserRole,@DepartmentID,@CompanyID)
				SELECT @ID = SCOPE_IDENTITY();
			END	
		END
    END		
    --query: SELECT
    IF @sql='select' BEGIN
		IF @ID IS NOT NULL and @Username IS NOT NULL
			SELECT * FROM Account WHERE ID = @ID and Username = @Username
		ELSE
			SELECT * FROM Account 
    END	
	 --query: UPDATE
    IF @sql='update' BEGIN
		IF @ID IS NOT NULL and @Username IS NOT NULL
		BEGIN
			IF EXISTS (SELECT TOP 1 1 FROM Account WHERE Username = @Username)
			BEGIN
				-- Insert statements for procedure here
				UPDATE Account set [Password]=@Password,CodeEmp=@CodeEmp,Username=@Username,AccessLevel=@AccessLevel,UserRole=@UserRole,DepartmentID=@DepartmentID,CompanyID=@CompanyID  where Username = @Username 
			END	
		END
    END	
    --query: UPDATE PASSWORD
    IF @sql='change password' BEGIN
		IF @ID IS NOT NULL and @Username IS NOT NULL
		BEGIN
			IF EXISTS (SELECT TOP 1 1 FROM Account WHERE Username = @Username)
			BEGIN
				-- Insert statements for procedure here
				UPDATE Account set [Password]=@Password where Username = @Username 
			END	
		END
    END	
END

GO
/****** Object:  StoredProcedure [dbo].[spm_Company]    Script Date: 9/11/2017 1:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Helen Tran>
-- Create date: <16-02-2017>
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[spm_Company]
	-- Add the parameters for the stored procedure here
		@ID	varchar(10) = null,
		@Name nvarchar(500)=null,
		@CompanyType nvarchar(50) = null,
		@Phone varchar(18) = null,
		@Address nvarchar(500) = null,
		@Fax varchar(50) = null,
		@Website varchar(50) = null,
		@sql nvarchar(20) = 'select'

AS
BEGIN
   --SET NOCOUNT ON;
   --query: INSERT
    IF @sql='insert' BEGIN
		IF @ID IS NOT NULL
		BEGIN
			IF NOT EXISTS (SELECT TOP 1 1 FROM Company WHERE ID = @ID)
			BEGIN
				-- Insert statements for procedure here
				INSERT INTO Company(Name,Phone,Website,Address,CompanyType,Fax) 
				VALUES(@Name,@Phone,@Website,@Address,@CompanyType,@Fax)
				SELECT @ID = SCOPE_IDENTITY();
			END	
		END
    END		
    --query: SELECT
    IF @sql='select' BEGIN
		IF @ID IS NOT NULL 
			SELECT * FROM Company WHERE ID = @ID 
		ELSE
			SELECT * FROM Company 
    END	
	 --query: UPDATE
    IF @sql='update' BEGIN
		IF @ID IS NOT NULL 
		BEGIN
			IF EXISTS (SELECT TOP 1 1 FROM Company WHERE ID = @ID)
			BEGIN
				-- Insert statements for procedure here
				UPDATE Company set Name=@Name,Phone=@Phone,Website=@Website,Fax=@Fax,Address=@Address,CompanyType=@CompanyType where ID = @ID
			END	
		END
    END	
END

GO
/****** Object:  StoredProcedure [dbo].[spm_Department]    Script Date: 9/11/2017 1:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spm_Department](
	@ID int = NULL,
	@Name nvarchar(200)= NULL,
	@ShortName nvarchar(20) =NULL,
	@Index int= NULL,
	@CompanyID varchar(10)= NULL,
	@sql nvarchar(20)='select'
)
AS
BEGIN
   --SET NOCOUNT ON;
   --query: INSERT
    IF @sql='insert' BEGIN
		IF @ID IS NOT NULL
		BEGIN
			IF NOT EXISTS (SELECT TOP 1 1 FROM Department WHERE ID = @ID)
			BEGIN
				-- Insert statements for procedure here
				INSERT INTO Department(Name,ShortName,[Index],CompanyID) 
				VALUES(@Name,@ShortName,@Index,@CompanyID)
				SELECT @ID = SCOPE_IDENTITY();
			END	
		END
    END		
    --query: SELECT
    IF @sql='select' BEGIN
		IF @ID IS NOT NULL and @CompanyID IS NOT NULL
			SELECT * FROM Department WHERE ID = @ID	and CompanyID = @CompanyID
		ELSE IF  @CompanyID IS NOT NULL
			SELECT * FROM Department WHERE ID = @ID	
		ELSE
			SELECT * FROM Department 
    END	
    --query: DETAIL
    IF @sql='detail' and @ID IS NOT NULL BEGIN
		SELECT * FROM Department where ID = @ID
    END	
END

GO
/****** Object:  StoredProcedure [dbo].[spm_Employee]    Script Date: 9/11/2017 1:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spm_Employee](
	@IDEmp int = NULL,
	@IDDept varchar(10)= NULL,
	@IDComp varchar(3) =NULL,
	@CodeEmp varchar(10)= NULL,
	@FirstName nvarchar(50)= NULL,
	@LastName nvarchar(50) =NULL,
	@DateOfBirth datetime =NULL,
	@PlaceOfBirth nvarchar(150)= NULL,
	@EthnicGroup nvarchar(20) =NULL,
	@Religion nvarchar(20) =NULL,
	@PlaceOfOrigin nvarchar(50) =NULL,
	@Nationality nvarchar(20)=NULL,
	@CurrentAddress nvarchar(200)= NULL,
	@ResidentAddress nvarchar(200) =NULL,
	@Telephone varchar(18)= NULL,
	@Mobile varchar(18)= NULL,
	@IDNumber varchar(15)= NULL,
	@DateOfIssue datetime =NULL,
	@PlaceOfIssue nvarchar(50)= NULL,
	@Gender nvarchar(10)= NULL,
	@Image nvarchar(200)= NULL,
	@Position nvarchar(200)= NULL,
	@Email varchar(100)= NULL,
	@sql nvarchar(20)='select'
)
AS
BEGIN
   --SET NOCOUNT ON;
   --query: INSERT
    IF @sql='insert' BEGIN
		IF @CodeEmp IS NOT NULL
		BEGIN
			IF NOT EXISTS (SELECT TOP 1 1 FROM Employee WHERE CodeEmp = @CodeEmp)
			BEGIN
				-- Insert statements for procedure here
				INSERT INTO Employee(IDDept,IDComp,CodeEmp,FirstName,LastName,DateOfBirth,PlaceOfBirth,EthnicGroup,Religion,PlaceOfOrigin,Nationality,CurrentAddress,ResidentAddress,
									Telephone,Mobile,IDNumber,DateOfIssue,PlaceOfIssue,Gender,[Image],Position,Email) 
				VALUES(@IDDept,@IDComp,@CodeEmp,@FirstName,@LastName,@DateOfBirth,@PlaceOfBirth,@EthnicGroup,@Religion,@PlaceOfOrigin,@Nationality,@CurrentAddress,@ResidentAddress,
						@Telephone,@Mobile,@IDNumber,@DateOfIssue,@PlaceOfIssue,@Gender,@Image,@Position,@Email)
				SELECT @IDEmp = SCOPE_IDENTITY();
			END	
		END
    END		
    --query: SELECT
    IF @sql='select' BEGIN
		IF @IDEmp IS NOT NULL and @CodeEmp IS NOT NULL
			SELECT * FROM Employee WHERE IDEmp = @IDEmp	and CodeEmp = @CodeEmp
		ELSE IF  @IDEmp IS NOT NULL
			SELECT * FROM Employee WHERE IDEmp = @IDEmp	
		ELSE
			SELECT * FROM Employee 
    END	
    --query: DETAIL
    IF @sql='detail' and @IDEmp IS NOT NULL BEGIN
		SELECT * FROM Employee where IDEmp = @IDEmp
    END	
END


GO
/****** Object:  StoredProcedure [dbo].[spm_Menu]    Script Date: 9/11/2017 1:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spm_Menu](
	@ID int =NULL,
	@WebID int = NULL,
	@Name nvarchar(200)=NULL ,
	@Note nvarchar(500)=NULL ,
	@Index int = NULL ,
	@Class varchar(100)=NULL ,
	@Slug varchar(50)=NULL ,
	@ParentSlugID int=NULL ,
	@Action nvarchar(10)= NULL,
	@Image nvarchar(200) = NULL,
	@Active bit = NULL,
	@sql nvarchar(20)='select'
)
AS
BEGIN
   --SET NOCOUNT ON;
   --query: INSERT
    IF @sql='insert' BEGIN
		IF @WebID IS NOT NULL and @Slug IS NOT NULL
		BEGIN
			IF NOT EXISTS (SELECT TOP 1 1 FROM Menu WHERE Slug = @Slug and WebID = @WebID)
			BEGIN
				-- Insert statements for procedure here
				INSERT INTO Menu(ID,WebID,Name,Note,[Index],Class,Slug,ParentSlugID,Action,Image,Active) 
				VALUES(@ID,@WebID,@Name,@Note,@Index,@Class,@Slug,@ParentSlugID,@Action,@Image,@Active)
				SELECT @ID = SCOPE_IDENTITY();
			END	
		END
    END		
    --query: SELECT
    IF @sql='select' BEGIN
		IF @WebID IS NOT NULL and @ID IS NOT NULL
			SELECT * FROM Menu WHERE ID = @ID	and WebID = @WebID and Active = 1
		ELSE IF  @WebID IS NOT NULL
			SELECT * FROM Menu WHERE WebID = @WebID	and Active = 1
		ELSE
			SELECT * FROM Menu WHERE Active = 1
    END	
    --query: UPDATE
    IF @sql='update' BEGIN
		IF @WebID IS NOT NULL and @Slug IS NOT NULL
		BEGIN
			IF EXISTS (SELECT TOP 1 1 FROM Menu WHERE Slug = @Slug and WebID = @WebID)
			BEGIN
				-- Insert statements for procedure here
				UPDATE Menu set Name=@Name,Note=@Note,[Index]=@Index,Class=@Class,Slug=@Slug,
								ParentSlugID = @ParentSlugID,Action = @Action,Image=@Image,Active=@Active
							where ID = @ID and WebID=@WebID
			END	
		END
    END	
	--query: DETAIL
    IF @sql='detail' and @ID IS NOT NULL BEGIN
		SELECT * FROM Menu where ID = @ID
    END	
END

GO
