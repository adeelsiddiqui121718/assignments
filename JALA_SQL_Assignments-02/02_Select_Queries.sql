-- =====================================================
-- 02_Select_Queries.sql
-- SQL SELECT and SELECT DISTINCT Statements
-- =====================================================

-- USE the database
USE JALA_DB;

-- =====================================================
-- SELECT All Columns and Rows
-- =====================================================

-- Select all columns from Persons table
SELECT * FROM Persons;

-- Select all columns from Orders table
SELECT * FROM Orders;

-- =====================================================
-- SELECT Specific Columns
-- =====================================================

-- Select LastName and FirstName from Persons
SELECT LastName, FirstName FROM Persons;

-- Select OrderNo and P_Id from Orders
SELECT OrderNo, P_Id FROM Orders;

-- Select CustomerName and OrderPrice from Sales
SELECT CustomerName, OrderPrice FROM Sales;

-- =====================================================
-- SELECT DISTINCT - Remove Duplicates
-- =====================================================

-- Select distinct cities from Persons table
SELECT DISTINCT City FROM Persons;

-- Select distinct customer names from Sales table
SELECT DISTINCT CustomerName FROM Sales;

-- Select all distinct cities (showing which cities have people)
SELECT DISTINCT City FROM Persons ORDER BY City;

-- Count the number of unique cities
SELECT COUNT(DISTINCT City) AS UniqueCities FROM Persons;

-- Count the number of unique customers
SELECT COUNT(DISTINCT CustomerName) FROM Sales;
