-- YOUR NAME HERE	ASSIGNMENT 3 FILTER DATA
-- Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
-- 1 
-- A 
SELECT * FROM employees WHERE role ='Manager' or role='Assistant';

-- B
SELECT * FROM stock_items WHERE category='Piscine' AND  inventory<24;


-- 2
-- A
SELECT * FROM stock_items WHERE item Like'%cage';

-- B

SELECT * FROM employees WHERE first_name Like "F%";


-- 3 A  
SELECT * FROM stock_items WHERE id BETWEEN 1010 AND 1015;
B
SELECT * FROM  stock_items WHERE category  LIKE "Canine" AND price BETWEEN 10 and 20;


-- 4
-- A
SELECT first_name, last_name, phone FROM employees WHERE  role NOT IN ('Manager', 'Assistant');
-- B
SELECT item,price,inventory FROM stock_items WHERE category NOT IN ("Canine","Feline") AND inventory <=20;

-- 5
-- A 
SELECT first_name,last_name ,role  As "job title", phone FROM employees ORDER BY last_name Asc;
-- B
SELECT id, item, price, inventory FROM stock_items WHERE category = 'Murine' AND inventory > 20 ORDER BY price DESC;
