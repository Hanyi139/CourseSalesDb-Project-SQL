USE [CourseSalesDb]
GO

/****** Object:  StoredProcedure [dbo].[GetCustomers]    Script Date: 4/6/2026 7:31:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCustomers]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CustomerID, FirstName, LastName, Email, City, StateCode
FROM Customers
ORDER BY CustomerID
END
GO


