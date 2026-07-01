-- ============================================
-- RETAIL SALES ANALYSIS PROJECT
-- Dataset: Superstore (9,994 orders)
-- Author: Tarun Yadav
-- ============================================

-- ============================================
-- SECTION 1: DATA EXPLORATION
-- ============================================

-- Q1: How many total orders, customers, and unique products?
select count(distinct Order_ID) AS Total_Orders,
	   count(distinct Customer_Name) AS Total_Customer,
       count(distinct Product_ID) AS Total_Products
from superstore;

-- Q2: What date range does this data cover?
-- NOTE: Order_Date contains mixed formats (DD-MM-YYYY and M/D/YYYY)
-- This is a known data quality issue, documented here and resolved in Python (Pandas) phase
select min(Order_Date) as Earliest_Order , max(Order_Date) as Latest_Order
from superstore;
-- Results may be unreliable due to text-based date sorting, not true chronological min/max

-- Q3: Are there any orders with negative or zero Sales? (data quality check)
select Order_ID,Sales
from superstore
where Sales <=0;
-- There are no orders with negative or zero Sales.

-- Q4: How many unique states and regions are represented?
SELECT COUNT(DISTINCT State) as Distinct_States,
	   COUNT(distinct Region) as Distinct_Regions
from superstore;

-- Q5: Check for any duplicate Order_IDs across rows
select Order_ID , count(*) AS Number_Of_Duplicate_Orders
from superstore
group by Order_ID
having Number_Of_Duplicate_Orders > 1
order by Number_Of_Duplicate_Orders desc;

-- Q6:  Which columns have NULL or missing values?
SELECT 
    SUM(CASE WHEN Row_ID IS NULL THEN 1 ELSE 0 END) AS null_row_id,
    SUM(CASE WHEN Order_ID IS NULL THEN 1 ELSE 0 END) AS null_order_id,
    SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS null_order_date,
    SUM(CASE WHEN Ship_Date IS NULL THEN 1 ELSE 0 END) AS null_ship_date,
    SUM(CASE WHEN Ship_Mode IS NULL THEN 1 ELSE 0 END) AS null_ship_mode,
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS null_customer_id,
    SUM(CASE WHEN Customer_Name IS NULL THEN 1 ELSE 0 END) AS null_customer_name,
    SUM(CASE WHEN Segment IS NULL THEN 1 ELSE 0 END) AS null_segment,
    SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS null_country,
    SUM(CASE WHEN City IS NULL THEN 1 ELSE 0 END) AS null_city,
    SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS null_state,
    SUM(CASE WHEN Postal_Code IS NULL THEN 1 ELSE 0 END) AS null_postal_code,
    SUM(CASE WHEN Region IS NULL THEN 1 ELSE 0 END) AS null_region,
    SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS null_product_id,
    SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS null_category,
    SUM(CASE WHEN Sub_Category IS NULL THEN 1 ELSE 0 END) AS null_sub_category,
    SUM(CASE WHEN Product_Name IS NULL THEN 1 ELSE 0 END) AS null_product_name,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS null_sales,
    SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS null_quantity,
    SUM(CASE WHEN Discount IS NULL THEN 1 ELSE 0 END) AS null_discount,
    SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS null_profit
FROM superstore;