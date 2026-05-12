-- =====================================================
-- 09_Aggregate_Functions.sql
-- SQL Aggregate Functions - COUNT, SUM, AVG, MIN, MAX
-- =====================================================

USE JALA_DB;

-- =====================================================
-- COUNT Function - Count Rows
-- =====================================================

-- Count all rows in Sales table
SELECT COUNT(*) FROM Sales;

-- Count rows where CustomerName = 'Smith'
SELECT COUNT(*) FROM Sales WHERE CustomerName='Smith';

-- Count total number of records
SELECT COUNT(*) AS TotalOrders FROM Sales;

-- Count specific column (ignores NULL values)
SELECT COUNT(CustomerName) AS TotalCustomers FROM Sales;

-- =====================================================
-- COUNT with DISTINCT
-- =====================================================

-- Count unique customers
SELECT COUNT(DISTINCT CustomerName) AS UniqueCustomers FROM Sales;

-- Result: Shows how many different customers placed orders

-- Count unique cities from Persons
SELECT COUNT(DISTINCT City) AS UniqueCities FROM Persons;

-- =====================================================
-- SUM Function - Sum of Values
-- =====================================================

-- Sum of all OrderPrice values
SELECT SUM(OrderPrice) FROM Sales;

-- Sum of all OrderPrice with label
SELECT SUM(OrderPrice) AS TotalRevenue FROM Sales;

-- Sum of OrderPrice where CustomerName = 'Smith'
SELECT SUM(OrderPrice) FROM Sales WHERE CustomerName='Smith';

-- Sum of OrderQuantity
SELECT SUM(OrderQuantity) AS TotalQuantity FROM Sales;

-- =====================================================
-- AVG Function - Average Value
-- =====================================================

-- Average OrderPrice
SELECT AVG(OrderPrice) FROM Sales;

-- Average OrderPrice with label
SELECT AVG(OrderPrice) AS AveragePrice FROM Sales;

-- Average OrderQuantity
SELECT AVG(OrderQuantity) AS AverageQuantity FROM Sales;

-- Average OrderPrice where OrderPrice > 200
SELECT AVG(OrderPrice) FROM Sales WHERE OrderPrice > 200;

-- Average price for customer 'Smith'
SELECT AVG(OrderPrice) AS AvgSmithPrice FROM Sales WHERE CustomerName='Smith';

-- =====================================================
-- MIN Function - Minimum Value
-- =====================================================

-- Minimum OrderPrice
SELECT MIN(OrderPrice) FROM Sales;

-- Minimum OrderPrice with label
SELECT MIN(OrderPrice) AS LowestPrice FROM Sales;

-- Minimum OrderQuantity
SELECT MIN(OrderQuantity) AS MinQuantity FROM Sales;

-- Minimum OrderPrice where CustomerName = 'Smith'
SELECT MIN(OrderPrice) FROM Sales WHERE CustomerName='Smith';

-- =====================================================
-- MAX Function - Maximum Value
-- =====================================================

-- Maximum OrderPrice
SELECT MAX(OrderPrice) FROM Sales;

-- Maximum OrderPrice with label
SELECT MAX(OrderPrice) AS HighestPrice FROM Sales;

-- Maximum OrderQuantity
SELECT MAX(OrderQuantity) AS MaxQuantity FROM Sales;

-- Maximum OrderPrice where CustomerName = 'Smith'
SELECT MAX(OrderPrice) FROM Sales WHERE CustomerName='Smith';

-- =====================================================
-- Combining Multiple Aggregate Functions
-- =====================================================

-- Get all aggregate functions at once
SELECT
    COUNT(*) AS TotalOrders,
    SUM(OrderPrice) AS TotalRevenue,
    AVG(OrderPrice) AS AveragePrice,
    MIN(OrderPrice) AS LowestPrice,
    MAX(OrderPrice) AS HighestPrice
FROM Sales;

-- Get statistics for a specific customer
SELECT
    COUNT(*) AS OrderCount,
    SUM(OrderPrice) AS TotalSpent,
    AVG(OrderPrice) AS AverageOrderPrice,
    MIN(OrderPrice) AS LowestOrder,
    MAX(OrderPrice) AS HighestOrder
FROM Sales
WHERE CustomerName='Smith';

-- =====================================================
-- GROUP BY with Aggregate Functions
-- =====================================================

-- Count orders by customer
SELECT CustomerName, COUNT(*) AS OrderCount
FROM Sales
GROUP BY CustomerName;

-- Sum of prices by customer
SELECT CustomerName, SUM(OrderPrice) AS TotalSpent
FROM Sales
GROUP BY CustomerName;

-- Average price by customer
SELECT CustomerName, AVG(OrderPrice) AS AveragePrice
FROM Sales
GROUP BY CustomerName;

