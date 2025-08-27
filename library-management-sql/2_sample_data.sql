-- 2_sample_data.sql: Sample Data for Library Management DB

USE library_db;

-- Sample Members
INSERT INTO Members (name, email, join_date, status) VALUES
('Alice Johnson', 'alice@example.com', '2023-01-15', 'Active'),
('Bob Smith', 'bob@example.com', '2022-11-10', 'Active'),
('Charlie Rose', 'charlie@example.com', '2024-02-20', 'Inactive');

-- Sample Books
INSERT INTO Books (title, author, genre, published_year, total_copies, available_copies) VALUES
('The Pragmatic Programmer', 'Andrew Hunt', 'Programming', 1999, 3, 3),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960, 2, 2),
('1984', 'George Orwell', 'Dystopian', 1949, 5, 5),
('Sapiens', 'Yuval Noah Harari', 'Non-fiction', 2011, 4, 4);

-- Sample Borrowings
INSERT INTO Borrowings (member_id, book_id, borrow_date, due_date, return_date, fine) VALUES
(1, 1, '2024-08-01', '2024-08-15', '2024-08-12', 0),
(2, 2, '2024-07-20', '2024-08-03', NULL, 0),
(1, 3, '2024-08-10', '2024-08-24', NULL, 0),
(3, 4, '2024-06-01', '2024-06-14', '2024-07-01', 25.00);

-- Sample Fines
INSERT INTO Fines (borrowing_id, amount, paid, paid_date) VALUES
(4, 25.00, TRUE, '2024-07-02');