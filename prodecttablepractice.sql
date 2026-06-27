-- 1. Remove the problematic table
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;

-- 2. Recreate without quotes (PostgreSQL will store these as lowercase)
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category TEXT,
  price NUMERIC(10,2),
  stock_quantity INT,
  is_available BOOLEAN,
  added_on DATE
);

-- 3. Now run your INSERT statements again

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  product_id INT,
  quantity INT,
  order_date DATE,
  customer_name VARCHAR(50),
  payment_method VARCHAR(50),
  CONSTRAINT fk_product FOREIGN KEY (product_id)
  REFERENCES products(product_id) ON DELETE CASCADE
);


INSERT INTO products (product_id, product_name, category, price, stock_quantity, is_available, added_on) VALUES
(101, 'Wireless Mouse', 'Electronics', 1611.53, 79, FALSE, '2025-04-29'),
(102, 'Bluetooth Speaker', 'Electronics', 135.14, 23, TRUE, '2025-06-04'),
(103, 'Laptop Stand', 'Accessories', 1020.92, 161, FALSE, '2025-07-09'),
(104, 'USB-C Hub', 'Accessories', 408.39, 164, FALSE, '2025-05-12'),
(105, 'Notebook', 'Stationery', 1987.74, 116, TRUE, '2025-07-01'),
(106, 'Pen Set', 'Stationery', 1048.10, 150, TRUE, '2025-06-29'),
(107, 'Coffee Mug', 'Home & Kitchen', 1063.53, 76, FALSE, '2025-04-15'),
(108, 'LED Desk Lamp', 'Home & Kitchen', 239.10, 93, FALSE, '2025-05-23'),
(109, 'Yoga Mat', 'Fitness', 1514.86, 162, TRUE, '2025-05-05'),
(110, 'Water Bottle', 'Fitness', 420.99, 191, TRUE, '2025-05-09'),
(111, 'Smartphone', 'Electronics', 361.20, 200, FALSE, '2025-04-18'),
(112, 'Headphones', 'Electronics', 154.84, 178, TRUE, '2025-05-18'),
(113, 'Gaming Keyboard', 'Accessories', 103.24, 100, FALSE, '2025-04-19'),
(114, 'Monitor', 'Electronics', 305.20, 123, FALSE, '2025-05-20'),
(115, 'HDMI Cable', 'Accessories', 552.97, 105, TRUE, '2025-06-17'),
(116, 'Power Bank', 'Electronics', 831.88, 13, FALSE, '2025-07-01'),
(117, 'Backpack', 'Accessories', 1517.11, 64, TRUE, '2025-05-08'),
(118, 'Webcam', 'Electronics', 1428.30, 76, FALSE, '2025-06-11'),
(119, 'Desk Organizer', 'Home & Kitchen', 404.69, 136, FALSE, '2025-06-14'),
(120, 'Fitness Band', 'Fitness', 1451.69, 171, FALSE, '2025-05-06');



INSERT INTO orders (order_id, product_id, quantity, order_date, customer_name, payment_method) VALUES
(1, 120, 5, '2025-06-26', 'Rohan', 'Cash on Delivery'),
(2, 116, 5, '2025-06-21', 'Anjali', 'Cash on Delivery'),
(3, 101, 3, '2025-06-23', 'Rohan', 'Credit Card'),
(4, 115, 3, '2025-06-16', 'Akarsh', 'Credit Card'),
(5, 105, 3, '2025-06-24', 'Simran', 'Credit Card'),
(6, 110, 3, '2025-06-20', 'Simran', 'Credit Card'),
(7, 113, 5, '2025-07-06', 'Anjali', 'Credit Card'),
(8, 106, 1, '2025-06-30', 'Rohan', 'Credit Card'),
(9, 107, 3, '2025-06-27', 'Anjali', 'Cash on Delivery'),
(10, 112, 2, '2025-06-15', 'Meera', 'Cash on Delivery'),
(11, 105, 4, '2025-07-07', 'Meera', 'Net Banking'),
(12, 110, 3, '2025-06-13', 'Anjali', 'UPI'),
(13, 106, 3, '2025-07-10', 'Simran', 'Credit Card'),
(14, 104, 3, '2025-06-16', 'Akarsh', 'Net Banking'),
(15, 106, 1, '2025-07-11', 'Anjali', 'Cash on Delivery'),
(16, 119, 1, '2025-06-18', 'Akarsh', 'Cash on Delivery'),
(17, 111, 2, '2025-07-05', 'Akarsh', 'Cash on Delivery'),
(18, 107, 3, '2025-07-10', 'Anjali', 'Credit Card'),
(19, 119, 1, '2025-06-27', 'Meera', 'Cash on Delivery'),
(20, 109, 1, '2025-07-08', 'Akarsh', 'Credit Card');


select * from orders
select * from   products

select * from orders o inner join products p on o.product_id = p.product_id


SELECT o.order_id, o.customer_name, p.product_name, p.price
FROM orders o
JOIN products p ON o.product_id = p.product_id;

SELECT p.product_name, o.order_id
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id;


SELECT o.order_id, p.product_name, p.category
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE p.category = 'Electronics';

SELECT o.order_id, p.product_name, p.price
FROM orders o
JOIN products p ON o.product_id = p.product_id
ORDER BY p.price DESC;


SELECT p.product_name, COUNT(o.order_id) AS total_orders
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name;


SELECT p.product_name, SUM(o.quantity * p.price) AS revenue
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name;


SELECT p.product_name, SUM(o.quantity * p.price) AS total_revenue
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name
HAVING SUM(o.quantity * p.price) > 2000;


SELECT DISTINCT o.customer_name
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE p.category = 'Fitness';