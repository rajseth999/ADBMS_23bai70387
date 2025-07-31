USE DB_DEMO 
CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Book (
BookID INT PRIMARY KEY,
Title VARCHAR(100),
AuthorID INT,
FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

INSERT INTO Author (AuthorID, AuthorName, Country) VALUES
(1, 'J.K. Rowling', 'United Kingdom'),
(2, 'George R.R. Martin', 'United States'),
(3, 'Haruki Murakami', 'Japan');

INSERT INTO Book (BookID, Title, AuthorID) VALUES
(101, 'Harry Potter and the Sorcerer''s Stone', 1),
(102, 'A Game of Thrones', 2),
(103, 'Norwegian Wood', 3);

SELECT
Book.Title AS BookTitle,
Author.AuthorName,
Author.Country
FROM
Book
INNER JOIN
Author ON Book.AuthorID = Author.AuthorID;
