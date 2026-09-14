-- Total sales by region (top 5)
SELECT "Order Region", ROUND(SUM(Sales),2) AS total_sales
FROM orders GROUP BY "Order Region"
ORDER BY total_sales DESC LIMIT 5;

-- Average shipping delay by shipping mode
SELECT "Shipping Mode",
       ROUND(AVG("Days for shipping (real)" - "Days for shipment (scheduled)"),2) AS avg_delay_days
FROM orders GROUP BY "Shipping Mode"
ORDER BY avg_delay_days DESC;

-- Top 5 product categories by order count
SELECT "Category Name", COUNT(*) AS order_count
FROM orders GROUP BY "Category Name"
ORDER BY order_count DESC LIMIT 5;

-- Late delivery risk rate by market
SELECT Market, ROUND(AVG(Late_delivery_risk)*100,1) AS late_pct
FROM orders GROUP BY Market
ORDER BY late_pct DESC;
