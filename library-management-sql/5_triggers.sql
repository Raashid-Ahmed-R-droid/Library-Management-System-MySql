-- 5_triggers.sql: Triggers for Data Integrity

USE library_db;

-- Trigger 1: Fine Calculation (set fine value before update)
DELIMITER $$
CREATE TRIGGER trg_set_fine
BEFORE UPDATE ON Borrowings
FOR EACH ROW
BEGIN
    IF NEW.return_date IS NOT NULL AND NEW.return_date > NEW.due_date THEN
        SET NEW.fine = DATEDIFF(NEW.return_date, NEW.due_date) * 5.00;
    END IF;
END $$
DELIMITER ;

-- Trigger 2: Fine Record (insert into Fines table after update)
DELIMITER $$
CREATE TRIGGER trg_insert_fine
AFTER UPDATE ON Borrowings
FOR EACH ROW
BEGIN
    IF NEW.return_date IS NOT NULL 
       AND NEW.return_date > NEW.due_date 
       AND NEW.fine IS NOT NULL 
       AND NEW.fine > 0 THEN
        INSERT INTO Fines (borrowing_id, amount)
        VALUES (NEW.borrowing_id, NEW.fine);
    END IF;
END $$
DELIMITER ;

-- Trigger 3: Prevent Negative Available Copies
DELIMITER $$
CREATE TRIGGER trg_check_available_copies
BEFORE UPDATE ON Books
FOR EACH ROW
BEGIN
    IF NEW.available_copies < 0 THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Available copies cannot be negative!';
    END IF;
END $$
DELIMITER ;