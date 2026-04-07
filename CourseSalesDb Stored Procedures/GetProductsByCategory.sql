USE [CourseSalesDb]
GO

/****** Object:  StoredProcedure [dbo].[GetProductsByCategory]    Script Date: 4/6/2026 7:35:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProductsByCategory]
	-- Add the parameters for the stored procedure here
	@Category varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ProductID, ProductCode, ProductName, Category, UnitPrice, IsActive
FROM Products
WHERE Category like '%' + @Category + '%'
ORDER BY ProductID
END
GO


