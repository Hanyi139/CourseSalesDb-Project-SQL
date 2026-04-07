# Course Sales Database Management System

This repository showcases a full **T-SQL implementation** of a Course Sales Database built in SQL Server Management Studio (SSMS).  
It demonstrates **database design, data seeding, reporting abstraction, and stored procedure-driven querying**—ideal for showcasing SQL skills in a portfolio. 

Note: All data is mock/sample data.

---

## Repository Structure

The project is organized into three main folders:

### 1. CourseSalesDb Setup
Contains the **database schema and seed data**.

- `BuildCourseSalesDb.sql`  
  → Master script to create the database, tables, and relationships

- Data Seeding Scripts:
  - `InsertProducts.sql`
  - `InsertCustomers.sql`
  - `InsertOrders.sql`
  - `InsertOrderItems.sql`  
  → Populate the database with sample data

---

### 2. CourseSalesDb Views
Provides **data abstraction and reporting layers**.

- View Creation Scripts:
  - `Create vw_OrderDetails.sql`
  - `Create vw_OrderSummary.sql`

- View Definition References:
  - `vw_OrderDetails.sql`
  - `vw_OrderSummary.sql`  
  → Show underlying query logic for transparency and learning

---

### 3️. CourseSalesDb Stored Procedures
A collection of **12 stored procedures** designed for efficient and reusable querying.

#### Customer Queries
- `GetCustomers`  
  → Returns all customers (no parameters)
  
- `GetCustomerByID`  
  → Retrieves customer by `CustomerID`
  
- `GetCustomerByName`  
  → Retrieves customer by `FirstName` and `LastName`
  
- `GetCustomerByEmail`  
  → Retrieves customer by `Email`

---

#### Product Queries
- `GetProducts`  
  → Returns all products (no parameters)

- `GetProductsByCategory`  
  → Filters products by 'Category'

- `GetProductsByName`  
  → Filters products by 'ProductName'

---

#### Order & Reporting Queries
- `GetOrdersView`  
  → Returns all orders (via reporting view)

- `GetOrdersViewStatus`  
  → Retrieves orders by 'OrderStatus' (open/closed)

- `GetOrdersByCustomerID`  
  → Retrieves orders by `CustomerID`

- `GetOrdersByCustomerName`  
  → Retrieves orders by 'CustomerName'

- `GetOrdersDetailsByOrderID`  
  → Retrieves order details by `OrderID`

---

## Intial Setup

To replicate this database in **SQL Server Management Studio (SSMS)**:

### Step 1: Create Database & Tables
- Run `BuildCourseSalesDb.sql`  
- Run remaining scripts in CourseSalesDb Setup to insert data

### Step 2: Create Views
- Run `Create vw_OrderDetails.sql` and `Create vw_OrderSummary.sql`

### Step 4: Create Stored Procedures
- Run all scripts in CourseSalesDb Stored Procedures

---

## Skills Demonstrated
- T-SQL Development
- Database Design & Normalization
- Stored Procedures & Parameterization
- SQL Views for Reporting
