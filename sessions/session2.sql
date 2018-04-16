USE SedcCode01

--CREATE TABLE Books (
--	ID INT,
--	Title NVARCHAR(100),
--	AuthorID INT
--)

sp_rename 'qwe', 'Nominations'

--alter table qwe
SELECT NEWID()



UPDATE Books
SET Title = 'Deception', AuthorID = 2
WHERE Title LIKE 'Deception%' AND AuthorID = 1

INSERT INTO Books(Title, AuthorID)
VALUES ('Origin 2', 5)

--DELETE 
--FROM Books



INSERT INTO BooksAuthors(BookID, AuthorID)
VALUES (1, 2),
(1, 3)

DELETE
FROM Books
WHERE ID = 3

ALTER TABLE BooksAuthors
ADD CONSTRAINT
UniqueAuthorBook UNIQUE NONCLUSTERED
(
    BookID,
    AuthorID
)

SELECT *
FROM Authors

SELECT Books.Title, Authors.Name 
FROM Books
join BooksAuthors on Books.ID = BooksAuthors.ID
join Authors on BooksAuthors.AuthorID = Authors.ID


SELECT * 
FROM BooksAuthors

SELECT b.Title as Book, a.Name as Author
FROM Authors as a
INNER JOIN BooksAuthors as ab ON a.Id = ab.AuthorID
INNER JOIN Books as b on b.ID = ab.BookID
