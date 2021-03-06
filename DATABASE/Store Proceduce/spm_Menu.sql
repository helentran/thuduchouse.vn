USE [HRSystem]
GO
/****** Object:  StoredProcedure [dbo].[spm_Menu]    Script Date: 9/10/2017 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spm_Menu](
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
