USE [master]
GO

/****** Object:  Database [CourseSalesDb]    Script Date: 3/20/2026 2:21:36 PM ******/
CREATE DATABASE [CourseSalesDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CourseSalesDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER01\MSSQL\DATA\CourseSalesDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CourseSalesDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER01\MSSQL\DATA\CourseSalesDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CourseSalesDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [CourseSalesDb] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [CourseSalesDb] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [CourseSalesDb] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [CourseSalesDb] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [CourseSalesDb] SET ARITHABORT OFF 
GO

ALTER DATABASE [CourseSalesDb] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [CourseSalesDb] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [CourseSalesDb] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [CourseSalesDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [CourseSalesDb] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [CourseSalesDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [CourseSalesDb] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [CourseSalesDb] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [CourseSalesDb] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [CourseSalesDb] SET  ENABLE_BROKER 
GO

ALTER DATABASE [CourseSalesDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [CourseSalesDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [CourseSalesDb] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [CourseSalesDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [CourseSalesDb] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [CourseSalesDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [CourseSalesDb] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [CourseSalesDb] SET RECOVERY FULL 
GO

ALTER DATABASE [CourseSalesDb] SET  MULTI_USER 
GO

ALTER DATABASE [CourseSalesDb] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [CourseSalesDb] SET DB_CHAINING OFF 
GO

ALTER DATABASE [CourseSalesDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [CourseSalesDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [CourseSalesDb] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [CourseSalesDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [CourseSalesDb] SET QUERY_STORE = ON
GO

ALTER DATABASE [CourseSalesDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [CourseSalesDb] SET  READ_WRITE 
GO


--create tables
USE [CourseSalesDb]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 3/20/2026 2:22:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[StateCode] [char](2) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT (sysdatetime()) FOR [CreatedDate]
GO


/****** Object:  Table [dbo].[Products]    Script Date: 3/20/2026 2:23:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](15) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[ProductDescription] [nvarchar](200) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[UnitPrice] [decimal](10, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Products] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[Products]  WITH CHECK ADD CHECK  (([UnitPrice]>=(0)))
GO



/****** Object:  Table [dbo].[Orders]    Script Date: 3/20/2026 2:22:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[OrderStatus] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('Open') FOR [OrderStatus]
GO

ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO


/****** Object:  Table [dbo].[OrderItems]    Script Date: 3/20/2026 2:22:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderItems](
	[OrderItemId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO

ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO

ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD CHECK  (([Quantity]>(0)))
GO

ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD CHECK  (([UnitPrice]>=(0)))
GO


-- create views
/****** Object:  View [dbo].[vw_OrderSummary]    Script Date: 3/18/2026 6:04:25 PM ******/
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
/****** Object:  View [dbo].[vw_OrderSummary]    Script Date: 3/20/2026 2:29:33 PM ******/
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


