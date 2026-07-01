\# Retail Sales Analysis — SQL Project



\## Project Overview

End-to-end SQL analysis of a US retail superstore dataset containing 9,994 orders across 4 regions, 793 customers, and 1,862 unique products. The goal was to extract actionable business insights across sales performance, customer behavior, and profitability using MySQL.



\## Dataset

\- \*\*Source:\*\* Superstore Sales Dataset (Kaggle)

\- \*\*Size:\*\* 9,994 rows, 21 columns

\- \*\*Period:\*\* 2014–2017 (mixed date formats — documented as data quality issue)



\## Tools Used

\- MySQL 8.0

\- MySQL Workbench



\## Project Structure

Retail-Sales-Analysis/

├── README.md

├── Superstore\_data\_table.csv

├── 00\_database\_setup.sql       → Database, table creation, data import

├── 01\_data\_exploration.sql     → Data quality checks, schema overview

├── 02\_sales\_performance.sql    → Revenue analysis by region, category, shipping

├── 03\_customer\_analysis.sql    → Customer segments, repeat buyers, top spenders

├── 04\_profitability\_analysis.sql → Profit margins, loss-making products, discount impact

└── insights\_summary.md         → Key business findings in plain English



\## SQL Concepts Used

\- Aggregate functions (SUM, AVG, COUNT, MAX, MIN)

\- GROUP BY, HAVING, ORDER BY

\- Subqueries (scalar, correlated, IN)

\- CTEs (Common Table Expressions)

\- Window functions (RANK, DENSE\_RANK, ROW\_NUMBER)

\- CASE statements

\- JOINs (INNER, LEFT, multiple tables)

\- Data quality checks (NULL detection, duplicate analysis)



\## Key Business Insights

1\. \*\*West region\*\* leads in revenue at 31.58% of total sales ($725,457)

2\. \*\*Technology\*\* is the most profitable category with 17% profit margin

3\. \*\*Furniture\*\* has only 2% profit margin — significantly underperforming

4\. \*\*Texas\*\* generates high sales ($170,188) but negative profit (-$25,729) — likely due to heavy discounting

5\. \*\*Binders\*\* sub-category carries the highest average discount (37%) — needs pricing review

6\. Average order value is \*\*$458.61\*\* across 5,009 unique orders

7\. \*\*Standard Class\*\* shipping dominates usage, accounting for the majority of orders



\## Data Quality Notes

\- Order\_Date and Ship\_Date columns contain mixed date formats (DD-MM-YYYY and M/D/YYYY)

\- This issue was identified during exploration and documented — to be resolved using `pd.to\_datetime()` in the Python phase

\- No NULL values detected across any column

\- Order\_ID repeats across rows (expected — one order can contain multiple products)



\## How to Run

1\. Clone this repository

2\. Copy `Superstore\_data\_table.csv` to your MySQL secure upload folder

3\. Run `00\_database\_setup.sql` to create database and import data

4\. Run analysis files in order (01 → 04)



\## Connect

\- LinkedIn: \[linkedin.com/in/tarun-yadav20](https://linkedin.com/in/tarun-yadav20)

\- GitHub: \[github.com/tarunyadav-ai](https://github.com/tarunyadav-ai)

