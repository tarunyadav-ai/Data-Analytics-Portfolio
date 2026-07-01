-- ============================================
-- RETAIL SALES ANALYSIS PROJECT
-- File: 00_database_setup.sql
-- Purpose: Database and table creation, data import
-- Dataset: Superstore (9,994 orders)
-- Author: Tarun Yadav
-- ============================================

-- CREATING DATABASE
create database if not exists Retail_Sales_Analysis;
use Retail_Sales_Analysis

-- CREATING TABLE
CREATE TABLE superstore (
Row_ID INT PRIMARY KEY NOT NULL,
Order_ID VARCHAR(50),
Order_Date VARCHAR(20),
Ship_Date VARCHAR(20),
Ship_Mode VARCHAR(50),
Customer_ID CHAR(8) NOT NULL,
Customer_Name VARCHAR(50),
Segment VARCHAR(50),
Country VARCHAR(50),
City VARCHAR(50),
State VARCHAR(50),
Postal_Code CHAR(5),
Region VARCHAR(10),
Product_ID VARCHAR(50) NOT NULL,
Category VARCHAR(50),
Sub_Category VARCHAR(50),
Product_Name VARCHAR(300),
Sales DECIMAL(10,4),
Quantity INT,
Discount DECIMAL(10,4),
Profit DECIMAL(10,4)
);

-- IMPORTING OUR CSV FILE
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Superstore_data_table.csv'
IGNORE INTO TABLE superstore
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(Row_ID, Order_ID, Order_Date, Ship_Date, Ship_Mode, Customer_ID, Customer_Name, Segment, 
Country, City, State, Postal_Code, Region, Product_ID, Category, Sub_Category, Product_Name, 
Sales, Quantity, Discount, Profit);

-- DELETING NULL VALUES
DELETE FROM superstore WHERE Row_ID = 0;