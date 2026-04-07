USE [CourseSalesDb]
GO

/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 4/6/2026 7:34:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProducts]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ProductID, ProductCode, ProductName, Category, UnitPrice, IsActive
FROM Products
ORDER BY ProductID
END
GO


