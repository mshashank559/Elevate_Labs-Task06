-- 1. Yearly Sales Revenue and Order Volume
SELECT 
    c1 AS Year,
    COUNT(DISTINCT c7) AS Order_Volume,
    SUM(CAST(c8 AS REAL)) AS Total_Revenue
FROM sales_data_sample
GROUP BY c1
ORDER BY c1;




-- 2. Monthly Sales Revenue and Order Volume
SELECT 
    c2 AS Month,
    COUNT(DISTINCT c7) AS Order_Volume,
    SUM(CAST(c8 AS REAL)) AS Total_Revenue
FROM sales_data_sample
GROUP BY c2
ORDER BY c2;




-- 3. Year-Month Level Sales Revenue and Order Volume
SELECT 
    c1 AS Year,
    c2 AS Month,
    SUM(CAST(c8 AS REAL)) AS Total_Revenue,
    COUNT(DISTINCT c7) AS Order_Volume
FROM sales_data_sample
GROUP BY c1, c2
ORDER BY c1, c2;




-- 4. Top 5 Cities by Total Revenue
SELECT 
    c4 AS City,
    SUM(CAST(c8 AS REAL)) AS Total_Revenue
FROM sales_data_sample
GROUP BY c4
ORDER BY Total_Revenue DESC
LIMIT 5;




-- 5. Sales by Country and State
SELECT 
    c6 AS Country,
    c5 AS State,
    SUM(CAST(c8 AS REAL)) AS Total_Revenue
FROM sales_data_sample
GROUP BY c6, c5
ORDER BY c6, Total_Revenue DESC;



-- 6. Revenue by Contact Last Name
SELECT 
    c9 AS Contact_Last_Name,
    SUM(CAST(c8 AS REAL)) AS Total_Revenue
FROM sales_data_sample
GROUP BY c9
ORDER BY Total_Revenue DESC;



-- 7. Revenue by Deal Size
SELECT 
    c10 AS Deal_Size,
    SUM(CAST(c8 AS REAL)) AS Total_Revenue
FROM sales_data_sample
GROUP BY c10
ORDER BY Total_Revenue DESC;
