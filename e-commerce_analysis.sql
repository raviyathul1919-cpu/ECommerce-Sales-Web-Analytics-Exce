use project_db;
-- 1.BUSINESS OVERVIEW 
SELECT 
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(price_usd) AS total_revenue,
    SUM(cogs_usd) AS total_cost,
    SUM(price_usd - cogs_usd) AS total_profit,
    AVG(price_usd) AS avg_order_value
FROM orders;
-- "Company has stable revenue and consistent order volume, indicating healthy overall business performance".

-- 2.Sales Trend Analysis
SELECT 
    DATE(created_at) AS date,
    COUNT(order_id) AS total_orders,
    SUM(price_usd) AS revenue
FROM orders
GROUP BY DATE(created_at)
ORDER BY date; 
-- "Daily sales fluctuate, showing variations in customer activity over time".

-- 3.Year Month Performance
SELECT 
    YEAR(created_at) AS year,
    MONTHNAME(created_at) AS month,
    COUNT(order_id) AS orders,
    SUM(price_usd) AS revenue
FROM orders
GROUP BY YEAR(created_at), MONTHNAME(created_at); 
-- "Year and month wise data helps identify whether the business is growing or slowing down over time". 

-- 4.Product Performance
SELECT 
    utm_source,
    COUNT(*) AS sessions
FROM website_sessions
GROUP BY utm_source
ORDER BY sessions DESC; 
--  "A small number of products contribute most of the revenue, showing product concentration".

-- 5.Website Traffic 
SELECT 
    COUNT(_website_session_id) AS total_sessions,
    COUNT(DISTINCT user_id) AS unique_users
FROM website_sessions; 
-- "Website traffic reflects user engagement and effectiveness of marketing efforts".

-- 6.Traffic Source Anaysis
SELECT 
    utm_source,
    COUNT(*) AS sessions
FROM website_sessions
GROUP BY utm_source
ORDER BY sessions DESC; 
-- "Users come from multiple sources ,showing effectiveness of marketting channels". 
 
 -- 7.Trafic Conversion Rate
 SELECT 
    COUNT(DISTINCT w._website_session_id) AS sessions,
    COUNT(DISTINCT o.order_id) AS orders,
    (COUNT(DISTINCT o.order_id) / COUNT(DISTINCT w._website_session_id)) * 100 AS conversion_rate
FROM website_sessions w
LEFT JOIN orders o
ON w._website_session_id = o.website_session_id; 
-- "Only a portion of visitors convert into customers ,showing funnel efficiency".

-- 8.Profit Analysis By Product
SELECT 
    product_id,
    SUM(price_usd - cogs_usd) AS profit
FROM order_items
GROUP BY product_id
ORDER BY profit DESC; 
-- "Profit varies across products ,with some products driving higher profitability".
