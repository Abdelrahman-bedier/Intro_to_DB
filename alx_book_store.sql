CREATE DATABASE alx_book_store;
USE alx_book_store;

CREATE TABLE Authors(
    author_id INT Primary Key,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Customers(
    customer_id INT Primary Key,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT
);

CREATE TABLE Orders (
    order_id INT Primary Key,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
);

CREATE TABLE Order_Details (
    orderdetailid INT Primary Key,
    quantity DOUBLE,
    order_id INT,
    book_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);