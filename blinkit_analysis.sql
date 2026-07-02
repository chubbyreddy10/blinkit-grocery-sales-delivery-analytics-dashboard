SELECT * FROM blinkit_orders LIMIT 10;
USE blinkit_db;
SHOW TABLES;
SELECT * FROM blinkit_orders LIMIT 10;
SELECT COUNT(*) FROM blinkit_orders;
SELECT 
    delivery_status, 
    COUNT(*) AS total_orders
FROM blinkit_orders
GROUP BY delivery_status;
SELECT 
    ROUND(
        (SUM(CASE WHEN delivery_status = 'On Time' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
        2
    ) AS on_time_percentage
FROM blinkit_orders;
SELECT 
    SUM(order_total) AS total_revenue
FROM blinkit_orders;
SELECT 
    category,
    SUM(order_total) AS total_sales
FROM blinkit_orders
GROUP BY category;
DESCRIBE blinkit_orders;
SELECT 
    delivery_status,
    COUNT(*) AS total_orders
FROM blinkit_orders
GROUP BY delivery_status;
SELECT 
    payment_method,
    SUM(order_total) AS total_revenue
FROM blinkit_orders
GROUP BY payment_method;
SELECT 
    customer_id,
    SUM(order_total) AS total_spent
FROM blinkit_orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;
SELECT 
    customer_id,
    ROUND(SUM(order_total), 2) AS total_spent
FROM blinkit_orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;
SELECT 
    order_total,
    delivery_status,
    payment_method
FROM blinkit_orders
LIMIT 10;
SELECT * FROM blinkit_orders LIMIT 10;
SELECT user(), current_user();