SELECT * from pizza_sales
-- Hourly Trend for Total Pizzas Sold
SELECT DATEPART(HOUR, order_time) as order_hour, SUM(quantity) as Total_pizzas_sold
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time)