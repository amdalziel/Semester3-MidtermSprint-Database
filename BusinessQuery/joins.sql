
-- 1. Write a SQL query that returns all the customers and their orders.

SELECT * FROM sales
JOIN customers ON sales.customerid = customers.customerid;


-- 2. To evaluate the performance of sales representatives and analyze sales by location.

SELECT * FROM sales
JOIN salesreps ON sales.salesrepid = salesreps.salesrepid
JOIN locations ON sales.locationid = locations.locationid;

-- 3. To connect sales data with the beers that are being sold and delivered.

SELECT * FROM sales
JOIN beers ON sales.beerid = beers.beerid
JOIN deliveries ON sales.saleid = deliveries.deliveryid;

-- 4. To understand the rewards system's impact on customer loyalty.

SELECT * FROM customers
JOIN customerrewards ON customers.customerid = customerrewards.customerid;

-- 5. To analyze the logistics of beer delivery quantities

SELECT * FROM beerdelivered
JOIN deliveries ON beerdelivered.deliveryid = deliveries.deliveryid;

-- 6. To understand which beers are being delivered and in what quantities.

SELECT * FROM beers
JOIN beerdelivered ON beers.beerid = beerdelivered.beerid;

-- 7. To measure sales representatives' performance.

SELECT * FROM salesreps
JOIN sales ON salesreps.salesrepid = sales.salesrepid;

-- 8. To analyze sales performance across different geographic locations.

SELECT * FROM locations
JOIN sales ON locations.locationid = sales.locationid;

-- 9. Cross join to understand the relationship between salesreps and customers.

SELECT * FROM salesreps
CROSS JOIN customers;


