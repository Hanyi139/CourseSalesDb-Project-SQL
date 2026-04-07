USE [CourseSalesDb]
GO

/****** Object:  StoredProcedure [dbo].[GetCustomerByEmail]    Script Date: 4/6/2026 7:11:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCustomerByEmail]
	-- Add the parameters for the stored procedure here
	@Email varchar(100)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CustomerID, FirstName, LastName, Email, City, StateCode
FROM Customers
WHERE Email like '%' + @Email + '%'
ORDER BY CustomerID
END
GO


