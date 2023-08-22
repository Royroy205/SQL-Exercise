/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT p.name as product, c.name as category
FROM products as p JOIN categories as c
ON c.CategoryID = p.CategoryID
WHERE c.Name = "Computers";



 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT p. name, p.Price, r. Rating
 FROM products as p
 JOIN reviews as r
 On p.ProductID = r.ProductID
 WHERE r.Rating = 5;
 
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, sum(s.Quantity) AS "total"
From sales AS s
JOIN employees  as e
On s.employeeID= e.employeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
Limit 2;



/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT  d.Name as "Department Name", c.Name as "Category Name" from departments as d
INNER JOIN categories as c
ON d.DepartmentID = c.DepartmentID
WHERE c.Name = "Appliances" or c.Name = "Games";



/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT p.Name, sum(s.Quantity) as "Amount Sold", sum(s.Quantity * p.Price) as "Total In Dollars" From Products as p
 INNER JOIN Sales as s
 ON p.ProductID = s.ProductID
 WHERE p.Name Like "%hotel%";
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, r.Reviewer, r.Rating, r.Comment From Products as p
INNER JOIN Reviews as r
ON p.ProductID = r.ProductID
WHERE p.Name = "Visio TV" AND r.Rating <2;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
SELECT e.employeeID, e.FirstName, e.LastName, p.Name as "Product Name", sum(s.Quantity) as "Number Sold" FROM employees as e
INNER JOIN Sales as s
ON e.EmployeeID = s.EmployeeID
INNER JOIN Products as p
ON p.ProductID = s.ProductID
GROUP BY e.EmployeeID, p.Name
ORDER BY e.LastName;






