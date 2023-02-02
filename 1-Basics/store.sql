-- Create your own store! Your store should sell one type of things,
-- like clothing or bikes, whatever you want your store to specialize in.
-- You should have a table for all the items in your store,
-- and at least 5 columns for the kind of data you think you'd need to store.
-- You should sell at least 15 items,
-- and use select statements to order your items by price and show at least one statistic about the items.


CREATE TABLE store_items (id INTEGER PRIMARY KEY, name TEXT, price INTEGER, avail_quan INTEGER, made_in TEXT);

INSERT INTO store_items VALUES (1, "wallet", 14, 88, "Egypt");
INSERT INTO store_items VALUES (2, "shirt", 24, 88, "Egypt");
INSERT INTO store_items VALUES (3, "T-shirt", 18, 88, "Egypt");
INSERT INTO store_items VALUES (4, "short", 22, 88, "Egypt");
INSERT INTO store_items VALUES (6, "shoes", 44, 88, "Egypt");
INSERT INTO store_items VALUES (7, "tie", 4, 88, "Egypt");
INSERT INTO store_items VALUES (8, "Jacket", 54, 88, "Egypt");
INSERT INTO store_items VALUES (9, "sweet shirt", 34, 88, "Egypt");
INSERT INTO store_items VALUES (10, "suit", 144, 88, "Egypt");
INSERT INTO store_items VALUES (11, "watch", 29, 88, "Egypt");
INSERT INTO store_items VALUES (12, "socks", 7, 88, "Egypt");
INSERT INTO store_items VALUES (13, "sun glasses", 12, 88, "Egypt");
INSERT INTO store_items VALUES (14, "ring", 11, 88, "Egypt");
INSERT INTO store_items VALUES (15, "earings", 23, 88, "Egypt");

SELECT name, price FROM store_items ORDER BY price;
SELECT name, MAX(price) from store_items;
