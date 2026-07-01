-- ============================================
-- RETAIL SALES ANALYSIS PROJECT
-- Dataset: Superstore (9,994 orders)
-- Author: Tarun Yadav
-- ============================================

-- ============================================
-- SECTION 3: Customer Analysis
-- ============================================

-- Q8: Who are the top 10 customers by total spend?
select Customer_Name,round(sum(Sales),2) as Total_Spend 
from superstore
group by Customer_Name
order by Total_Spend DESC
LIMIT 10;

-- Q9: Which Customer Segment is most profitable?
select  Segment,Round(Sum(Sales),2) as Total_Sales
from superstore
group by Segment
order by Total_Sales DESC
Limit 1;

-- Q10: What is the average order value per segment?
select Segment, round(AVG(Sales),2) as AVG_Sales
from superstore
group by Segment
order by AVG_Sales;

-- Q11: How many orders does the average customer place?


-- Q13: Which city has the most customers?