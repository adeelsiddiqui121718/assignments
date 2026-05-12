-- =====================================================
-- 06_Like_In_Between.sql
-- SQL LIKE, IN, BETWEEN Operators and Wildcards
-- =====================================================

USE JALA_DB;

-- =====================================================
-- LIKE Operator - Search for Pattern
-- =====================================================

-- Select persons where FirstName starts with 'O'
SELECT * FROM Persons WHERE FirstName LIKE 'O%';

-- Select persons where LastName contains 'sen'
SELECT * FROM Persons WHERE LastName LIKE '%sen%';

-- Select persons where City starts with 's'
SELECT * FROM Persons WHERE City LIKE 's%';

-- Select persons where City contains 'tav'
SELECT * FROM Persons WHERE City LIKE '%tav%';

-- Select persons where City does NOT contain 'tav'
SELECT * FROM Persons WHERE City NOT LIKE '%tav%';

-- =====================================================
-- LIKE with Wildcards
-- =====================================================

-- % - Substitute for zero or more characters
-- Select customers whose name starts with 'S'
SELECT * FROM Sales WHERE CustomerName LIKE 'S%';

-- Select customers whose name ends with 'th'
SELECT * FROM Sales WHERE CustomerName LIKE '%th';

-- Select customers whose name contains 'mi'
SELECT * FROM Sales WHERE CustomerName LIKE '%mi%';

-- _ - Substitute for exactly one character
-- Select persons where FirstName is 3 characters and starts with 'O'
SELECT * FROM Persons WHERE FirstName LIKE 'O__';

-- Select persons where FirstName is like _la (any character followed by 'la')
SELECT * FROM Persons WHERE FirstName LIKE '_la';

-- =====================================================
-- IN Operator - Multiple Values
-- =====================================================

-- Select persons with LastName = 'Hansen' or 'Pettersen'
SELECT * FROM Persons WHERE LastName IN ('Hansen', 'Pettersen');

-- Select persons living in Hyderabad or Bangalore
SELECT * FROM Persons WHERE City IN ('Hyderabad', 'Bangalore');

-- Select persons living in cities NOT in the list
SELECT * FROM Persons WHERE City NOT IN ('Hyderabad', 'Bangalore');

-- Select sales from Smith, Johnson, or Baldwin
SELECT * FROM Sales WHERE CustomerName IN ('Smith', 'Johnson', 'Baldwin');

-- Select orders with specific order IDs
SELECT * FROM Orders WHERE O_Id IN (1, 2, 3);

-- =====================================================
-- BETWEEN Operator - Range of Values
-- =====================================================

-- Select sales with OrderPrice between 200 and 500 (inclusive)
SELECT * FROM Sales WHERE OrderPrice BETWEEN 200 AND 500;

-- Select sales with OrderPrice NOT between 200 and 500
SELECT * FROM Sales WHERE OrderPrice NOT BETWEEN 200 AND 500;

-- Select sales where price is between 400 and 600
SELECT * FROM Sales WHERE OrderPrice BETWEEN 400 AND 600;

-- Select sales where quantity is between 2 and 4
SELECT * FROM Sales WHERE OrderQuantity BETWEEN 2 AND 4;

-- =====================================================
-- Combining LIKE, IN, BETWEEN
-- =====================================================

-- Select persons where LastName is Hansen or Pettersen and living in Hyderabad
SELECT * FROM Persons
WHERE LastName IN ('Hansen', 'Pettersen') AND City='Hyderabad';

-- Select sales from Smith with price between 400 and 1000
SELECT * FROM Sales
WHERE CustomerName='Smith' AND OrderPrice BETWEEN 400 AND 1000;

-- Select sales where CustomerName starts with 'S' and OrderPrice > 300
SELECT * FROM Sales
WHERE CustomerName LIKE 'S%' AND OrderPrice > 300;

-- =====================================================
-- BETWEEN with Text Values
-- =====================================================

-- Select persons where LastName is between 'Hansen' and 'Pettersen'
SELECT * FROM Persons
WHERE LastName BETWEEN 'Hansen' AND 'Pettersen';

-- Select persons where LastName is NOT between 'Hansen' and 'Pettersen'
SELECT * FROM Persons
WHERE LastName NOT BETWEEN 'Hansen' AND 'Pettersen';

-- =====================================================
-- BETWEEN with Dates
-- =====================================================

-- Select sales between specific dates
SELECT * FROM Sales
WHERE OrderDate BETWEEN '2005-08-01' AND '2005-12-31';

-- Select sales on or after a specific date
SELECT * FROM Sales
WHERE OrderDate >= '2005-07-15' ORDER BY OrderDate;
