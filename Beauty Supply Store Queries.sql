-- Customers Table
CREATE TABLE customers 
(customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
phone TEXT UNIQUE,
email TEXT UNIQUE);

-- Products Table
CREATE TABLE products 
(product_id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
category TEXT,
price REAL NOT NULL,
supplier TEXT);

-- Inventory Table
CREATE TABLE inventory
(inventory_id INTEGER PRIMARY KEY AUTOINCREMENT,
product_id INTEGER NOT NULL,
quantity INTEGER NOT NULL,
last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (product_id) REFERENCES products(product_id));

-- Sales Table
CREATE TABLE sales 
(sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
customer_id INTEGER,
sale_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
total_amount REAL NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id));

-- Sale Items Table (For each item in a sale)
CREATE TABLE sale_items 
(sale_item_id INTEGER PRIMARY KEY AUTOINCREMENT,
sale_id INTEGER NOT NULL,
product_id INTEGER NOT NULL,
quantity_sold INTEGER NOT NULL,
subtotal REAL NOT NULL,
FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
FOREIGN KEY (product_id) REFERENCES products(product_id));