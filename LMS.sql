create database lms;
use lms;
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    CategoryID INT,
    Stock INT CHECK (Stock >= 0) DEFAULT 0,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    MemberType ENUM('Student', 'Staff') NOT NULL,
    Phone VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Position VARCHAR(255) NOT NULL,
    Phone VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE BorrowingRecords (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE NULL,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

show tables;

INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Fiction'), (2, 'Non-Fiction'), (3, 'Science'), (4, 'Mathematics'), (5, 'History'),
(6, 'Biographies'),
(7, 'Philosophy'),
(8, 'Technology'),
(9, 'Psychology'),
(10, 'Literature'),
(11, 'Business'),
(12, 'Art'),
(13, 'Politics'),
(14, 'Travel'),
(15, 'Cooking'),
(16, 'Religion'),
(17, 'Self-Help'),
(18, 'Health'),
(19, 'Education'),
(20, 'Sports');


INSERT INTO Books (BookID, Title, Author, CategoryID, Stock) VALUES
(1, 'Wings of Fire', 'A.P.J. Abdul Kalam', 2, 10),
(2, 'The Alchemist', 'Paulo Coelho', 1, 8),
(3, 'Sapiens', 'Yuval Noah Harari', 2, 12),
(4, 'Brief History of Time', 'Stephen Hawking', 3, 7),
(5, 'Ramayana', 'Valmiki', 16, 15),
(6, 'The Great Indian Novel', 'Shashi Tharoor', 1, 9),
(7, 'India After Gandhi', 'Ramachandra Guha', 5, 6),
(8, 'Think and Grow Rich', 'Napoleon Hill', 11, 14),
(9, 'The Art of War', 'Sun Tzu', 7, 10),
(10, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 11, 8),
(11, 'The Monk Who Sold His Ferrari', 'Robin Sharma', 17, 11),
(12, 'You Can Win', 'Shiv Khera', 17, 13),
(13, 'Cooking for Beginners', 'Tarla Dalal', 15, 5),
(14, 'The Blue Umbrella', 'Ruskin Bond', 10, 20),
(15, 'A Suitable Boy', 'Vikram Seth', 1, 7),
(16, 'Mahabharata', 'Vyasa', 16, 9),
(17, 'Panchatantra', 'Vishnu Sharma', 10, 8),
(18, 'A Journey to the Center of the Earth', 'Jules Verne', 14, 6),
(19, 'The Secret', 'Rhonda Byrne', 17, 18),
(20, 'Gitanjali', 'Rabindranath Tagore', 10, 10);


INSERT INTO Members (MemberID, Name, Email, MemberType, Phone) VALUES
(1, 'Aarav Gupta', 'aarav.gupta@example.com', 'Student', '9876543210'),
(2, 'Riya Sharma', 'riya.sharma@example.com', 'Student', '9876543211'),
(3, 'Vikram Singh', 'vikram.singh@example.com', 'Staff',
'9876543212'),
(4, 'Ananya Iyer', 'ananya.iyer@example.com', 'Student',
'9876543213'),
(5, 'Rahul Mehta', 'rahul.mehta@example.com', 'Staff', '9876543214'),
(6, 'Diya Patel', 'diya.patel@example.com', 'Student', '9876543215'),
(7, 'Arjun Nair', 'arjun.nair@example.com', 'Staff', '9876543216'),
(8, 'Neha Desai', 'neha.desai@example.com', 'Student',
'9876543217'),
(9, 'Rohan Joshi', 'rohan.joshi@example.com', 'Staff', '9876543218'),
(10, 'Meera Reddy', 'meera.reddy@example.com', 'Student',
'9876543219'),
(11, 'Ishaan Malhotra', 'ishaan.malhotra@example.com', 'Student',
'9876543220'),
(12, 'Tara Kapoor', 'tara.kapoor@example.com', 'Student',
'9876543221'),
(13, 'Aman Choudhary', 'aman.choudhary@example.com', 'Staff',
'9876543222'),
(14, 'Anushka Jain', 'anushka.jain@example.com', 'Student',
'9876543223'),
(15, 'Harsh Bansal', 'harsh.bansal@example.com', 'Staff',
'9876543224'),
(16, 'Priya Saxena', 'priya.saxena@example.com', 'Student',
'9876543225'),
(17, 'Karan Verma', 'karan.verma@example.com', 'Staff',
'9876543226'),
(18, 'Sneha Bhatt', 'sneha.bhatt@example.com', 'Student',
'9876543227'),
(19, 'Ravi Kumar', 'ravi.kumar@example.com', 'Staff', '9876543228'),
(20, 'Sanjana Deshmukh', 'sanjana.deshmukh@example.com',
'Student', '9876543229');

INSERT INTO Staff (StaffID, Name, Email, Position, Phone) VALUES
(1, 'Rajesh Kumar', 'rajesh.kumar@example.com', 'Librarian', '9876543230'),
(2, 'Sneha Reddy', 'sneha.reddy@example.com', 'Assistant Librarian',
'9876543231'),
(3, 'Amit Sharma', 'amit.sharma@example.com', 'Clerk',
'9876543232'),
(4, 'Pooja Iyer', 'pooja.iyer@example.com', 'Manager', '9876543233'),
(5, 'Rakesh Mehta', 'rakesh.mehta@example.com', 'Data Entry',
'9876543234'),
(6, 'Ishita Desai', 'ishita.desai@example.com', 'Assistant',
'9876543235'),
(7, 'Nikhil Joshi', 'nikhil.joshi@example.com', 'Supervisor',
'9876543236'),
(8, 'Rohit Kapoor', 'rohit.kapoor@example.com', 'Library Assistant',
'9876543237'),
(9, 'Sakshi Verma', 'sakshi.verma@example.com', 'Book Organizer',
'9876543238'),
(10, 'Anil Gupta', 'anil.gupta@example.com', 'Library Technician',
'9876543239'),
(11, 'Komal Bhatt', 'komal.bhatt@example.com', 'Assistant',
'9876543240'),
(12, 'Manoj Choudhary', 'manoj.choudhary@example.com', 'System
Administrator', '9876543241'),
(13, 'Divya Saxena', 'divya.saxena@example.com', 'Event Manager',
'9876543242'),
(14, 'Aakash Jain', 'aakash.jain@example.com', 'Research Assistant',
'9876543243'),
(15, 'Kavya Malhotra', 'kavya.malhotra@example.com', 'Library
Cataloger', '9876543244'),
(16, 'Uday Bansal', 'uday.bansal@example.com', 'Maintenance',
'9876543245'),
(17, 'Naina Bhatt', 'naina.bhatt@example.com', 'Clerk', '9876543246'),
(18, 'Mohit Kumar', 'mohit.kumar@example.com', 'Coordinator',
'9876543247'),
(19, 'Simran Kapoor', 'simran.kapoor@example.com', 'Supervisor',
'9876543248'),
(20, 'Aditya Desai', 'aditya.desai@example.com', 'Manager',
'9876543249');


INSERT INTO BorrowingRecords (BookID, MemberID, BorrowDate, ReturnDate) VALUES
(1, 1, '2024-12-01', '2024-12-15'),
(2, 2, '2024-12-02', '2024-12-16'),
(3, 3, '2024-12-03', '2024-12-17'),
(4, 4, '2024-12-04', '2024-12-18'),
(5, 5, '2024-12-05', '2024-12-19'),
(6, 6, '2024-12-06', '2024-12-20'),
(7, 7, '2024-12-07', '2024-12-21'),
(8, 8, '2024-12-08', '2024-12-22'),
(9, 9, '2024-12-09', '2024-12-23'),
(10, 10, '2024-12-10', '2024-12-24'),
(11, 11, '2024-12-11', '2024-12-25'),
(12, 12, '2024-12-12', '2024-12-26'),
(13, 13, '2024-12-13', '2024-12-27');

#Generate a report of most borrowed books

SELECT Books.Title, COUNT(BorrowingRecords.BookID) AS BorrowCount
FROM BorrowingRecords
JOIN Books ON BorrowingRecords.BookID = Books.BookID
GROUP BY Books.Title
ORDER BY BorrowCount DESC
LIMIT 5;


#Generate a report of overdue fines
SELECT Members.Name, Books.Title, 
DATEDIFF(CURDATE(), ReturnDate) AS OverdueDays, 
(DATEDIFF(CURDATE(), ReturnDate) * 5) AS FineAmount
FROM BorrowingRecords
JOIN Members ON BorrowingRecords.MemberID = Members.MemberID
JOIN Books ON BorrowingRecords.BookID = Books.BookID
WHERE ReturnDate < CURDATE();

#Create a View for simplified access to borrowing records

CREATE VIEW BorrowingDetails AS
SELECT Members.Name AS MemberName, Books.Title AS BookTitle, 
BorrowingRecords.BorrowDate, BorrowingRecords.ReturnDate
FROM BorrowingRecords
JOIN Members ON BorrowingRecords.MemberID = Members.MemberID
JOIN Books ON BorrowingRecords.BookID = Books.BookID;

select * from BorrowingDetails;

#Create a view that joins Books, Members, and Borrowing Records for easy reporting of book borrowings
CREATE VIEW BorrowingReport AS
SELECT 
    BorrowingRecords.RecordID,
    Members.Name AS MemberName,
    Members.Email AS MemberEmail,
    Books.Title AS BookTitle,
    Books.Author AS BookAuthor,
    BorrowingRecords.BorrowDate,
    BorrowingRecords.ReturnDate
FROM BorrowingRecords
JOIN Members ON BorrowingRecords.MemberID = Members.MemberID
JOIN Books ON BorrowingRecords.BookID = Books.BookID;

select * from BorrowingReport;

#ROUTINE TASK USING STORED PROCEDURE
#1.Stored Procedure to Add a New Book

DELIMITER //

CREATE PROCEDURE AddBook(
    IN b_Title VARCHAR(255),
    IN b_Author VARCHAR(255),
    IN b_CategoryID INT,
    IN b_Stock INT
)
BEGIN
    INSERT INTO Books (Title, Author, CategoryID, Stock) 
    VALUES (b_Title, b_Author, b_CategoryID, b_Stock);
END //

DELIMITER ;

#CALL AddBook('The Power of Habit', 'Charles Duhigg', 17, 5);

#2.Stored Procedure to Update a Member's Information
DELIMITER //

CREATE PROCEDURE UpdateMember(
    IN m_MemberID INT,
    IN m_Name VARCHAR(255),
    IN m_Email VARCHAR(255),
    IN m_MemberType VARCHAR(50),
    IN m_Phone VARCHAR(20)
)
BEGIN
    UPDATE Members 
    SET Name = m_Name, Email = m_Email, MemberType = m_MemberType, Phone = m_Phone
    WHERE MemberID = m_MemberID;
END //

DELIMITER ;

#CALL UpdateMember(2, 'Riya Sharma', 'riya.new@example.com', 'Student', '9876543211');

#3. Stored Procedure to Issue a Book (Borrowing a Book)

DELIMITER //

CREATE PROCEDURE IssueBook(
    IN p_BookID INT,
    IN p_MemberID INT,
    IN p_BorrowDate DATE,
    IN p_ReturnDate DATE
)
BEGIN
    DECLARE v_Stock INT;

    -- Check if book is available
    SELECT Stock INTO v_Stock FROM Books WHERE BookID = p_BookID;

    IF v_Stock > 0 THEN
        -- Insert into BorrowingRecords
        INSERT INTO BorrowingRecords (BookID, MemberID, BorrowDate, ReturnDate) 
        VALUES (p_BookID, p_MemberID, p_BorrowDate, p_ReturnDate);
        
        -- Decrease stock
        UPDATE Books SET Stock = Stock - 1 WHERE BookID = p_BookID;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Book is out of stock';
    END IF;
END //

DELIMITER ;

#CALL IssueBook(3, 5, '2025-02-20', '2025-03-05');

#4. Stored Procedure to Return a Book
DELIMITER //

CREATE PROCEDURE ReturnBook(
    IN p_RecordID INT
)
BEGIN
    DECLARE v_BookID INT;

    -- Get BookID from the borrowing record
    SELECT BookID INTO v_BookID FROM BorrowingRecords WHERE RecordID = p_RecordID;

    -- Update stock
    UPDATE Books SET Stock = Stock + 1 WHERE BookID = v_BookID;

    -- Remove borrowing record (optional: keep history instead)
    DELETE FROM BorrowingRecords WHERE RecordID = p_RecordID;
END //

DELIMITER ;

#CALL ReturnBook(2);









