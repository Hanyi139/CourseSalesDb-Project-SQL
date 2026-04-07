USE [CourseSalesDb]
GO

/****** Object:  View [dbo].[vw_OrderSummary]    Script Date: 4/6/2026 8:16:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vw_OrderSummary]
AS
SELECT
    o.OrderId,
    o.OrderDate,
    o.OrderStatus,
    c.CustomerId,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    c.City,
    c.StateCode,
    SUM(oi.Quantity * oi.UnitPrice) AS OrderTotal
FROM Orders o
INNER JOIN Customers c ON o.CustomerId = c.CustomerId
INNER JOIN OrderItems oi ON o.OrderId = oi.OrderId
GROUP BY
    o.OrderId,
    o.OrderDate,
    o.OrderStatus,
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.City,
    c.StateCode;

GO


