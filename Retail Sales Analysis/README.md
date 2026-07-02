# Retail Sales Analysis — SQL Project

## Project Overview
End-to-end SQL analysis of a US retail superstore dataset containing 9,994 orders across 4 regions, 793 customers and 1,862 unique products. Goal was to extract actionable business insights across sales performance, customer behavior and profitability.

## Tools Used
- MySQL 8.0
- MySQL Workbench

## Dataset
- Source: Superstore Sales Dataset (Kaggle)
- Size: 9,994 rows, 21 columns
- Period: 2014–2017

## SQL Concepts Demonstrated
- Aggregate functions — SUM, AVG, COUNT, MAX, MIN
- GROUP BY, HAVING, ORDER BY
- Subqueries (scalar, correlated, IN clause)
- CTEs (Common Table Expressions)
- Window functions — RANK, DENSE_RANK, ROW_NUMBER
- CASE statements for conditional analysis
- JOINs — INNER, LEFT across multiple tables
- Data quality checks — NULL detection, duplicate analysis

## Project Structure
- 00_database_setup.sql — Database, table creation, data import
- 01_data_exploration.sql — Data quality checks, schema overview
- 02_sales_performance.sql — Revenue by region, category, shipping
- 03_customer_analysis.sql — Segments, repeat buyers, top spenders
- 04_profitability_analysis.sql — Margins, loss products, discount impact
- insights_summary.md — Key findings in plain English

## Key Business Insights
- West region leads revenue at 31.58% of total sales ($725,457)
- Technology is most profitable category with 17% profit margin
- Furniture has only 2% profit margin — significantly underperforming
- Texas generates high sales ($170,188) but negative profit (-$25,729)
- Binders carry highest average discount (37%) — needs pricing review
- Average order value is $458.61 across 5,009 unique orders

## Data Quality Notes
- Order_Date contains mixed formats (DD-MM-YYYY and M/D/YYYY) — identified and documented, to be resolved using pd.to_datetime() in Python phase
- No NULL values detected across any column
- Order_ID repeats by design — one order can contain multiple products

## How to Run
1. Clone this repository
2. Copy Superstore_data_table.csv to your MySQL secure upload folder
3. Run 00_database_setup.sql to create database and import data
4. Run analysis files in order 01 through 04

## Connect
- LinkedIn: linkedin.com/in/tarun-yadav20
- GitHub: github.com/tarunyadav-ai
