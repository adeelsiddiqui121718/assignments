# JALA SQL Assignments

## Overview
This folder contains comprehensive SQL assignments covering all essential SQL concepts including DDL, DML, constraints, and aggregate functions. All files are organized by topic for easy learning and reference.

## 📁 File Structure

```
JALA_SQL_Assignments/
├── 01_Create_Tables.sql        - Database and table creation
├── 02_Select_Queries.sql       - SELECT and SELECT DISTINCT
├── 03_Where_Clause.sql         - WHERE clause and filtering
├── 04_Operators.sql            - AND, OR, NOT operators
├── 05_Order_By.sql             - Sorting results with ORDER BY
├── 06_Like_In_Between.sql      - Pattern matching and ranges
├── 07_Union.sql                - Combining result sets
├── 08_Constraints.sql          - Data integrity constraints
├── 09_Aggregate_Functions.sql  - COUNT, SUM, AVG, MIN, MAX
└── README.md                   - This file
```

## 📚 Topics Covered

### 1. **CREATE DATABASE & TABLES** (01_Create_Tables.sql)
- `CREATE DATABASE` - Create new database
- `CREATE TABLE` - Create tables with specified columns
- `INSERT INTO` - Insert data into tables
- Tables: Persons, Orders, Sales, Employees_Norway, Employees_USA

### 2. **SELECT QUERIES** (02_Select_Queries.sql)
- `SELECT *` - Select all columns
- `SELECT column` - Select specific columns
- `SELECT DISTINCT` - Remove duplicate values
- Count unique values

### 3. **WHERE CLAUSE** (03_Where_Clause.sql)
- Filter records using WHERE
- Text values (with quotes)
- Numeric values (without quotes)
- Comparison operators (=, <>, >, <, >=, <=)

### 4. **OPERATORS** (04_Operators.sql)
- `AND` operator - Both conditions true
- `OR` operator - At least one condition true
- `NOT` operator - Opposite condition
- Combinations of AND/OR/NOT

### 5. **ORDER BY** (05_Order_By.sql)
- `ORDER BY ASC` - Ascending order (default)
- `ORDER BY DESC` - Descending order
- Multiple column sorting
- ORDER BY with WHERE clause

### 6. **LIKE, IN, BETWEEN** (06_Like_In_Between.sql)
- `LIKE` - Pattern matching with % and _
- `IN` - Multiple specific values
- `BETWEEN` - Range of values
- Combining with other operators

### 7. **UNION & UNION ALL** (07_Union.sql)
- `UNION` - Combine results (distinct only)
- `UNION ALL` - Combine results (with duplicates)
- Multiple column unions
- Sorting union results

### 8. **CONSTRAINTS** (08_Constraints.sql)
- `NOT NULL` - Column must have value
- `UNIQUE` - All values must be unique
- `PRIMARY KEY` - Unique identifier for table
- `FOREIGN KEY` - Reference to another table
- `CHECK` - Validate data
- `DEFAULT` - Default value for column

### 9. **AGGREGATE FUNCTIONS** (09_Aggregate_Functions.sql)
- `COUNT(*)` - Count rows
- `SUM()` - Sum numeric values
- `AVG()` - Average value
- `MIN()` - Minimum value
- `MAX()` - Maximum value
- `GROUP BY` - Group results
- `HAVING` - Filter grouped results

## 🚀 How to Use These Files

### Step 1: Create Database and Tables
Execute `01_Create_Tables.sql` first to set up the database structure and sample data.

```sql
-- In SQL Server Management Studio or your SQL IDE
-- Open and execute 01_Create_Tables.sql
```

### Step 2: Learn Each Concept
Go through each file in order. Each file contains:
- Comments explaining what each query does
- Multiple examples for each concept
- Real-world scenarios

### Step 3: Practice Queries
Try modifying the queries:
- Change WHERE conditions
- Add ORDER BY clauses
- Combine multiple operators
- Create your own aggregate queries

### Step 4: Test Your Understanding
- Try to predict the results before running queries
- Modify queries to get different results
- Combine concepts from different files

## 📊 Sample Data

### Persons Table
| P_Id | LastName   | FirstName | Address    | City      |
|------|-----------|-----------|-----------|-----------|
| 1    | Hansen    | Ola       | Street 25 | Hyderabad |
| 2    | John      | Tove      | Street 10 | Hyderabad |
| 3    | Pettersen | Kari      | Street 32 | Bangalore |

### Orders Table
| O_Id | OrderNo | P_Id |
|------|---------|------|
| 1    | 77895   | 3    |
| 2    | 44678   | 3    |
| 3    | 22456   | 2    |
| 4    | 24562   | 1    |

