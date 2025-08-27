-- 3_views.sql: Useful Views

USE library_db;

-- View: Currently Borrowed Books
CREATE OR REPLACE VIEW v_currently_borrowed AS
SELECT
    b.borrowing_id,
    m.name AS member_name,
    bo.title AS book_title,
    b.borrow_date,
    b.due_date
FROM Borrowings b
JOIN Members m ON b.member_id = m.member_id
JOIN Books bo ON b.book_id = bo.book_id
WHERE b.return_date IS NULL;

-- View: Overdue Books
CREATE OR REPLACE VIEW v_overdue_books AS
SELECT
    b.borrowing_id,
    m.name AS member_name,
    bo.title AS book_title,
    b.borrow_date,
    b.due_date,
    DATEDIFF(CURDATE(), b.due_date) AS days_overdue
FROM Borrowings b
JOIN Members m ON b.member_id = m.member_id
JOIN Books bo ON b.book_id = bo.book_id
WHERE b.return_date IS NULL AND b.due_date < CURDATE();