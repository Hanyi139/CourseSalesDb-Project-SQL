USE [CourseSalesDb]
GO

/****** Object:  StoredProcedure [dbo].[GetProductsByName]    Script Date: 4/6/2026 7:38:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProductsByName]
	-- Add the parameters for the stored procedure here
	@ProductName varchar(25)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ProductID, ProductCode, ProductName, Category, UnitPrice, IsActive
FROM Products
WHERE ProductName like '%' + @ProductName + '%'
ORDER BY ProductID
END
GO


