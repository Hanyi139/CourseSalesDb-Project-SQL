USE [CourseSalesDb]
GO

/****** Object:  View [dbo].[vw_OrderDetail]    Script Date: 4/6/2026 8:16:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vw_OrderDetail]
AS
SELECT
    o.OrderId,
    o.OrderDate,
    p.ProductCode,
	p.ProductName,
    c.CustomerId,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    c.City,
    c.StateCode,
    SUM(oi.Quantity * oi.UnitPrice) AS ItemTotalCost
FROM Orders o
INNER JOIN Customers c ON o.CustomerId = c.CustomerId
INNER JOIN OrderItems oi ON o.OrderId = oi.OrderId
INNer JOIN Products p on oi.OrderItemId = p.ProductId
GROUP BY
    o.OrderId,
    o.OrderDate,
    o.OrderStatus,
	p.ProductCode,
	p.ProductName,
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.City,
    c.StateCode;


GO


