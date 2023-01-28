-- Step 1
-- We've created a database for customers and their orders.
-- Not all of the customers have made orders,
-- however. Come up with a query that lists the name and email of every customer,
-- followed by the item and price of orders they've made.
-- Use a LEFT OUTER JOIN so that a customer is listed even if they've made no orders,
-- and don't add any ORDER BY.

-- Step 2
-- Now, create another query that will result in one row per each customer, with their name, email,
-- and total amount of money they've spent on orders.
-- Sort the rows according to the total money spent, from the most spent to the least spent.
-- (Tip: You should always GROUP BY on the column that is most likely to be unique in a row.)



CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);
    
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);



-- QUERIES:

SELECT customers.name, customers.email, orders.item, orders.price
FROM customers
LEFT OUTER JOIN orders
ON customers.id == orders.customer_id;


SELECT customers.name, customers.email, SUM(orders.price) AS total
 FROM customers
 LEFT OUTER JOIN orders
 ON customers.id == orders.customer_id
 GROUP BY customers.name
 ORDER BY total DESC;


-- NOTES:
-- INNER JOINs only get the records that are connected and matched in both tables
-- If you want to get the records any way; regardless of them being referenced in the other tables or not, use OUTER JOINs.
-- LEFT OUTER JOIN: gets all the records in the first table, even if they are not referenced in the other table.
-- RIGHT OUTER JOIN: gets all the records in the second table, even if they are not referenced in the other table.
-- FULL OUTER JOIN: gets all the records from both of the tables.
-- The record with no reference to the other table will have its fields filled by NULL!