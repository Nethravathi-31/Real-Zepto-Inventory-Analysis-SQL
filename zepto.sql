drop table if exists zepto;
CREATE TABLE zepto (
    sku_id SERIAL PRIMARY KEY,
    category VARCHAR(120),
    name VARCHAR(150) NOT NULL,
    mrp NUMERIC(8,2),
    discountPercent NUMERIC(5,2),
    availableQuantity INTEGER,
    discountedSellingPrice NUMERIC(8,2),
    weightInGms INTEGER,
    outOfStock BOOLEAN,
    quantity INTEGER
);
select count(*) from zepto;
select * from zepto limit 10;
SELECT *
FROM zepto
WHERE sku_id IS NULL
   OR category IS NULL
   OR name IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR availableQuantity IS NULL
   OR discountedSellingPrice IS NULL
   OR weightInGms IS NULL
   OR outOfStock IS NULL
   OR quantity IS NULL;


   
select distinct category from zepto order by category;
select * from zepto
SELECT outOfStock, COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

--product names present multiple times
SELECT name, COUNT(sku_id) as "Number of SKUs"
FROM zepto
GROUP BY name
HAVING count(sku_id) > 1
ORDER BY count(sku_id) DESC;

-- Products in stock vs out of stock
SELECT outOfStock, COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

-- Product names present multiple times
SELECT name,
       COUNT(sku_id) AS "Number of SKUs"
FROM zepto
GROUP BY name
HAVING COUNT(sku_id) > 1
ORDER BY COUNT(sku_id) DESC;



-- Data cleaning

-- Products with price = 0
SELECT *
FROM zepto
WHERE mrp = 0
   OR discountedSellingPrice = 0;

DELETE FROM zepto
WHERE mrp = 0;

-- Convert paise to rupees
UPDATE zepto
SET mrp = mrp / 100.0,discountedSellingPrice=discountedSellingPrice/100.0;

select mrp,discountedSellingPrice from zepto;

select mrp,discountedSellingPrice from zepto;

-- Q1. Find the top 10 best-value products based on the discount percentage.

SELECT name,
category,
mrp,
discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

-- Q2. What are the Products at High MRP but Out of Stock?

SELECT name,
category, mrp
FROM zepto
WHERE outOfStock = TRUE
  AND mrp > 500
ORDER BY mrp DESC;

-- Q3. Calculate Estimated Revenue for each category.

SELECT category,
SUM(discountedSellingPrice * quantity) AS estimated_revenue
FROM zepto
GROUP BY category
ORDER BY estimated_revenue DESC;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.

SELECT *
FROM zepto
WHERE mrp > 500
AND discountPercent < 10;
-- Q5. Identify the top 5 categories offering the highest average discount percentage.

SELECT category,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.

SELECT name,
category,
weightInGms,
discountedSellingPrice,
ROUND(discountedSellingPrice / weightInGms, 2) AS price_per_gram
FROM zepto
WHERE weightInGms > 100
ORDER BY price_per_gram ASC;

-- Q7. Group the products into categories like Low, Medium, Bulk.

SELECT name,
weightInGms,
CASE
    WHEN weightInGms < 500 THEN 'Low'
    WHEN weightInGms BETWEEN 500 AND 1000 THEN 'Medium'
    ELSE 'Bulk'
END AS product_size
FROM zepto;

-- Q8. What is the Total Inventory Weight Per Category?

SELECT category,
SUM(weightInGms * availableQuantity) AS total_inventory_weight
FROM zepto
GROUP BY category
ORDER BY total_inventory_weight DESC;




