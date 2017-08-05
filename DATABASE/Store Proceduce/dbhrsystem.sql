Create database [HRSystem]
GO

use [HRSystem]
GO

/****** Object:  Table [dbo].[Company]******/
CREATE TABLE CompanyType(
	ID			varchar(10) NOT NULL,
	Name		nvarchar(500) NOT NULL
)
GO

CREATE TABLE Company(
	ID			varchar(10) NOT NULL,
	Name		nvarchar(500) NOT NULL,
	CompanyType nvarchar(50) NOT NULL,
	Phone		varchar(18) NULL,
	Address		nvarchar(500) NULL,
	Fax			varchar	(50) NULL,
	Website		varchar	(50) NULL
)
GO

/****** Object:  Table [dbo].[Website]******/
CREATE TABLE Website(
	ID			int identity(1,1),
	Name		nvarchar(200) NOT NULL,
	Link		nvarchar(500) NULL
)
GO

/****** Object:  Table [dbo].[Entry]******/
CREATE TABLE Menu(
	ID			int not null,
	WebID		int			NOT NULL,
	Name		nvarchar(200) NOT NULL,
	Note		nvarchar(500) NULL,
	[Index]		int NULL,
	Class		varchar(100)  NULL,
	Slug		varchar(50)  NULL,
	ParentSlugID	int	default 0 not null,
	[Action]	varchar(50) NULL,
	[Image]     nvarchar(200) NULL,
	Active		bit	NULL CONSTRAINT [DF_Entry_Active]  DEFAULT ((1)) 
)
GO

/****** Object:  Table [dbo].[Employee]******/
CREATE TABLE Employee(
	IDEmp			int	IDENTITY(1,1) NOT NULL,
	IDDept			varchar(10) NULL,
	IDComp			varchar(3)	NULL,
	CodeEmp			varchar(10) NULL,
	FirstName		nvarchar(50) NULL,
	LastName		nvarchar(50) NULL,
	DateOfBirth		datetime NULL,
	PlaceOfBirth	nvarchar(150) NULL,
	EthnicGroup		nvarchar(20) NULL,
	Religion		nvarchar(20) NULL,
	PlaceOfOrigin	nvarchar(50) NULL,
	Nationality	nvarchar(20) NULL,
	CurrentAddress	nvarchar(200) NULL,
	ResidentAddress nvarchar(200) NULL,
	Telephone		varchar(18) NULL,
	Mobile			varchar(18) NULL,
	IDNumber		varchar(15)  NULL,
	DateOfIssue		datetime	 NULL,
	PlaceOfIssue	nvarchar(50) NULL,
	Gender			bit			NULL,
	[Image]			nvarchar(200) NULL,
	Position		nvarchar(200) NULL,
	Email			varchar(100) NULL
)
GO

/****** Object:  Table [dbo].[Department]******/
CREATE TABLE [dbo].[AccessLevel](
	ID			int identity(1,1),
	LevelName	nvarchar(200) NOT NULL,
)
GO
/****** Object:  Table [dbo].[UserRole]******/
CREATE TABLE [dbo].[UserRole](
	[ID] [int]	identity(1,1) NOT NULL,
	RoleName	nvarchar(200) NOT NULL,
)
GO
/****** Object:  Table [dbo].[Department]******/
CREATE TABLE Department(
	ID [int]		identity(1,1) NOT NULL,
	Name			nvarchar(200) NOT NULL,
	ShortName		nvarchar(20) NULL,
	[Index]			int not null ,
	CompanyID		varchar(10) NOT NULL
)
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2/16/2017 1:47:19 PM ******/
CREATE TABLE [dbo].[Account](
	[ID] [int]		identity(1,1) NOT NULL,
	[CodeEmp]		varchar(10) NULL,	
	[Username]		[varchar](20) NOT NULL,
	[Password]		[varchar](20) NOT NULL,
	[AccessLevel]	[tinyint] NOT NULL,
	[UserRole]		[tinyint] NOT NULL,
	[DepartmentID]	int NOT NULL,
	[CompanyID]		varchar(10) NOT NULL,
	CreateDate		datetime null
)
GO
/****** ******/
ALTER TABLE Company ADD PRIMARY KEY(ID);
GO
ALTER TABLE Website ADD PRIMARY KEY(ID);
GO
ALTER TABLE Department ADD PRIMARY KEY(ID);
ALTER TABLE Department ADD CONSTRAINT FK_Department_Company FOREIGN KEY(CompanyID) REFERENCES Company(ID)
ALTER TABLE Department ADD CONSTRAINT UC_Department_Index DEFAULT 0 FOR [Index]
GO
ALTER TABLE Account ADD PRIMARY KEY(ID);
ALTER TABLE Account ADD CONSTRAINT FK_Account_Company FOREIGN KEY(CompanyID) REFERENCES Company(ID)
--ALTER TABLE Account DROP CONSTRAINT FK_Account_Company
ALTER TABLE Account ADD CONSTRAINT FK_Account_Department FOREIGN KEY(DepartmentID) REFERENCES Department(ID)
--ALTER TABLE Account DROP CONSTRAINT FK_Account_Department
ALTER TABLE Account ADD CONSTRAINT UC_Account_Username UNIQUE (Username)
ALTER TABLE Account ADD CONSTRAINT UC_Account_CreateDate DEFAULT GETDATE() FOR CreateDate
GO
ALTER TABLE Menu ADD CONSTRAINT FK_Menu_Website FOREIGN KEY(WebID) REFERENCES Website(ID);
--ALTER TABLE Menu DROP CONSTRAINT FK_Website
ALTER TABLE Menu ADD CONSTRAINT UC_Menu_Slug UNIQUE (Slug)
ALTER TABLE Menu ADD CONSTRAINT UC_Menu_ID UNIQUE (ID)
GO
ALTER TABLE Employee ADD PRIMARY KEY(IDEmp);
ALTER TABLE Employee ADD CONSTRAINT UC_Employee_CodeEmp UNIQUE (CodeEmp)
GO
ALTER TABLE [UserRole] ADD PRIMARY KEY(ID);
ALTER TABLE [UserRole] ADD CONSTRAINT UC_UserRole_RoleName UNIQUE (RoleName)
GO
ALTER TABLE AccessLevel ADD PRIMARY KEY(ID);
ALTER TABLE AccessLevel ADD CONSTRAINT UC_AccessLevel_LevelName UNIQUE (LevelName)




