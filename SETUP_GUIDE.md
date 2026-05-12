# Setup Guide

## Requirements

- Java JDK 8 or later
- Python 3.9+ (for Selenium scripts)
- Google Chrome or a Chromium-based browser
- ChromeDriver matching the installed browser version
- SQL client or database tool for executing `.sql` files
- A code editor such as Visual Studio Code

## Java Assignments

1. Open `JALA_JAVA_Assignments_01/` in your editor.
2. Compile a Java file from the command line:
   ```powershell
   cd "c:\Users\ADEEL\Downloads\Assignments\JALA_JAVA_Assignments_01"
   javac 01_Java_Basics\PrintName.java
   java 01_Java_Basics.PrintName
   ```
3. Most files are standalone examples; compile and run individual `.java` files as needed.
4. Use the folder names to navigate topics: `01_Java_Basics`, `02_Operators`, `03_Loops`, etc.

## SQL Assignments

1. Open `JALA_SQL_Assignments-02/` in your SQL editor.
2. Execute `01_Create_Tables.sql` first to create sample tables and data.
3. Open later files in sequence to learn SELECT, WHERE, operators, ordering, unions, constraints, and aggregate functions.

## UI Assignments

1. Open `JALA_UI_Assignments_03/` in your editor.
2. Open `index.html` in a browser or use a live server extension.
3. Review HTML, CSS, JavaScript, and AngularJS content in the folder.

## Selenium and API Testing

- `JALA_Magnus-Testing_Assignment_06/` and `JALA_Selenium_JIRA_TestNG_POM_Assignment_04/` contain test documentation and automation examples.
- Install Python dependencies:
  ```powershell
  python -m pip install selenium
  ```
- Update ChromeDriver path and element selectors in Selenium scripts before running tests.

## Review Tips

- Check each assignment folder for a `README.md` or overview document.
- For Selenium scripts, verify that `automation/` contains working examples and comments.
- For RESTful learning, the folder README explains core terms and recommended next steps.
