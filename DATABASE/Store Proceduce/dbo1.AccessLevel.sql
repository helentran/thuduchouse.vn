USE [HRSystem]
GO
/****** Object:  Table [dbo].[AccessLevel]    Script Date: 6/28/2017 3:10:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[AccessLevel] ON 

GO
INSERT [dbo].[AccessLevel] ([ID], [LevelName]) VALUES (1, N'Deny')
GO
INSERT [dbo].[AccessLevel] ([ID], [LevelName]) VALUES (2, N'Access + Preview')
GO
INSERT [dbo].[AccessLevel] ([ID], [LevelName]) VALUES (3, N'Access + Add/Edit')
GO
INSERT [dbo].[AccessLevel] ([ID], [LevelName]) VALUES (4, N'Access + Add/Edit/Remove')
GO
SET IDENTITY_INSERT [dbo].[AccessLevel] OFF
GO
SET ANSI_PADDING ON

GO
