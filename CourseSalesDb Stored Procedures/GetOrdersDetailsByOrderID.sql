USE [CourseSalesDb]
GO

/****** Object:  StoredProcedure [dbo].[GetOrdersDetailsByOrderID]    Script Date: 4/6/2026 7:33:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetOrdersDetailsByOrderID]
	-- Add the parameters for the stored procedure here
	@OrderID varchar(25)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [OrderId]
      ,[OrderDate]
      ,[ProductCode]
      ,[ProductName]
      ,[CustomerId]
      ,[CustomerName]
      ,[City]
      ,[StateCode]
      ,[ItemTotalCost]
FROM [CourseSalesDb].[dbo].[vw_OrderDetail]
WHERE OrderID = @OrderID
END
GO


