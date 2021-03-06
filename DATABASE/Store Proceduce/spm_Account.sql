USE [HRSystem]
GO
/****** Object:  StoredProcedure [dbo].[spm_Account]    Script Date: 2/16/2017 2:27:31 PM ******/
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
				INSERT INTO Account(CodeEmp,Username,[Password],AccessLevel,UserRole,DepartmentID,CompanyID) 
				VALUES(@CodeEmp,@Username,@Password,@AccessLevel,@UserRole,@DepartmentID,@CompanyID)
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
				UPDATE Account set [Password]=@Password,CodeEmp=@CodeEmp,Username=@Username,AccessLevel=@AccessLevel,UserRole=@UserRole,DepartmentID=@DepartmentID,CompanyID=@CompanyID  where Username = @Username 
			END	
		END
    END	
    --query: UPDATE PASSWORD
    IF @Action='change password' BEGIN
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
