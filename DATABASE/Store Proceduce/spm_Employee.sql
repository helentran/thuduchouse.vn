-- =============================================
-- Author:		<HelenTran>
-- Create date: <13-12-2016>
-- Description:	<PROCEDURE - Employee: Select all + Select detail + Insert>
-- =============================================
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
	@Nationnality nvarchar(20)=NULL,
	@CurrentAddress nvarchar(200)= NULL,
	@ResidentAddress nvarchar(200) =NULL,
	@Telephone varchar(18)= NULL,
	@Mobile varchar(18)= NULL,
	@IDNumber varchar(15)= NULL,
	@DateOfIssue datetime =NULL,
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
				INSERT INTO Employee(IDDept,IDComp,CodeEmp,FirstName,LastName,DateOfBirth,PlaceOfBirth,EthnicGroup,Religion,PlaceOfOrigin,Nationnality,CurrentAddress,ResidentAddress,
									Telephone,Mobile,IDNumber,DateOfIssue,PlaceOfIssue,Gender,[Image],Position,Email) 
				VALUES(@IDDept,@IDComp,@CodeEmp,@FirstName,@LastName,@DateOfBirth,@PlaceOfBirth,@EthnicGroup,@Religion,@PlaceOfOrigin,@Nationnality,@CurrentAddress,@ResidentAddress,
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