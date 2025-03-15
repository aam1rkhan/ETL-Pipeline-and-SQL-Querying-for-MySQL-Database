CREATE DATABASE ecommerce_db;
USE ecommerce_db;


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(100) NOT NULL,
    created_at DATETIME 
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    created_at DATETIME 
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(100) NOT NULL,
    payment_status VARCHAR(20) NOT NULL,
    payment_date DATETIME ,
    amount_paid DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Payments;

-- Re-add the column with a foreign key constraint
ALTER TABLE Orders
ADD COLUMN Product_id INT,
ADD CONSTRAINT fk_product
FOREIGN KEY (Product_id) REFERENCES Products(product_id);

set sql_safe_updates = 0;

UPDATE Orders
SET Product_id = FLOOR(1 + (RAND() * 100));

set sql_safe_updates = 1;

#Write an SQL query to find unpaid orders (i.e., orders where no successful payment exists).
SELECT Order_id
FROM Orders
WHERE status = "Pending";

#Find all products that belong to the ‘Electronics’ category.
SELECT product_name FROM Products
WHERE category = "Electronics";

#Find the total number of orders placed by each customer (customer_id and count).
SELECT Customer_id,COUNT(Order_id) FROM Orders
GROUP BY Customer_id;

#List all orders where the payment was either ‘Pending’ or ‘Failed’.
SELECT Order_id FROM Payments
WHERE payment_status = "Pending" OR payment_status = "Failed";

#Find the most popular product category based on the number of orders
SELECT category FROM Products
WHERE

