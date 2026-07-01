-- ============================================
-- RETAIL SALES ANALYSIS PROJECT
-- Dataset: Superstore (9,994 orders)
-- Author: Tarun Yadav
-- ============================================

-- ============================================
-- SECTION 2: Sales Performance
-- ============================================

-- Q1: What are total Sales and Profit overall?
select round(sum(Sales),2) as Total_Sales,
	   round(sum(Profit),2) as Total_Profit
from Superstore;

-- Q2: Which Region generates the most revenue, and what % of total sales does it represent?
select Region,sum(Sales) as total_sales,
round((sum(Sales)/ (select sum(Sales) from superstore))*100,2)  as percent_of_total_sale
from superstore
group by Region
order by total_sales DESC
limit 1;

-- Q3: What are the top 5 best-selling Sub-Categories by revenue?
select Sub_Category , sum(Sales) as sales
from superstore
group by Sub_Category
order by sales desc
limit 5;

-- Q4: Which Ship Mode is most commonly used?
select Ship_Mode, count(*) as Count
from superstore
group by Ship_Mode
order by Count desc
limit 1;

-- Q5: What is the average order value (Sales per order)?
select round(sum(Sales)/count(Distinct Order_ID),2) AS Avg_Order_Value
from superstore;

-- Q6: Which Sub-Category has the highest average Discount?
SELECT Sub_Category , round(avg(Discount),2) as Discount
from superstore
group by Sub_Category
Order by Discount Desc
Limit 1;

-- Q7: Compare total Sales: Same Day vs Standard Class shipping
SELECT Ship_Mode, SUM(Sales) as Total_Sales
from superstore
where Ship_Mode in ('Same Day','Standard Class')
group by Ship_Mode;
-- Here in Result, we can see that Shipping of Standard class is greater than Same Day ship mode.