-- Multiple aggregates by customer
SELECT
    CustomerName,
    COUNT(*) AS OrderCount,
    SUM(OrderPrice) AS TotalSpent,
    AVG(OrderPrice) AS AveragePrice,
    MIN(OrderPrice) AS LowestPrice,
    MAX(OrderPrice) AS HighestPrice
FROM Sales
GROUP BY CustomerName;

-- =====================================================
-- HAVING Clause with Aggregate Functions
-- =====================================================

-- Get customers with more than 1 order
SELECT CustomerName, COUNT(*) AS OrderCount
FROM Sales
GROUP BY CustomerName
HAVING COUNT(*) > 1;

-- Get customers with total spending > 500
SELECT CustomerName, SUM(OrderPrice) AS TotalSpent
FROM Sales
GROUP BY CustomerName
HAVING SUM(OrderPrice) > 500;

-- Get customers with average price > 300
SELECT CustomerName, AVG(OrderPrice) AS AveragePrice
FROM Sales
GROUP BY CustomerName
HAVING AVG(OrderPrice) > 300;

-- =====================================================
-- GROUP BY with ORDER BY
-- =====================================================

-- Count orders by customer, sorted by count descending
SELECT CustomerName, COUNT(*) AS OrderCount
FROM Sales
GROUP BY CustomerName
ORDER BY OrderCount DESC;

-- Total revenue by customer, sorted by revenue descending
SELECT CustomerName, SUM(OrderPrice) AS TotalRevenue
FROM Sales
GROUP BY CustomerName
ORDER BY TotalRevenue DESC;

-- =====================================================
-- Aggregate Functions with WHERE Clause
-- =====================================================

-- Count orders where price > 300
SELECT COUNT(*) AS ExpensiveOrders FROM Sales WHERE OrderPrice > 300;

-- Sum of prices for orders > 400
SELECT SUM(OrderPrice) AS SumExpensive FROM Sales WHERE OrderPrice > 400;

-- Average price for expensive items (price > 500)
SELECT AVG(OrderPrice) AS AvgExpensive FROM Sales WHERE OrderPrice > 500;

-- =====================================================
-- Complex Aggregate Queries
-- =====================================================

-- Get customer with highest total spending
SELECT TOP 1 CustomerName, SUM(OrderPrice) AS TotalSpent
FROM Sales
GROUP BY CustomerName
ORDER BY TotalSpent DESC;

-- Get customer with most orders
SELECT TOP 1 CustomerName, COUNT(*) AS OrderCount
FROM Sales
GROUP BY CustomerName
ORDER BY OrderCount DESC;

-- Get average price per customer sorted
SELECT CustomerName, AVG(OrderPrice) AS AvgPrice
FROM Sales
GROUP BY CustomerName
ORDER BY AvgPrice DESC;

-- =====================================================
-- Aggregate with DISTINCT
-- =====================================================

-- Count distinct customers
SELECT COUNT(DISTINCT CustomerName) AS UniqueCustomers FROM Sales;

-- Sum of prices for distinct dates
SELECT COUNT(DISTINCT OrderDate) AS DifferentDates FROM Sales;

-- =====================================================
-- NULL Handling in Aggregates
-- =====================================================

-- COUNT(*) - includes NULL values
-- COUNT(column) - excludes NULL values
-- Other aggregates (SUM, AVG, MIN, MAX) exclude NULL values

-- Example: If we have NULL values
-- COUNT(*) = 6 (all rows)
-- COUNT(CustomerName) = 6 (if no NULLs in CustomerName column)
-- AVG(OrderPrice) = calculates average ignoring any NULL prices

-- =====================================================
-- Practical Examples
-- =====================================================

-- Sales Report
SELECT
    'Total Orders' AS Metric,
    COUNT(*) AS Value
FROM Sales
UNION ALL
SELECT
    'Total Revenue' AS Metric,
    CAST(SUM(OrderPrice) AS VARCHAR) AS Value
FROM Sales
UNION ALL
SELECT
    'Average Order Value' AS Metric,
    CAST(AVG(OrderPrice) AS VARCHAR) AS Value
FROM Sales
UNION ALL
SELECT
    'Highest Order' AS Metric,
    CAST(MAX(OrderPrice) AS VARCHAR) AS Value
FROM Sales
UNION ALL
SELECT
    'Lowest Order' AS Metric,
    CAST(MIN(OrderPrice) AS VARCHAR) AS Value
FROM Sales;

-- Customer Summary
SELECT
    CustomerName,
    COUNT(*) AS 'Number of Orders',
    SUM(OrderPrice) AS 'Total Spent',
    AVG(OrderPrice) AS 'Average Order',
    MIN(OrderPrice) AS 'Min Order',
    MAX(OrderPrice) AS 'Max Order'
FROM Sales
GROUP BY CustomerName
ORDER BY SUM(OrderPrice) DESC;
