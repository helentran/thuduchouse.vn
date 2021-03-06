USE [master]
GO
/****** Object:  Database [HRSystem]    Script Date: 5/19/2017 3:29:53 PM ******/
CREATE DATABASE [HRSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.HELENTRAN\MSSQL\DATA\HRSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HRSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.HELENTRAN\MSSQL\DATA\HRSystem_log.ldf' , SIZE = 2560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HRSystem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HRSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HRSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HRSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HRSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HRSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HRSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [HRSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HRSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HRSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HRSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HRSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HRSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HRSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HRSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HRSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HRSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HRSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HRSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HRSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HRSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HRSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HRSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HRSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HRSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HRSystem] SET  MULTI_USER 
GO
ALTER DATABASE [HRSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HRSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HRSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HRSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HRSystem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HRSystem]
GO
/****** Object:  User [admin]    Script Date: 5/19/2017 3:29:53 PM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [admin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/19/2017 3:29:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[AccessLevel] [tinyint] NOT NULL,
	[CreateDate] [datetime] NULL CONSTRAINT [UC_Account_CreateDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/19/2017 3:29:53 PM ******/
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
	[Address] [nvarchar](500) NULL,
	[Fax] [varchar](50) NULL,
	[Website] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyType]    Script Date: 5/19/2017 3:29:53 PM ******/
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
/****** Object:  Table [dbo].[Department]    Script Date: 5/19/2017 3:29:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[ShortName] [nvarchar](50) NULL,
	[IndexName] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/19/2017 3:29:53 PM ******/
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
	[PermanentAddress] [nvarchar](200) NULL,
	[Telephone] [varchar](18) NULL,
	[Mobile] [varchar](18) NULL,
	[IDNumber] [varchar](15) NULL,
	[DateOfIssue] [datetime] NULL,
	[PlaceOfIssue] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[Image] [nvarchar](200) NULL,
	[Position] [nvarchar](200) NULL,
	[Email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UC_Employee_CodeEmp] UNIQUE NONCLUSTERED 
(
	[CodeEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/19/2017 3:29:53 PM ******/
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
	[ParentSlugID] [int] NOT NULL,
	[Action] [varchar](50) NULL,
	[Image] [nvarchar](200) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/19/2017 3:29:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[MSNV] [varchar](8) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Birthday] [datetime] NOT NULL,
	[Place] [nchar](10) NULL,
	[Address] [nchar](10) NULL,
	[AddressCurrent] [nchar](10) NULL,
	[Nation] [nchar](10) NULL,
	[Phone] [nchar](10) NULL,
	[Mobile] [nchar](10) NULL,
	[IDCard] [nchar](10) NULL,
	[DateOfIDCard] [nchar](10) NULL,
	[PlaceOfIDCard] [nchar](10) NULL,
	[Gender] [nchar](10) NULL,
	[Nationality] [nchar](10) NULL,
	[Religion] [nchar](10) NULL,
	[Image] [nchar](10) NULL,
	[Position] [nchar](10) NULL,
	[Email] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Website]    Script Date: 5/19/2017 3:29:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Website](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Link] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[spm_Account]    Script Date: 5/19/2017 3:29:53 PM ******/
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
		@Username varchar(20) = null,
		@Password varchar(20) = null,
		@AccessLevel tinyint = null,
		@Action nvarchar(20) = 'select'

AS
BEGIN
   --SET NOCOUNT ON;
   --query: INSERT
    IF @Action='insert' BEGIN
		IF @Username IS NOT NULL and @Password IS NOT NULL
		BEGIN
			IF NOT EXISTS (SELECT TOP 1 1 FROM Account WHERE Username = @Username and [Password] = @Password)
			BEGIN
				-- Insert statements for procedure here
				INSERT INTO Account(Username,[Password],AccessLevel) 
				VALUES(@Username,@Password,@AccessLevel)
				SELECT @ID = SCOPE_IDENTITY();
			END	
		END
    END		
    --query: SELECT
    IF @Action='select' BEGIN
		IF @ID IS NOT NULL and @Username IS NOT NULL
			SELECT * FROM Account WHERE ID = @ID and Username = @Username
		ELSE
			SELECT * FROM Account 
    END	
    --query: UPDATE
    IF @Action='update' BEGIN
		IF @ID IS NOT NULL and @Username IS NOT NULL
		BEGIN
			IF EXISTS (SELECT TOP 1 1 FROM Account WHERE Username = @Username)
			BEGIN
				-- Insert statements for procedure here
				UPDATE Account set [Password]=@Password	where ID = @ID and Username = @Username
			END	
		END
    END	
END

GO
/****** Object:  StoredProcedure [dbo].[spm_Employee]    Script Date: 5/19/2017 3:29:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spm_Employee](
	@IDEmp int= NULL,
	@IDDept varchar(10) = NULL,
	@IDComp varchar(3)= NULL,
	@CodeEmp varchar(10)= NULL,
	@FirstName nvarchar(50)= NULL,
	@LastName nvarchar(50) =NULL,
	@DateOfBirth datetime =NULL,
	@PlaceOfBirth nvarchar(150)= NULL,
	@EthnicGroup nvarchar(20)= NULL,
	@Religion nvarchar(20)= NULL,
	@PlaceOfOrigin nvarchar(50)= NULL,
	@Nationality nvarchar(20) =NULL,
	@CurrentAddress nvarchar(200) =NULL,
	@PermanentAddress nvarchar(200) =NULL,
	@Telephone varchar(18)= NULL,
	@Mobile varchar(18)= NULL,
	@IDNumber varchar(15)= NULL,
	@DateOfIssue datetime= NULL,
	@PlaceOfIssue nvarchar(50)= NULL,
	@Gender bit= NULL,
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
				INSERT INTO Employee(IDDept,IDComp,CodeEmp,FirstName,LastName,DateOfBirth,PlaceOfBirth,EthnicGroup,Religion,PlaceOfOrigin,Nationality,CurrentAddress,PermanentAddress,
									Telephone,Mobile,IDNumber,DateOfIssue,PlaceOfIssue,Gender,[Image],Position,Email) 
				VALUES(@IDDept,@IDComp,@CodeEmp,@FirstName,@LastName,@DateOfBirth,@PlaceOfBirth,@EthnicGroup,@Religion,@PlaceOfOrigin,@Nationality,@CurrentAddress,@PermanentAddress,
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
/****** Object:  StoredProcedure [dbo].[spm_Menu]    Script Date: 5/19/2017 3:29:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[spm_Menu](
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
			SELECT * FROM Menu WHERE ID = @ID	and WebID = @WebID
		ELSE IF  @WebID IS NOT NULL
			SELECT * FROM Menu WHERE WebID = @WebID	
		ELSE
			SELECT * FROM Menu 
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
END

GO
USE [master]
GO
ALTER DATABASE [HRSystem] SET  READ_WRITE 
GO
