USE [CourseSalesDb]
GO

/****** Object:  StoredProcedure [dbo].[GetCustomerByName]    Script Date: 4/6/2026 7:40:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCustomerByName]
	-- Add the parameters for the stored procedure here
	@FirstName varchar(50),
	@LastName varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CustomerID, FirstName, LastName, Email, City, StateCode
FROM Customers
WHERE FirstName like '%' + @FirstName + '%' AND LastName like '%' + @LastName + '%'
ORDER BY CustomerID
END
GO


