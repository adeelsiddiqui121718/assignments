-- =====================================================
-- 04_Operators.sql
-- SQL AND, OR, and Comparison Operators
-- =====================================================

USE JALA_DB;

-- =====================================================
-- AND Operator - Both conditions must be TRUE
-- =====================================================

-- Select persons with FirstName='Tove' AND LastName='John'
SELECT * FROM Persons WHERE FirstName='Tove' AND LastName='John';

-- Select sales where price > 200 AND quantity > 2
SELECT * FROM Sales WHERE OrderPrice>200 AND OrderQuantity>2;

-- Select sales where CustomerName='Smith' AND OrderPrice>400
SELECT * FROM Sales WHERE CustomerName='Smith' AND OrderPrice>400;

-- =====================================================
-- OR Operator - At least one condition must be TRUE
-- =====================================================

-- Select persons living in Hyderabad OR Bangalore
SELECT * FROM Persons WHERE City='Hyderabad' OR City='Bangalore';

-- Select sales from Smith OR Johnson
SELECT * FROM Sales WHERE CustomerName='Smith' OR CustomerName='Johnson';

-- Select sales where price = 500 OR quantity = 4
SELECT * FROM Sales WHERE OrderPrice=500 OR OrderQuantity=4;

-- =====================================================
-- Combination of AND and OR
-- =====================================================

-- Select persons: LastName='John' AND (FirstName='Tove' OR FirstName='Ola')
SELECT * FROM Persons WHERE LastName='John' AND (FirstName='Tove' OR FirstName='Ola');

-- Select sales: CustomerName='Smith' AND (OrderPrice>400 OR OrderQuantity>2)
SELECT * FROM Sales WHERE CustomerName='Smith' AND (OrderPrice>400 OR OrderQuantity>2);

-- Select sales: (CustomerName='Smith' OR CustomerName='Johnson') AND OrderPrice>200
SELECT * FROM Sales WHERE (CustomerName='Smith' OR CustomerName='Johnson') AND OrderPrice>200;

-- =====================================================
-- NOT Operator - Opposite condition
-- =====================================================

-- Select persons NOT living in Hyderabad
SELECT * FROM Persons WHERE NOT City='Hyderabad';
-- Alternative syntax
SELECT * FROM Persons WHERE City<>'Hyderabad';

-- Select sales where customer is NOT Smith
SELECT * FROM Sales WHERE NOT CustomerName='Smith';

-- =====================================================
-- Complex Multiple Conditions
-- =====================================================

-- Select persons: City='Hyderabad' AND (FirstName='Tove' OR FirstName='Ola')
SELECT * FROM Persons WHERE City='Hyderabad' AND (FirstName='Tove' OR FirstName='Ola');

-- Select sales: CustomerName='Smith' AND OrderPrice>400 AND OrderQuantity>=2
SELECT * FROM Sales WHERE CustomerName='Smith' AND OrderPrice>400 AND OrderQuantity>=2;

-- Select sales: (OrderPrice>400 OR OrderPrice<200) AND CustomerName='Smith'
SELECT * FROM Sales WHERE (OrderPrice>400 OR OrderPrice<200) AND CustomerName='Smith';
