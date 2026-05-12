-- =====================================================
-- 05_Order_By.sql
-- SQL ORDER BY Keyword - Sort Results
-- =====================================================

USE JALA_DB;

-- =====================================================
-- ORDER BY - Ascending (Default)
-- =====================================================

-- Sort Persons by LastName in ascending order
SELECT * FROM Persons ORDER BY LastName;

-- Sort Persons by LastName (ASC is default)
SELECT * FROM Persons ORDER BY LastName ASC;

-- Sort Sales by OrderPrice in ascending order
SELECT * FROM Sales ORDER BY OrderPrice;

-- =====================================================
-- ORDER BY - Descending
-- =====================================================

-- Sort Persons by LastName in descending order
SELECT * FROM Persons ORDER BY LastName DESC;

-- Sort Sales by OrderPrice in descending order
SELECT * FROM Sales ORDER BY OrderPrice DESC;

-- Sort Sales by OrderQuantity in descending order
SELECT * FROM Sales ORDER BY OrderQuantity DESC;

-- =====================================================
-- ORDER BY Multiple Columns
-- =====================================================

-- Sort by City (ascending), then by LastName (ascending)
SELECT * FROM Persons ORDER BY City, LastName;

-- Sort by City (ascending), then by LastName (descending)
SELECT * FROM Persons ORDER BY City, LastName DESC;

-- Sort by CustomerName (ascending), then by OrderPrice (descending)
SELECT * FROM Sales ORDER BY CustomerName, OrderPrice DESC;

-- =====================================================
-- ORDER BY with WHERE Clause
-- =====================================================

-- Select persons from Hyderabad and sort by FirstName
SELECT * FROM Persons WHERE City='Hyderabad' ORDER BY FirstName;

-- Select sales from Smith and sort by OrderPrice descending
SELECT * FROM Sales WHERE CustomerName='Smith' ORDER BY OrderPrice DESC;

-- Select sales where price > 200 and sort by OrderDate
SELECT * FROM Sales WHERE OrderPrice>200 ORDER BY OrderDate;

-- =====================================================
-- ORDER BY with Specific Columns Selected
-- =====================================================

-- Select LastName and FirstName from Persons, sorted by LastName
SELECT LastName, FirstName FROM Persons ORDER BY LastName;

-- Select CustomerName and OrderPrice from Sales, sorted by OrderPrice DESC
SELECT CustomerName, OrderPrice FROM Sales ORDER BY OrderPrice DESC;

-- =====================================================
-- ORDER BY with Column Position
-- =====================================================

-- Sort by first selected column (LastName)
SELECT LastName, FirstName FROM Persons ORDER BY 1;

-- Sort by second selected column (FirstName)
SELECT LastName, FirstName FROM Persons ORDER BY 2;

-- =====================================================
-- ORDER BY with COUNT and GROUP BY
-- =====================================================

-- Count sales by customer and sort by count descending
SELECT CustomerName, COUNT(*) as SalesCount FROM Sales GROUP BY CustomerName ORDER BY SalesCount DESC;

-- Sum of prices by customer sorted descending
SELECT CustomerName, SUM(OrderPrice) as TotalPrice FROM Sales GROUP BY CustomerName ORDER BY TotalPrice DESC;
