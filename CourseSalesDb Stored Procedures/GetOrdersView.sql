USE [CourseSalesDb]
GO

/****** Object:  StoredProcedure [dbo].[GetOrdersView]    Script Date: 4/6/2026 7:33:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetOrdersView]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT[OrderId]
      ,[OrderDate]
      ,[OrderStatus]
      ,[CustomerId]
      ,[CustomerName]
      ,[City]
      ,[StateCode]
      ,[OrderTotal]
FROM [CourseSalesDb].[dbo].[vw_OrderSummary]
ORDER BY OrderID
END
GO


