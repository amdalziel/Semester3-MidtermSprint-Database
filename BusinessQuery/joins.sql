
-- 1. Write a SQL query that returns all the customers and their orders.

SELECT * FROM "Sales"
JOIN "Customers" ON "Sales".customer_id = "Customers".customer_id;


-- 2. To evaluate the performance of sales representatives and analyze sales by location.

SELECT * FROM "Sales"
JOIN "SalesReps" ON "Sales".salesrep_id = "SalesReps".salesrep_id
JOIN "Locations" ON "Sales".location_id = "Locations".location_id;

-- 3. To connect sales data with the beers that are being sold and delivered.

SELECT * FROM "Sales"
JOIN "Beer" ON "Sales".beer_id = "Beer".beer_id
JOIN "Deliveries" ON "Sales".sale_id = "Deliveries".delivery_id;

-- 4. To understand the rewards system's impact on customer loyalty.

SELECT * FROM "Customers"
JOIN "Rewards" ON "Customers".customer_id = "Rewards".customer_id;


-- 5. To understand which beers are being delivered and in what quantities.

SELECT * FROM "Beer"
JOIN "Deliveries" ON "Beer".beer_id = "Deliveries".beer_id;

-- 6. To measure sales representatives' performance.

SELECT * FROM "SalesReps"
JOIN "Sales" ON "SalesReps".salesrep_id = "Sales".salesrep_id;

-- 7. To analyze sales performance across different geographic locations.

SELECT * FROM "Locations"
JOIN "Sales" ON "Locations".location_id = "Sales".location_id;

-- 9. Cross join to understand the relationship between salesreps and customers.

SELECT * FROM "SalesReps"
CROSS JOIN "Customers";


