-- =====================================================
-- 07_Union.sql
-- SQL UNION and UNION ALL Operators
-- =====================================================

USE JALA_DB;

-- =====================================================
-- UNION - Combine results with DISTINCT values only
-- =====================================================

-- List all different employees in Norway and USA (no duplicates)
SELECT E_Name FROM Employees_Norway
UNION
SELECT E_Name FROM Employees_USA;

-- Result will be:
-- Hansen, Ola
-- John, Tove
-- John, Stephen
-- Pettersen, Kari
-- Turner, Sally
-- Kent, Clark
-- Scott, Stephen

-- =====================================================
-- UNION ALL - Combine results with all values (including duplicates)
-- =====================================================

-- List all employees in Norway and USA (including duplicates)
SELECT E_Name FROM Employees_Norway
UNION ALL
SELECT E_Name FROM Employees_USA;

-- Result will include duplicate "John, Stephen"

-- =====================================================
-- UNION with Multiple Columns
-- =====================================================

-- Combine customer names from Sales with employee names from Norway
SELECT E_Name AS Name FROM Employees_Norway
UNION
SELECT DISTINCT CustomerName FROM Sales;

-- =====================================================
-- UNION with WHERE Clause
-- =====================================================

-- Select only Smith customers from Sales and employees from Norway starting with 'J'
SELECT CustomerName FROM Sales WHERE CustomerName='Smith'
UNION
SELECT E_Name FROM Employees_Norway WHERE E_Name LIKE 'J%';

-- =====================================================
-- UNION with ORDER BY
-- =====================================================

-- List all different employees and sort alphabetically
SELECT E_Name FROM Employees_Norway
UNION
SELECT E_Name FROM Employees_USA
ORDER BY E_Name;

-- =====================================================
-- UNION ALL with ORDER BY
-- =====================================================

-- List all employees including duplicates and sort
SELECT E_Name FROM Employees_Norway
UNION ALL
SELECT E_Name FROM Employees_USA
ORDER BY E_Name;

-- =====================================================
-- UNION with Alias (Column Names)
-- =====================================================

-- The column name in the result set will be from the first SELECT statement
SELECT E_Name AS EmployeeName FROM Employees_Norway
UNION
SELECT E_Name FROM Employees_USA;

-- =====================================================
-- Multiple UNION Operations
-- =====================================================

-- Combine three sources (Norway, USA employees and Sales customers)
SELECT E_Name AS Name, 'Norway Employee' AS SourceType FROM Employees_Norway
UNION
SELECT E_Name, 'USA Employee' FROM Employees_USA
UNION
SELECT DISTINCT CustomerName, 'Sales Customer' FROM Sales
ORDER BY Name;

-- =====================================================
-- UNION with SELECT *
-- =====================================================

-- Note: UNION with * requires same columns in same order
-- Combine Employees Norway and USA (if same structure)
SELECT * FROM Employees_Norway
UNION
SELECT * FROM Employees_USA
ORDER BY E_ID;

-- =====================================================
-- UNION Rules
-- =====================================================

-- Rule 1: Same number of columns required
-- SELECT E_ID FROM Employees_Norway UNION SELECT E_Name FROM Employees_USA;  -- ERROR: Different column count

-- Rule 2: Similar data types required
-- Both columns must be compatible

-- Rule 3: Column names from first SELECT statement used
-- SELECT E_ID FROM Employees_Norway
-- UNION
-- SELECT E_ID FROM Employees_USA
-- -- Result column will be named E_ID (from first query)

-- =====================================================
-- UNION vs UNION ALL Performance
-- =====================================================

-- UNION - Removes duplicates (slower due to sorting)
SELECT E_Name FROM Employees_Norway
UNION
SELECT E_Name FROM Employees_USA;

-- UNION ALL - Keeps all rows (faster, no sorting)
SELECT E_Name FROM Employees_Norway
UNION ALL
SELECT E_Name FROM Employees_USA;

-- COUNT comparison
SELECT COUNT(*) AS Total FROM (
  SELECT E_Name FROM Employees_Norway
  UNION
  SELECT E_Name FROM Employees_USA
) AS UnionResult;

SELECT COUNT(*) AS Total FROM (
  SELECT E_Name FROM Employees_Norway
  UNION ALL
  SELECT E_Name FROM Employees_USA
) AS UnionAllResult;
