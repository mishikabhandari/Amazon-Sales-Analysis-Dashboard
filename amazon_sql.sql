SELECT * FROM ecommerce_orders;
-- 1. Which is the highest-selling product?
SELECT ProductName,COUNT(*) as product_count From ecommerce_orders
GROUP BY ProductName
ORDER BY product_count DESC;
-- 2. Which category sells the highest products?
SELECT Category, COUNT(*) as category_count FROM ecommerce_orders
GROUP BY Category
ORDER BY category_count DESC;
-- 3. Which brand sold the maximum number of products?
SELECT Brand,Count(*) as brand_count
FROM ecommerce_orders
GROUP BY Brand
ORDER BY brand_count DESC;
-- 4. What is the total quantity sold, average unit price and total amount?
SELECT COUNT(Quantity) as total_quantity,AVG(UnitPrice) as average_unit_price,COUNT(TotalAmount) as revenue_generated FROM ecommerce_orders;
-- 5. Which product has the highest discount rate?
SELECT ProductName ,Discount
FROM ecommerce_orders
ORDER BY Discount DESC ;
-- What is the average shipping cost?
SELECT AVG(ShippingCost) FROM ecommerce_orders;
-- Which is the most preferred payment method?
SELECT PaymentMethod,COUNT(PaymentMethod) AS payment_method_count FROM ecommerce_orders
GROUP BY PaymentMethod
ORDER BY payment_method_count DESC;
-- Total orders by Product 
SELECT ProductName,COUNT(OrderStatus) AS order_count FROM ecommerce_orders
GROUP BY ProductName
ORDER BY order_count DESC;
-- Total orders by city
SELECT COUNT(OrderStatus) AS order_count,City FROM ecommerce_orders
GROUP BY City
ORDER BY order_count DESC;
-- Total orders by country
SELECT COUNT(OrderStatus) AS order_count,Country FROM ecommerce_orders
GROUP BY Country,Category
ORDER BY order_count DESC;
-- Total orders by state
SELECT COUNT(OrderStatus) AS order_count,State FROM ecommerce_orders
GROUP BY State,Category
ORDER BY order_count DESC;
-- Total order on monthly basis
SELECT MONTH(OrderDate) AS month,SUM(TotalAmount) AS total_sales FROM ecommerce_orders
GROUP BY MONTH(OrderDate)
ORDER BY month DESC ;
-- Order status distribution
SELECT OrderStatus , COUNT(*) AS order_status_count FROM ecommerce_orders
GROUP BY OrderStatus
ORDER BY order_status_count DESC;
-- top 10 revenue generating products
SELECT ProductName,COUNT(TotalAmount) as revenue
FROM ecommerce_orders
GROUP BY ProductName
ORDER BY revenue DESC
LIMIT 10 OFFSET 10;
