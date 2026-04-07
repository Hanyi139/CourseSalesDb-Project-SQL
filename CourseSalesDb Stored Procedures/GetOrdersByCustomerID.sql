USE [CourseSalesDb]
GO

/****** Object:  StoredProcedure [dbo].[GetOrdersByCustomerID]    Script Date: 4/6/2026 7:31:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetOrdersByCustomerID]
	-- Add the parameters for the stored procedure here
	@CustomerID varchar(25)

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
WHERE CustomerID = @CustomerID
ORDER BY OrderDate
END
GO


