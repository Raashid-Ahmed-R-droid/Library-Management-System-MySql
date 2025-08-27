-- 6_analytics_queries.sql: Analytics & Reporting Queries

USE library_db;

-- 1. Top 3 Most Borrowed Books
SELECT bo.title, COUNT(*) AS times_borrowed
FROM Borrowings b
JOIN Books bo ON b.book_id = bo.book_id
GROUP BY bo.title
ORDER BY times_borrowed DESC
LIMIT 3;

-- 2. Most Active Members in Past 90 Days
SELECT m.name, COUNT(*) AS books_borrowed
FROM Borrowings b
JOIN Members m ON b.member_id = m.member_id
WHERE b.borrow_date >= DATE_SUB(CURDATE(), INTERVAL 90 DAY)
GROUP BY m.member_id
ORDER BY books_borrowed DESC
LIMIT 3;

-- 3. List of Overdue Books
SELECT * FROM v_overdue_books;

-- 4. Members with Total Fines > 0
SELECT m.name, SUM(f.amount) AS total_fines
FROM Members m
JOIN Borrowings b ON m.member_id = b.member_id
JOIN Fines f ON b.borrowing_id = f.borrowing_id
WHERE f.paid = FALSE
GROUP BY m.name
ORDER BY total_fines DESC;

-- 5. Books with All Copies Borrowed
SELECT title, available_copies FROM Books WHERE available_copies = 0;