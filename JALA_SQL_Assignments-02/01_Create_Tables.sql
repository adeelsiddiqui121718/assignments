-- =====================================================
-- 01_Create_Tables.sql
-- SQL CREATE DATABASE and CREATE TABLE Statements
-- =====================================================

-- Create Database
CREATE DATABASE JALA_DB;
USE JALA_DB;

-- =====================================================
-- Create PERSONS Table
-- =====================================================
CREATE TABLE Persons (
    P_Id INT NOT NULL PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

-- Insert data into Persons table
INSERT INTO Persons VALUES (1, 'Hansen', 'Ola', 'Street 25', 'Hyderabad');
INSERT INTO Persons VALUES (2, 'John', 'Tove', 'Street 10', 'Hyderabad');
INSERT INTO Persons VALUES (3, 'Pettersen', 'Kari', 'Street 32', 'Bangalore');

-- =====================================================
-- Create ORDERS Table
-- =====================================================
CREATE TABLE Orders (
    O_Id INT NOT NULL PRIMARY KEY,
    OrderNo INT NOT NULL,
    P_Id INT,
    CONSTRAINT fk_PerOrders FOREIGN KEY (P_Id)
    REFERENCES Persons(P_Id)
);

-- Insert data into Orders table
INSERT INTO Orders VALUES (1, 77895, 3);
INSERT INTO Orders VALUES (2, 44678, 3);
INSERT INTO Orders VALUES (3, 22456, 2);
INSERT INTO Orders VALUES (4, 24562, 1);

-- =====================================================
-- Create SALES Table (for aggregate functions)
-- =====================================================
CREATE TABLE Sales (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    OrderPrice INT,
    OrderQuantity INT,
    CustomerName VARCHAR(255)
);

-- Insert data into Sales table
INSERT INTO Sales VALUES (1, '2005-12-22', 160, 2, 'Smith');
INSERT INTO Sales VALUES (2, '2005-08-10', 190, 2, 'Johnson');
INSERT INTO Sales VALUES (3, '2005-07-13', 500, 5, 'Baldwin');
INSERT INTO Sales VALUES (4, '2005-07-15', 420, 2, 'Smith');
INSERT INTO Sales VALUES (5, '2005-12-22', 1000, 4, 'Wood');
INSERT INTO Sales VALUES (6, '2005-10-02', 820, 4, 'Smith');

-- =====================================================
-- Create EMPLOYEES_NORWAY Table (for UNION examples)
-- =====================================================
CREATE TABLE Employees_Norway (
    E_ID INT PRIMARY KEY,
    E_Name VARCHAR(255)
);

INSERT INTO Employees_Norway VALUES (1, 'Hansen, Ola');
INSERT INTO Employees_Norway VALUES (2, 'John, Tove');
INSERT INTO Employees_Norway VALUES (3, 'John, Stephen');
INSERT INTO Employees_Norway VALUES (4, 'Pettersen, Kari');

-- =====================================================
-- Create EMPLOYEES_USA Table (for UNION examples)
-- =====================================================
CREATE TABLE Employees_USA (
    E_ID INT PRIMARY KEY,
    E_Name VARCHAR(255)
);

INSERT INTO Employees_USA VALUES (1, 'Turner, Sally');
INSERT INTO Employees_USA VALUES (2, 'Kent, Clark');
INSERT INTO Employees_USA VALUES (3, 'John, Stephen');
INSERT INTO Employees_USA VALUES (4, 'Scott, Stephen');

-- Verify all tables were created and populated
SELECT 'Persons Table:' AS TableName;
SELECT * FROM Persons;

SELECT 'Orders Table:' AS TableName;
SELECT * FROM Orders;

SELECT 'Sales Table:' AS TableName;
SELECT * FROM Sales;
