CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    image VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE order_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE 
);


-- Insert test users
INSERT INTO users (email, password, name) VALUES
('user1@example.com', 'password123', 'John Doe'),
('user2@example.com', 'password123', 'Jane Smith'),
('user3@example.com', 'password123', 'Alice Johnson');

-- Insert test categories
INSERT INTO categories (name, description, image) VALUES
('Electronics', 'Devices and gadgets', 'electronics.jpg'),
('Books', 'Books of all genres', 'books.jpg'),
('Clothing', 'Men and women clothing', 'clothing.jpg');

-- Insert test products
INSERT INTO products (category_id, name, description, price, image) VALUES
(1, 'Smartphone', 'Latest model smartphone', 699.99, 'smartphone.jpg'),
(1, 'Laptop', 'High performance laptop', 999.99, 'laptop.jpg'),
(2, 'Novel', 'Bestselling fiction novel', 19.99, 'novel.jpg'),
(2, 'Textbook', 'Educational textbook', 49.99, 'textbook.jpg'),
(3, 'T-shirt', 'Comfortable cotton t-shirt', 14.99, 'tshirt.jpg'),
(3, 'Jeans', 'Denim jeans', 39.99, 'jeans.jpg');

-- Insert test orders
INSERT INTO orders (user_id, total) VALUES
(1, 719.98),
(2, 69.98),
(3, 54.98);

-- Insert test order details
INSERT INTO order_details (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 699.99),
(1, 3, 1, 19.99),
(2, 4, 1, 49.99),
(2, 5, 1, 19.99),
(3, 6, 1, 39.99),
(3, 2, 1, 999.99);
