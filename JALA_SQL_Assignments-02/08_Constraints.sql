-- =====================================================
-- 08_Constraints.sql
-- SQL Constraints - NOT NULL, UNIQUE, PRIMARY KEY,
-- FOREIGN KEY, CHECK, DEFAULT
-- =====================================================

USE JALA_DB;

-- =====================================================
-- NOT NULL Constraint
-- =====================================================

-- Create table with NOT NULL constraint
CREATE TABLE PersonsWithNotNull (
    P_Id INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

-- Insert data - FirstName can be NULL, but P_Id and LastName cannot
INSERT INTO PersonsWithNotNull VALUES (1, 'Hansen', 'Ola', 'Street 25', 'Hyderabad');
INSERT INTO PersonsWithNotNull VALUES (2, 'John', NULL, 'Street 10', 'Hyderabad');

-- This will fail because LastName is NOT NULL
-- INSERT INTO PersonsWithNotNull VALUES (3, NULL, 'Kari', 'Street 32', 'Bangalore');

-- =====================================================
-- UNIQUE Constraint - Single Column
-- =====================================================

-- Create table with UNIQUE constraint on single column
CREATE TABLE PersonsWithUnique (
    P_Id INT NOT NULL UNIQUE,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

-- Add UNIQUE constraint to existing table
ALTER TABLE PersonsWithUnique
ADD CONSTRAINT uc_PersonID UNIQUE (P_Id);

-- Drop UNIQUE constraint
-- ALTER TABLE PersonsWithUnique DROP CONSTRAINT uc_PersonID;

-- =====================================================
-- UNIQUE Constraint - Multiple Columns
-- =====================================================

-- Create table with UNIQUE constraint on multiple columns
CREATE TABLE PersonsWithMultipleUnique (
    P_Id INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    CONSTRAINT uc_PersonID UNIQUE (P_Id, LastName)
);

-- Add UNIQUE constraint on multiple columns to existing table
ALTER TABLE PersonsWithMultipleUnique
ADD CONSTRAINT uc_PersonIDLastName UNIQUE (P_Id, LastName);

-- =====================================================
-- PRIMARY KEY Constraint - Single Column
-- =====================================================

-- Create table with PRIMARY KEY constraint
CREATE TABLE PersonsWithPK (
    P_Id INT NOT NULL PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

-- Add PRIMARY KEY constraint to existing table
ALTER TABLE PersonsWithPK
ADD PRIMARY KEY (P_Id);

-- Drop PRIMARY KEY constraint
-- ALTER TABLE PersonsWithPK DROP PRIMARY KEY;

-- =====================================================
-- PRIMARY KEY Constraint - Multiple Columns
-- =====================================================

-- Create table with PRIMARY KEY on multiple columns
CREATE TABLE PersonsWithMultiplePK (
    P_Id INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    CONSTRAINT pk_PersonID PRIMARY KEY (P_Id, LastName)
);

-- Add PRIMARY KEY constraint on multiple columns to existing table
ALTER TABLE PersonsWithMultiplePK
ADD CONSTRAINT pk_PersonIDLastName PRIMARY KEY (P_Id, LastName);

-- =====================================================
-- FOREIGN KEY Constraint
-- =====================================================

-- Create Orders table with FOREIGN KEY constraint
CREATE TABLE OrdersWithFK (
    O_Id INT NOT NULL PRIMARY KEY,
    OrderNo INT NOT NULL,
    P_Id INT,
    CONSTRAINT fk_PerOrders FOREIGN KEY (P_Id)
    REFERENCES Persons(P_Id)
);

-- Add FOREIGN KEY constraint to existing table
ALTER TABLE OrdersWithFK
ADD FOREIGN KEY (P_Id)
REFERENCES Persons(P_Id);

-- Add FOREIGN KEY with constraint name to existing table
ALTER TABLE OrdersWithFK
ADD CONSTRAINT fk_PerOrdersNamed FOREIGN KEY (P_Id)
REFERENCES Persons(P_Id);

-- Drop FOREIGN KEY constraint
-- ALTER TABLE OrdersWithFK DROP CONSTRAINT fk_PerOrders;

-- =====================================================
-- CHECK Constraint
-- =====================================================

-- Create table with CHECK constraint
CREATE TABLE PersonsWithCheck (
    P_Id INT NOT NULL CHECK (P_Id>0),
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

-- Add CHECK constraint to existing table
ALTER TABLE PersonsWithCheck
ADD CHECK (P_Id>0);

-- Add named CHECK constraint to existing table
ALTER TABLE PersonsWithCheck
ADD CONSTRAINT chk_PersonID CHECK (P_Id>0);

-- Multiple CHECK constraints
CREATE TABLE PersonsWithMultipleCheck (
    P_Id INT NOT NULL CHECK (P_Id>0),
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT CHECK (Age>=18),
    Address VARCHAR(255),
    City VARCHAR(255)
);

-- =====================================================
-- DEFAULT Constraint
-- =====================================================

-- Create table with DEFAULT constraint
CREATE TABLE PersonsWithDefault (
    P_Id INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255) DEFAULT 'Hyderabad'
);

-- Add DEFAULT constraint to existing table
ALTER TABLE PersonsWithDefault
ADD CONSTRAINT df_City DEFAULT 'Hyderabad' FOR City;

-- DEFAULT with function (GETDATE for current date)
CREATE TABLE OrdersWithDefaultDate (
    O_Id INT NOT NULL PRIMARY KEY,
    OrderNo INT NOT NULL,
    P_Id INT,
    OrderDate DATE DEFAULT GETDATE()
);

-- =====================================================
-- Combined Constraints - Realistic Example
-- =====================================================

-- Create comprehensive Persons table with multiple constraints
CREATE TABLE PersonsComprehensive (
    P_Id INT NOT NULL PRIMARY KEY CHECK (P_Id > 0),
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(255) DEFAULT 'Hyderabad',
    Email VARCHAR(255) UNIQUE,
    Age INT CHECK (Age >= 0 AND Age <= 150),
    CreatedDate DATE DEFAULT GETDATE(),
    CONSTRAINT uc_Email UNIQUE (Email)
);

-- =====================================================
-- Create comprehensive Orders table with FOREIGN KEY
-- =====================================================

CREATE TABLE OrdersComprehensive (
    O_Id INT NOT NULL PRIMARY KEY,
    OrderNo INT NOT NULL UNIQUE,
    P_Id INT NOT NULL,
    OrderDate DATE DEFAULT GETDATE(),
    OrderPrice DECIMAL(10,2) CHECK (OrderPrice >= 0),
    CONSTRAINT fk_Person FOREIGN KEY (P_Id)
    REFERENCES PersonsComprehensive(P_Id)
);

-- =====================================================
-- Test Constraints
-- =====================================================

-- Test NOT NULL constraint
INSERT INTO PersonsComprehensive (P_Id, LastName, FirstName, City)
VALUES (1, 'Hansen', 'Ola', 'Hyderabad');

-- Test UNIQUE constraint on Email
INSERT INTO PersonsComprehensive (P_Id, LastName, FirstName, Email)
VALUES (2, 'John', 'Tove', 'tove@example.com');

-- This would fail (duplicate email)
-- INSERT INTO PersonsComprehensive (P_Id, LastName, FirstName, Email)
-- VALUES (3, 'Test', 'Person', 'tove@example.com');

-- Test PRIMARY KEY constraint
INSERT INTO PersonsComprehensive (P_Id, LastName, FirstName)
VALUES (3, 'Pettersen', 'Kari');

-- This would fail (duplicate P_Id)
-- INSERT INTO PersonsComprehensive (P_Id, LastName, FirstName)
-- VALUES (3, 'Another', 'Person');

-- Test CHECK constraint (Age must be between 0 and 150)
INSERT INTO PersonsComprehensive (P_Id, LastName, FirstName, Age)
VALUES (4, 'Smith', 'John', 30);

-- This would fail (Age > 150)
-- INSERT INTO PersonsComprehensive (P_Id, LastName, FirstName, Age)
-- VALUES (5, 'Old', 'Person', 200);

-- Verify data
SELECT * FROM PersonsComprehensive;
