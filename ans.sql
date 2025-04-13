CREATE DATABASE bookstore_DB;

USE bookstore_DB;

CREATE TABLE order_status(
order_status_id INT AUTO_INCREMENT PRIMARY KEY,
status_name VARCHAR(100)
);

CREATE TABLE address_status(
address_status_id INT AUTO_INCREMENT PRIMARY KEY,
status_name VARCHAR(100)
);

CREATE TABLE country(
country_id INT AUTO_INCREMENT PRIMARY KEY,
country_name VARCHAR(100)
);

CREATE TABLE author(
author_id INT PRIMARY KEY,
author_name VARCHAR(100)
);

CREATE TABLE shipping_method(
shipping_method_id INT AUTO_INCREMENT PRIMARY KEY,
shipping_type VARCHAR(100),
shipping_cost DECIMAL(10,4)
);

CREATE TABLE customer(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
email VARCHAR(100) UNIQUE,
phone VARCHAR(20)
);

CREATE TABLE publisher(
publisher_id INT AUTO_INCREMENT PRIMARY KEY,
contact_info VARCHAR(100),
country_id INT,

FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE address(
address_id INT AUTO_INCREMENT PRIMARY KEY,
street VARCHAR(100),
city VARCHAR(100),
postal_code INT,
country_id INT,

FOREIGN KEY(country_id) REFERENCES country(country_id)
);

CREATE TABLE customer_address(
customer_address_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
address_id INT,

FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE language(
language_id VARCHAR(20) PRIMARY KEY,
language_name VARCHAR(100)
);

CREATE TABLE book(
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
genre VARCHAR(100),
price DECIMAL(6,2),
ISBN INT,
publication_date DATE,
publisher_id INT,
language_id VARCHAR(20),

FOREIGN KEY(publisher_id) REFERENCES publisher(publisher_id),
FOREIGN KEY(language_id) REFERENCES language(language_id)
);

CREATE TABLE book_author(
book_author_id INT PRIMARY KEY,
book_id INT, 
author_id INT,

FOREIGN KEY(book_id) REFERENCES book(book_id),
FOREIGN KEY(author_id) REFERENCES author(author_id)
);

CREATE TABLE customer_order(
order_id INT PRIMARY KEY,
order_date DATE,
customer_id INT,
shipping_method_id INT,
order_status_id INT,

FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(shipping_method_id),
FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id)
);

CREATE TABLE order_line(
order_line_id INT AUTO_INCREMENT PRIMARY KEY,
quantity INT,
price DECIMAL (6,2),
order_id INT,
book_id INT,

FOREIGN KEY (order_id) REFERENCES customer_order(order_id),
FOREIGN KEY (book_id) REFERENCES book(book_id)
);

CREATE TABLE order_history(
history_id INT AUTO_INCREMENT PRIMARY KEY,
change_date DATE,
order_id INT,
order_status_id INT,

FOREIGN KEY (order_id) REFERENCES customer_order(order_id),
FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id)
);


0	12	12:54:23	INSERT INTO language (language_id, language_name) VALUES 
 ('EN', 'English'),
 ('SW', 'Swahili')	Error Code: 1062. Duplicate entry 'EN' for key 'language.PRIMARY'	0.000 sec
