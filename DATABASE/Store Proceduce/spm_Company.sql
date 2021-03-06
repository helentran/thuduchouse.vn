USE [HRSystem]
GO
/****** Object:  StoredProcedure [dbo].[spm_Company]    Script Date: 8/27/2017 4:38:42 PM ******/
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
		@ID	int = null,
		@Name nvarchar(50)=null,
		@CompanyType varchar(20) = null,
		@Phone varchar(20) = null,
		@Address tinyint = null,
		@Fax tinyint = null,
		@Website int = null,
		@Action nvarchar(20) = 'select'

AS
BEGIN
   --SET NOCOUNT ON;
   --query: INSERT
    IF @Action='insert' BEGIN
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
    IF @Action='select' BEGIN
		IF @ID IS NOT NULL 
			SELECT * FROM Company WHERE ID = @ID 
		ELSE
			SELECT * FROM Account 
    END	
	 --query: UPDATE
    IF @Action='update' BEGIN
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
