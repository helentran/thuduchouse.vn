SET IDENTITY_INSERT [dbo].[Website] ON 
GO
INSERT [dbo].[Website] ([ID], [Name], [Link]) VALUES (1, N'Web Nhân sự', N'http://nhansu.thuduchouse.vn')
GO
SET IDENTITY_INSERT [dbo].[Website] OFF
GO

GO
INSERT [dbo].[Entry] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlug], [Level], [Action], [Image], [Active]) VALUES (1, 1, N'home', N'Trang chủ', N'0', N'home', N'home', NULL, 0, N'index', NULL, 1)
GO
INSERT [dbo].[Entry] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlug], [Level], [Action], [Image], [Active]) VALUES (2, 1, N'Report', N'Báo cáo', N'1', N'report', N'report', NULL, 0, N'report', NULL, 1)
GO
INSERT [dbo].[Entry] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlug], [Level], [Action], [Image], [Active]) VALUES (3, 1, N'Human Resources', N'Quản lý nhân sự', N'2', N'human-resourse', N'hr', NULL, 0, N'hr', NULL, 1)
GO
INSERT [dbo].[Entry] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlug], [Level], [Action], [Image], [Active]) VALUES (4, 1, N'Personal Card', N'Danh thiếp cá nhân', N'3', N'per-card', N'percard', NULL, 0, N'percard', NULL, 1)
GO
INSERT [dbo].[Entry] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlug], [Level], [Action], [Image], [Active]) VALUES (5, 1, N'Administrator', N'Quản lý hệ thông', N'4', N'admin', N'admin', NULL, 0, N'admin', NULL, 1)
GO
INSERT [dbo].[Entry] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlug], [Level], [Action], [Image], [Active]) VALUES (6, 1, N'Profile', N'Thông tin cá nhân', N'5', N'profile', N'profile', NULL, 0, N'profile', NULL, 1)
GO

--SET IDENTITY_INSERT [dbo].[Entry] ON 
--GO
----Mới
--INSERT [dbo].[Entry] ([ID], [WebID], [Name], [Note], [Index], [Class], [Slug], [ParentSlug], [Level], [Action], [Image], [Active]) VALUES (7, 1, N'Profile', N'Thông tin cá nhân', N'5', N'profile', N'profile', NULL, 0, N'profile', NULL, 1)
--GO
--SET IDENTITY_INSERT [dbo].[Entry] OFF
--GO