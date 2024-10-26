-- YOUR NAME HERE	LAB 4 AGGREGATE FUNCTIONS
-- Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
-- 1 
-- A 
SELECT MIN(price) AS 'Lowest Price' FROM stock_items;

-- B
SELECT MAX(inventory) AS 'Greatest Quantity' FROM stock_items;

-- C
SELECT AVG(price) AS 'Average Price' FROM stock_items;
-- D

SELECT SUM(inventory) As 'Total Inventory' FROM stock_items;
-- 2
-- A
SELECT COUNT(first_name), role FROM employees GROUP BY role;
-- B
 SELECT COUNT(item),category AS Mammals FROM Stock_items  WHERE category<>'Piscine' GROUP BY category;
-- C

SELECT AVG(price),category AS'Average Price ($)' FROM stock_items WHERE inventory>0 GROUP BY item;
-- 3
-- A
SELECT inventory AS "In Stock", category AS "Species" FROM stock_items GROUP BY category ORDER BY (inventory)ASC;
-- B
 SELECT category, SUM(inventory) AS 'Total Inventory',  AVG(price) AS 'Average Price' FROM  stock_items GROUP BY category
HAVING SUM(inventory) < 100 AND AVG(price) < 100;

-- 4 
SELECT item AS 'Product', CONCAT('$', price) AS 'Price', inventory AS 'Stock Remaining', category AS 'Species', (price * inventory) AS 'Potential Earnings' FROM stock_items ORDER BY 'Potential Earnings' DESC;