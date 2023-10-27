-- INNER JOIN, Products is the left table and Sales is the right table
-- We will only see products that were sold

SELECT * FROM products as p
INNER JOIN sales as s
ON p.ProductID = s.ProductID;

-- LEFT JOIN, since Products is the left table, we will see all products, but we will see null values if the product was not sold

SELECT * FROM products as p
LEFT JOIN sales as s
ON p.ProductID = s.ProductID;

-- INNER JOIN, Employees is the left tale and Sales is the right
-- We will only see employees who have made a sale

SELECT * FROM employees as e
INNER JOIN sales as s
ON e.EmployeeID = s.EmployeeID;

-- LEFT JOIN, Since Employees is the left table we will see all employees even if they did not make a sale
-- null values will appear on the right table (Sales) if that employee did not make a sale

SELECT * FROM employees as e
LEFT JOIN sales as s
ON e.EmployeeID = s.EmployeeID;

-- Using multiple joins

SELECT P.Name as "Product Sold", p.Price, s.Quantity as "Amount Sold", e.FirstName, e.LastName From products as p
INNER JOIN sales as s
ON p.ProductID = s.ProductID
INNER JOIN employees as e
ON s.EmployeeID = e.EmployeeID;



