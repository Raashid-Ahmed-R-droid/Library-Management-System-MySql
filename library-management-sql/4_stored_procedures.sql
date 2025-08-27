-- 4_stored_procedures.sql: Stored Procedures

USE library_db;

-- Procedure: Borrow a Book
DELIMITER $$
CREATE PROCEDURE borrow_book(
    IN p_member_id INT,
    IN p_book_id INT,
    IN p_borrow_date DATE,
    IN p_due_date DATE
)
BEGIN
    DECLARE v_available INT;
    SELECT available_copies INTO v_available FROM Books WHERE book_id = p_book_id;
    IF v_available > 0 THEN
        INSERT INTO Borrowings (member_id, book_id, borrow_date, due_date)
        VALUES (p_member_id, p_book_id, p_borrow_date, p_due_date);
        UPDATE Books SET available_copies = available_copies - 1 WHERE book_id = p_book_id;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No copies available to borrow.';
    END IF;
END $$
DELIMITER ;

-- Procedure: Return a Book
DELIMITER $$
CREATE PROCEDURE return_book(
    IN p_borrowing_id INT,
    IN p_return_date DATE
)
BEGIN
    DECLARE v_book_id INT;
    UPDATE Borrowings
        SET return_date = p_return_date
    WHERE borrowing_id = p_borrowing_id AND return_date IS NULL;

    SELECT book_id INTO v_book_id FROM Borrowings WHERE borrowing_id = p_borrowing_id;
    UPDATE Books SET available_copies = available_copies + 1 WHERE book_id = v_book_id;
END $$
DELIMITER ;