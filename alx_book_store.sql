-- Creates table if it doesn't exist and if table does exist, nothing happens and throws no error
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Creates a table for Authors which stores information about authors.
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)  
);

-- Creates a table for Books which stores information about books available in the bookstore.
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR (130),
    author_id INT, 
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY(author_id) REFERENCES Authors(author_id)
);

-- Creates a table for Customers which stores information about customers.
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

-- Creates a table for Orders which stores information about orders placed by customers.
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
);

-- Creates a table for Order_Details which stores information about the books included in each order.
CREATE TABLE orderdetailid (
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);


