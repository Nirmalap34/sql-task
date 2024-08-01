USE jul12_fri;
CREATE TABLE customers (customer_id INT AUTO_INCREMENT,name VARCHAR(255) NOT NULL,email VARCHAR(255) UNIQUE NOT NULL,
  phone VARCHAR(20) NOT NULL,address VARCHAR(255) NOT NULL,PRIMARY KEY (customer_id));

CREATE TABLE orders (order_id INT AUTO_INCREMENT,customer_id INT NOT NULL,order_date DATE NOT NULL,total DECIMAL(10, 2) NOT NULL,
  status VARCHAR(50) NOT NULL,PRIMARY KEY (order_id),FOREIGN KEY (customer_id) REFERENCES customers(customer_id));
  
INSERT INTO customers (id,name, email, phone, address)VALUES
  (1,'John Doe', 'john.doe@example.com', '123-456-7890', '123 Main St'),
  (2,'Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Elm St'),
  (3,'Bob Johnson', 'bob.johnson@example.com', '555-123-4567', '789 Oak St'),
  (4,'Alice Williams', 'alice.williams@example.com', '901-234-5678', '901 Maple St'),
  (5,'Mike Davis', 'mike.davis@example.com', '111-222-3333', '234 Pine St'),
  (6,'Emily Miller', 'emily.miller@example.com', '444-555-6666', '567 Cedar St'),
  (7,'Sarah Taylor', 'sarah.taylor@example.com', '777-888-9999', '890 Walnut St'),
  (8,'David White', 'david.white@example.com', '222-333-4444', '345 Spruce St'),
  (9,'Kate Brown', 'kate.brown@example.com', '666-777-8888', '678 Fir St'),
  (10,'Tom Martin', 'tom.martin@example.com', '999-000-1111', '901 Beech St');
  
  SELECT * FROM customers;

INSERT INTO orders (customer_id, order_date, total, status) VALUES
  (1, '2022-01-01', 100.00, 'Pending'),
  (2, '2022-01-05', 200.00, 'Shipped'),
  (3, '2022-01-10', 50.00, 'Delivered'),
  (4, '2022-01-15', 150.00, 'Pending'),
  (5, '2022-01-20', 250.00, 'Shipped'),
  (6, '2022-01-25', 75.00, 'Delivered'),
  (7, '2022-02-01', 125.00, 'Pending'),
  (8, '2022-02-05', 225.00, 'Shipped'),
  (9, '2022-02-10', 300.00, 'Delivered'),
  (10, '2022-02-15', 175.00, 'Pending');
  
  SELECT * FROM orders;
  
SELECT * FROM orders
WHERE total BETWEEN 100 AND 200;

SELECT * FROM customers
WHERE name LIKE 'J%';

SELECT * FROM orders
ORDER BY order_date ASC;

SELECT UPPER(name) AS upper_name FROM customers;
SELECT LOWER(email) AS lower_email FROM customers;
SELECT  CONCAT(name, ' ', email) AS full_info FROM customers;
SELECT LENGTH(name) AS name_length FROM customers;
 
CREATE INDEX idx_email ON customers (email);
CREATE INDEX idx_customer_id ON orders (customer_id);
CREATE INDEX idx_total ON orders (total);
 SELECT * FROM customers WHERE email='bob.johnson@example.com';
 SELECT * FROM orders WHERE customer_id = 1;
 SELECT * FROM orders WHERE total > 200;


 