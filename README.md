# ETL-Pipeline-and-SQL-Querying-for-MySQL-Database
The objective of this project is to build an ETL (Extract, Transform, Load) pipeline to import data from CSV files into a relational MySQL database.

📂 Project Structure

This project involves the following steps:

1) Setting Up MySQL

2) Creating Tables in MySQL

3) Extracting Data from CSV Files

4) Transforming Data

5) Loading Data into MySQL

6) SQL Querying and Data Analysis


⚙️ Technologies Used

1) Python (pandas, MySQL Connector, SQLAlchemy)

2) MySQL (MySQL Server, MySQL Workbench)

3) CSV Files (customers.csv, products.csv, orders.csv, payments.csv)

📋 Database Schema

The database consists of four tables:

1) Customers

2) Products

3) Orders

4) Payments

🔑 Schema Constraints

1) Primary Keys are set for all tables.

2) Foreign Keys are established to maintain referential integrity.

3) Data types are ensured to match the schema requirements (e.g., dates as TIMESTAMP, numeric fields as DECIMAL or INT).


![ER Diagram](https://github.com/user-attachments/assets/5319adef-5368-42ca-95a8-670a55cf5f56)


📥 Data Extraction

1) CSV files are read using Python (pandas, MySQL Connector, SQLAlchemy) or MySQL Workbench Import Wizard.

2) Checking for missing values and handling them appropriately.

3) Removing duplicate email values in Customers table if present.

🔄 Data Transformation

1) Ensuring data integrity before loading (e.g., order_id in Payments references an actual order from Orders).

2) Converting data types where necessary.

📤 Data Loading

Data is inserted using:

1) SQL INSERT INTO statements.

2) MySQL Workbench Import Wizard.

3) Python scripts with MySQL Connector.


📊 Data Analysis (SQL Queries)

(I) Basic Queries

1) Retrieve all customer details.

2) List all orders with their total amount and status.

3) Find all products that belong to the ‘Electronics’ category.

(II) Intermediate Queries (Joins & Aggregations)

1) Total number of orders placed by each customer.

2) Retrieve orders with customer names and order status.

3) Calculate total revenue generated.

4) Identify customers with more than 3 orders.

5) Retrieve completed payments with associated order details.

(III) Advanced Queries

1) Top 5 customers by spending.

2) Orders with pending or failed payments.

3) Most popular product category.

4) Orders without successful payment.

5) Average Order Value (AOV) per customer.

🚀 How to Run the Project

1) Install MySQL Server and MySQL Workbench.

2) Create a new database: ecommerce_db.

3) Create tables using the provided schema.

4) Load CSV data into the tables using Python scripts or MySQL Workbench.

5) Perform data analysis using the provided SQL queries.


