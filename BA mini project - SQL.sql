--Enrich Order Data (LOOKUP ? JOIN)
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    c.city,
    c.segment,
    p.product_name,
    p.category,
    o.quantity,
    p.unit_price,
    (o.quantity * p.unit_price) AS order_value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p  ON o.product_id = p.product_id;

--Revenue by City, Category, and Segment
SELECT 
    c.city,
    p.category,
    c.segment,
    SUM(o.quantity * p.unit_price) AS total_revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p  ON o.product_id = p.product_id
GROUP BY c.city, p.category, c.segment
ORDER BY c.city, p.category, c.segment;

--Identify Cities with Category Gaps
SELECT DISTINCT city
FROM customers
WHERE city NOT IN (
    SELECT DISTINCT c.city
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    JOIN products p ON o.product_id = p.product_id
    WHERE p.category = 'Electronics'
);


SELECT DISTINCT city
FROM customers
WHERE city NOT IN (
    SELECT DISTINCT c.city
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    JOIN products p ON o.product_id = p.product_id
    WHERE p.category = 'Accessories'
);

--% Revenue by Customer Segment
SELECT 
    segment,
    ROUND(
        SUM(o.quantity * p.unit_price) * 100.0 / 
        (SELECT SUM(o2.quantity * p2.unit_price)
         FROM orders o2 
         JOIN products p2 ON o2.product_id = p2.product_id)
    ,2) AS revenue_percentage
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY segment;

--City & Category Matrix
SELECT 
    city,
    SUM(CASE WHEN category = 'Accessories' THEN order_value ELSE 0 END) AS accessories_revenue,
    SUM(CASE WHEN category = 'Electronics' THEN order_value ELSE 0 END) AS electronics_revenue,
    SUM(order_value) AS total_revenue
FROM (
    SELECT 
        c.city,
        p.category,
        (o.quantity * p.unit_price) AS order_value
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    JOIN products p ON o.product_id = p.product_id
) AS t
GROUP BY city;