### Sales Table
| OrderID | OrderDate  | OrderPrice | OrderQuantity | CustomerName |
|---------|-----------|-----------|---------------|-------------|
| 1       | 2005-12-22| 160       | 2             | Smith       |
| 2       | 2005-08-10| 190       | 2             | Johnson     |
| 3       | 2005-07-13| 500       | 5             | Baldwin     |
| 4       | 2005-07-15| 420       | 2             | Smith       |
| 5       | 2005-12-22| 1000      | 4             | Wood        |
| 6       | 2005-10-02| 820       | 4             | Smith       |

## 💡 Key Concepts to Master

### DDL (Data Definition Language)
- CREATE DATABASE
- CREATE TABLE
- ALTER TABLE
- DROP TABLE

### DML (Data Manipulation Language)
- SELECT
- INSERT INTO
- UPDATE
- DELETE

### Operators & Functions
- WHERE conditions
- AND/OR/NOT logic
- Pattern matching (LIKE)
- Range queries (BETWEEN, IN)
- Sorting (ORDER BY)
- Set operations (UNION)

### Constraints
- Data integrity
- Primary and Foreign keys
- Validation (CHECK)
- Default values
- Uniqueness

### Aggregations
- Count, Sum, Average
- Minimum and Maximum
- Grouping (GROUP BY)
- Filtering groups (HAVING)

## 🎯 Interview Questions Based on These Queries

Common interview questions you may face:

1. **SELECT Queries**
   - Difference between SELECT * and SELECT specific columns
   - What is SELECT DISTINCT and when to use it

2. **WHERE Clause**
   - How to filter records
   - Difference between = and LIKE operators

3. **Operators**
   - When to use AND vs OR
   - How to combine multiple conditions

4. **JOINs vs UNION**
   - Difference between UNION and UNION ALL
   - When to use UNION vs WHERE with OR

5. **Constraints**
   - Difference between PRIMARY KEY and UNIQUE
   - What is FOREIGN KEY and why important
   - Purpose of each constraint

6. **Aggregate Functions**
   - Difference between COUNT(*) and COUNT(column)
   - How to get statistics by groups
   - How to filter grouped results with HAVING

## 📝 Notes

- SQL is **not case sensitive** for keywords
- Always use single quotes for text values
- Numeric values do NOT need quotes
- Comments use `--` for single line or `/* */` for multiple lines
- Test your queries on the sample data first

## 🔗 Quick Reference

| Concept | Syntax | Example |
|---------|--------|---------|
| SELECT | `SELECT columns FROM table` | `SELECT * FROM Persons` |
| WHERE | `WHERE condition` | `WHERE City='Hyderabad'` |
| AND/OR | `WHERE cond1 AND cond2` | `WHERE City='Hyderabad' AND FirstName='Ola'` |
| ORDER BY | `ORDER BY column ASC/DESC` | `ORDER BY LastName DESC` |
| LIKE | `LIKE 'pattern'` | `LIKE 'O%'` |
| IN | `IN (val1, val2)` | `IN ('Smith', 'Johnson')` |
| BETWEEN | `BETWEEN val1 AND val2` | `BETWEEN 200 AND 500` |
| UNION | Two SELECT statements | `SELECT ... UNION SELECT ...` |
| COUNT | `COUNT(*)` or `COUNT(col)` | `COUNT(*) FROM Sales` |
| SUM | `SUM(column)` | `SUM(OrderPrice) FROM Sales` |
| AVG | `AVG(column)` | `AVG(OrderPrice) FROM Sales` |
| MIN | `MIN(column)` | `MIN(OrderPrice) FROM Sales` |
| MAX | `MAX(column)` | `MAX(OrderPrice) FROM Sales` |
| GROUP BY | `GROUP BY column` | `GROUP BY CustomerName` |

## 🎓 Learning Path

1. Start with `01_Create_Tables.sql` - Understand data structure
2. Learn `02_Select_Queries.sql` - Basic data retrieval
3. Master `03_Where_Clause.sql` - Filtering data
4. Practice `04_Operators.sql` - Complex conditions
5. Explore `05_Order_By.sql` - Sorting results
6. Study `06_Like_In_Between.sql` - Advanced filtering
7. Understand `07_Union.sql` - Combining datasets
8. Know `08_Constraints.sql` - Data integrity
9. Master `09_Aggregate_Functions.sql` - Data analysis

## 📞 Contact

**JALA TECHNOLOGIES**  
Flat No: 303, Mahindra Residency  
Behind Satya Technologies, Beside Aditya Trade Center  
Ameerpet  
📱 7702744422, 8885859936

---

**Good Luck with Your SQL Learning! 🚀**
