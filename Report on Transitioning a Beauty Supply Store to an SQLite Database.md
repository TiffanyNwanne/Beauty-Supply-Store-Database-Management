# Report on Transitioning a Beauty Supply Store to an SQLite Database

# **1. Introduction**

The transition from a manual, paper-based record-keeping system to a **structured SQLite database** is a critical step in improving the efficiency and accuracy of managing a **beauty supply store**. This report outlines the design, implementation, and benefits of a database system tailored for **sales, inventory, and customer management**.

# **2. Database Design**

The database is structured to optimize business operations, including tracking products, managing inventory levels, processing sales transactions, and storing customer details. The key tables and their relationships are described below:

**2.1. Customers Table**

This table stores customer details, enabling better customer service and targeted marketing.

•	**Primary Key:** customer_id

•	**Columns:** name, phone, email

**2.2. Products Table**

Maintains a record of all products available in the store.

•	**Primary Key:** product_id

•	**Columns:** name, category, price, supplier

**2.3. Inventory Table**

Tracks stock levels and ensures accurate inventory management.

•	**Primary Key:** inventory_id

•	**Foreign Key:** product_id (links to Products table)

•	**Columns:** quantity, last_updated

**2.4. Sales Table**

Records transactions, linking each sale to a customer.

•	**Primary Key:** sale_id

•	**Foreign Key:** customer_id (links to Customers table)

•	**Columns:** sale_date, total_amount

**2.5. Sale Items Table**

Stores the details of individual products sold in each transaction.

•	**Primary Key:** sale_item_id

•	**Foreign Keys:** sale_id (links to Sales table), product_id (links to Products table)

•	**Columns:** quantity_sold, subtotal

# **3. Implementation in SQLite**

The database was created using **SQLite**, a lightweight and efficient database management system. The SQL script used for database creation includes:

[https://www.notion.so](https://www.notion.so)

This structure ensures **data integrity** through relationships, allowing efficient **data retrieval and reporting**.

# **4. Data Entry and Migration**

To populate the database, data from existing paper records was digitized and **imported in bulk** using CSV files. The process involved:

1.	**Extracting existing sales and inventory data** into structured spreadsheets.

2.	**Converting spreadsheets to CSV format** for easy database import.

3.	**Loading data into SQLite** using the .import command.

.mode csv

.import customers.csv customers

.import products.csv products

.import sales.csv sales

This method **preserves historical records** while setting up a scalable system for future transactions.

# **5. Visualization of the Database Structure**

A visual **Entity-Relationship Diagram (ERD)** was created to represent the relationships between tables. This visualization ensures **a clear understanding of the database schema** and aids in future database modifications.

The ERD highlights:

•	**One-to-Many Relationships:** Each **customer** can have multiple **sales transactions**.

•	**Inventory Management:** Each **product** is linked to an **inventory record**.

•	**Sales Tracking:** Each **sale** consists of multiple **products**, recorded in the **Sale Items table**.

# **6. Benefits of the New System**

The implementation of the SQLite database brings several **business benefits**:

**6.1. Improved Efficiency**

•	**Faster sales processing** with automated transaction recording.

•	**Accurate inventory tracking**, reducing stock shortages.

**6.2. Better Decision-Making**

•	**Sales reports** help identify best-selling products.

•	**Customer purchase history** enables targeted promotions.

**6.3. Reduced Errors & Paperwork**

•	Eliminates manual errors from paper-based records.

•	Digital storage makes data retrieval easier.

**6.4. Scalability & Future Growth**

•	Can integrate with **e-commerce systems**.

•	Supports **automated low-stock alerts** for better inventory control.

# **7. Conclusion**

The transition to an SQLite database significantly enhances **efficiency, accuracy, and business insights** for the beauty supply store. Moving forward, additional features can be implemented, such as:

1.	**User-friendly POS software** integrated with the database.

2.	**Barcode scanning system** to speed up sales and inventory management.

3.	**Automated reordering system** to notify suppliers when stock runs low.

By adopting this digital system, the store is now positioned for **better inventory control, improved customer service, and scalable business growth**.