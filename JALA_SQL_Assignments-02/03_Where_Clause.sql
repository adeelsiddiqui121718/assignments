-- =====================================================
-- 03_Where_Clause.sql
-- SQL WHERE Clause - Filter Records
-- =====================================================

USE JALA_DB;

-- =====================================================
-- Basic WHERE Clause Examples
-- =====================================================

-- Select persons living in Hyderabad
SELECT * FROM Persons WHERE City='Hyderabad';

-- Select persons with FirstName = 'Tove'
SELECT * FROM Persons WHERE FirstName='Tove';

-- Select persons with P_Id = 1
SELECT * FROM Persons WHERE P_Id=1;

-- =====================================================
-- Numeric Values (No Quotes)
-- =====================================================

-- Select orders with OrderPrice = 500
SELECT * FROM Sales WHERE OrderPrice=500;

-- Select orders with OrderQuantity = 2
SELECT * FROM Sales WHERE OrderQuantity=2;

-- =====================================================
-- Text Values (With Single Quotes)
-- =====================================================

-- Select customer 'Smith' from Sales
SELECT * FROM Sales WHERE CustomerName='Smith';

-- Select persons with LastName 'Hansen'
SELECT * FROM Persons WHERE LastName='Hansen';

-- =====================================================
-- WHERE with Comparison Operators
-- =====================================================

-- Equal to (=)
SELECT * FROM Sales WHERE OrderPrice=500;

-- Not equal to (<>)
SELECT * FROM Sales WHERE CustomerName<>'Smith';

-- Greater than (>)
SELECT * FROM Sales WHERE OrderPrice>400;

-- Less than (<)
SELECT * FROM Sales WHERE OrderQuantity<3;

-- Greater than or equal (>=)
SELECT * FROM Sales WHERE OrderPrice>=500;

-- Less than or equal (<=)
SELECT * FROM Sales WHERE OrderQuantity<=2;

-- =====================================================
-- Complex WHERE Conditions
-- =====================================================

-- Select orders from Hyderabad where FirstName is 'Ola'
SELECT * FROM Persons WHERE City='Hyderabad' AND FirstName='Ola';

-- Select sales where price is greater than 200
SELECT * FROM Sales WHERE OrderPrice>200;

-- Select sales from Smith or Johnson
SELECT * FROM Sales WHERE CustomerName='Smith' OR CustomerName='Johnson';
