-- order_status
INSERT IGNORE INTO order_status (order_status_id, status_name) VALUES 
(1, 'Pending'), (2, 'Shipped'), (3, 'Delivered'), (4, 'Cancelled');

-- address_status
INSERT IGNORE INTO address_status (address_status_id, status_name) VALUES 
(1, 'Current'), (2, 'Old');

-- country
INSERT IGNORE INTO country (country_id, country_name) VALUES 
(1, 'Kenya'), (2, 'USA'), (3, 'UK');

-- author
INSERT IGNORE INTO author (author_id, author_name) VALUES 
(1, 'Chinua Achebe'),
(2, 'Ngugi wa Thiong\'o'),
(3, 'J.K. Rowling');

-- shipping_method
INSERT IGNORE INTO shipping_method (shipping_method_id, shipping_type, shipping_cost) VALUES 
(1, 'Standard', 200.00), 
(2, 'Express', 450.00);

-- customer
INSERT IGNORE INTO customer (customer_id, first_name, last_name, email, phone) VALUES 
(1, 'Alice', 'Wambui', 'alice@example.com', '0712345678'),
(2, 'Brian', 'Otieno', 'brian@example.com', '0723456789');

-- publisher
INSERT IGNORE INTO publisher (publisher_id, contact_info, country_id) VALUES 
(1, 'contact@eastpublishers.com', 1),
(2, 'info@magicbooks.com', 3);

-- address
INSERT IGNORE INTO address (address_id, street, city, postal_code, country_id) VALUES 
(1, 'Moi Avenue', 'Nairobi', 00100, 1),
(2, 'Kenyatta Road', 'Kisumu', 40100, 1);

-- customer_address
INSERT IGNORE INTO customer_address (customer_address_id, customer_id, address_id) VALUES 
(1, 1, 1),
(2, 2, 2);

-- language
INSERT IGNORE INTO language (language_id, language_name) VALUES 
('EN', 'English'),
('SW', 'Swahili');

-- book
INSERT IGNORE INTO book (book_id, title, genre, price, ISBN, publication_date, publisher_id, language_id) VALUES 
(1, 'Things Fall Apart', 'Fiction', 1500.00, 123456789, '1958-06-01', 1, 'EN'),
(2, 'Decolonising the Mind', 'Non-Fiction', 1200.00, 987654321, '1986-01-01', 1, 'SW'),
(3, 'Harry Potter', 'Fantasy', 2500.00, 555555555, '1997-06-26', 2, 'EN');

-- book_author
INSERT IGNORE INTO book_author (book_author_id, book_id, author_id) VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- customer_order
INSERT IGNORE INTO customer_order (order_id, order_date, customer_id, shipping_method_id, order_status_id) VALUES 
(1, CURDATE(), 1, 1, 1),
(2, CURDATE(), 2, 2, 2);

-- order_line
INSERT IGNORE INTO order_line (order_line_id, quantity, price, order_id, book_id) VALUES 
(1, 1, 1500.00, 1, 1),
(2, 2, 2500.00, 2, 3);

-- order_history
INSERT IGNORE INTO order_history (history_id, change_date, order_id, order_status_id) VALUES 
(1, CURDATE(), 1, 1),
(2, CURDATE(), 2, 2);
