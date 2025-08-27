-- 1_schema.sql: Library Management System Schema

DROP DATABASE IF EXISTS library_db;
CREATE DATABASE library_db;
USE library_db;

-- Members Table
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    join_date DATE NOT NULL,
    status ENUM('Active', 'Inactive') DEFAULT 'Active'
);

-- Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    published_year INT,
    total_copies INT DEFAULT 1,
    available_copies INT DEFAULT 1
);

-- Borrowings Table
CREATE TABLE Borrowings (
    borrowing_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    borrow_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE,
    fine DECIMAL(5,2) DEFAULT 0,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Fines Table
CREATE TABLE Fines (
    fine_id INT PRIMARY KEY AUTO_INCREMENT,
    borrowing_id INT,
    amount DECIMAL(5,2) NOT NULL,
    paid BOOLEAN DEFAULT FALSE,
    paid_date DATE,
    FOREIGN KEY (borrowing_id) REFERENCES Borrowings(borrowing_id)
);