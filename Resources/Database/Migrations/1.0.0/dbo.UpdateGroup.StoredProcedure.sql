USE [{DATABASE_NAME}]
GO
/****** Object:  StoredProcedure [dbo].[UpdateGroup]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateGroup]
	(
	@Id int,
  @ParentId int,
  @Name nvarchar(255)
	)
AS
	update Groups 
  set
  ParentId = @ParentId, Name = @Name
  where Id = @Id
GO
