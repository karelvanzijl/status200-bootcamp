-- Insert data into customer table

INSERT INTO customer (cust_name, cust_city, cust_country) VALUES
('Alice Johnson', 'New York', 'USA'),
('Bob Smith', 'Los Angeles', 'USA'),
('Carlos Gonzalez', 'Mexico City', 'Mexico'),
('Diana Prince', 'London', 'UK'),
('Eva Green', 'Paris', 'France'),
('Frank Castle', 'Berlin', 'Germany'),
('Grace Kelly', 'Rome', 'Italy'),
('Hank Schrader', 'Madrid', 'Spain'),
('Irene Adler', 'Amsterdam', 'Netherlands'),
('Jack Reacher', 'Sydney', 'Australia'),
('Katherine Heigl', 'Toronto', 'Canada'),
('Leo Messi', 'Berlin', 'Germany'),
('Mia Farrow', 'Rio de Janeiro', 'Brazil'),
('Nina Simone', 'Johannesburg', 'South Africa'),
('Oscar Wilde', 'Dublin', 'Ireland'),
('Paul Atreides', 'Vienna', 'Austria'),
('Quinn Fabray', 'Brussels', 'Belgium'),
('Ralph Fiennes', 'Zurich', 'Switzerland'),
('Sandra Bullock', 'Singapore', 'Singapore'),
('Tom Hardy', 'Hong Kong', 'China');

-- Insert data into product table

INSERT INTO product (prod_name, unit_price) VALUES
('Laptop', 999.99),
('Smartphone', 499.99),
('Headphones', 79.99),
('Keyboard', 49.99),
('WebMouse', 29.99),
('WebMonitor', 199.99),
('Printer', 149.99),
('Webcam', 89.99),
('Smartwatch', 129.99),
('External Hard Drive', 119.99),
('USB Flash Drive', 19.99),
('Router', 89.99),
('Speakers', 149.99),
('Desk Chair', 229.99),
('WebDesk Lamp', 59.99),
('Tablet', 349.99),
('Smart TV', 699.99),
('Digital Web Tool', 499.99),
('WebWebWeb3.0', 89.99),
('Bluetooth Web Speaker', 59.99);

-- Insert data into orders table

INSERT INTO orders (order_date, cust_id, voucher, shipper_id) VALUES
('2024-08-01', 1, 10.00, 1),
('2024-08-02', 2, 5.00, 2),
('2024-08-03', 3, 15.00, 1),
('2024-08-04', 4, 20.00, 3),
('2024-08-05', 5, 10.00, 2),
('2023-08-06', 5, 5.00, 1),
('2023-08-07', 9, 25.00, 3),
('2023-08-08', 8, 30.00, 2),
('2023-08-09', 9, 10.00, 1),
('2023-08-10', 10, 15.00, 3),
('2023-08-11', 11, 20.00, 2),
('2024-08-12', 12, 5.00, 1),
('2024-08-13', 2, 25.00, 3),
('2024-08-14', 14, 30.00, 2),
('2024-08-15', 15, 10.00, 1),
('2024-08-16', 1, 15.00, 3),
('2022-08-17', 17, 20.00, 2),
('2022-08-18', 18, 5.00, 1),
('2022-08-19', 3, 25.00, 3),
('2024-08-20', 20, 30.00, 2);

-- Insert data into orderdetail table

INSERT INTO orderdetail (order_id, prod_id, quantity, price) VALUES
(1, 1, 1, 999.99),
(1, 2, 2, 499.99),
(2, 3, 1, 79.99),
(2, 4, 1, 49.99),
(3, 5, 3, 29.99),
(3, 6, 2, 199.99),
(4, 7, 1, 149.99),
(4, 8, 1, 89.99),
(5, 9, 2, 129.99),
(5, 10, 1, 119.99),
(6, 11, 3, 19.99),
(6, 12, 1, 89.99),
(7, 13, 2, 149.99),
(7, 14, 1, 229.99),
(8, 15, 1, 59.99),
(8, 16, 1, 349.99),
(9, 17, 1, 699.99),
(9, 18, 1, 499.99),
(10, 19, 1, 89.99),
(10, 20, 2, 59.99),
(11, 1, 1, 999.99),
(11, 2, 1, 499.99),
(12, 3, 2, 79.99),
(12, 4, 1, 49.99),
(13, 5, 1, 29.99),
(13, 6, 1, 199.99),
(14, 7, 1, 149.99),
(14, 8, 2, 89.99),
(15, 9, 1, 129.99),
(15, 10, 3, 119.99),
(16, 11, 2, 19.99),
(16, 12, 1, 89.99),
(17, 13, 3, 149.99),
(17, 14, 1, 229.99),
(18, 15, 1, 59.99),
(18, 16, 1, 349.99),
(19, 17, 1, 699.99),
(19, 18, 2, 499.99),
(20, 19, 1, 89.99),
(20, 20, 1, 59.99);