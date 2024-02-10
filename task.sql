-- Retrieve all books and their authors
SELECT b.title, a.name AS author
FROM Books b
JOIN Authors a ON b.author_id = a.author_id;

-- Find books published by a specific publisher
SELECT title
FROM Books
WHERE publisher_id = (SELECT publisher_id FROM Publishers WHERE name = 'Publisher Name');

-- Find all books in a specific genre
SELECT b.title, g.name AS genre
FROM Books b
JOIN BookGenres bg ON b.book_id = bg.book_id
JOIN Genres g ON bg.genre_id = g.genre_id
WHERE g.name = 'Fantasy';


-- selects
-- Retrieve all books and their authors
SELECT b.title, a.name AS author
FROM Books b
JOIN Authors a ON b.author_id = a.author_id;

-- Find books published by a specific publisher
SELECT title
FROM Books
WHERE publisher_id = (SELECT publisher_id FROM Publishers WHERE name = 'Publisher Name');

-- Find all books in a specific genre
SELECT b.title, g.name AS genre
FROM Books b
JOIN BookGenres bg ON b.book_id = bg.book_id
JOIN Genres g ON bg.genre_id = g.genre_id
WHERE g.name = 'Fantasy';


-- joins
-- Inner Join: Retrieve books along with their authors
SELECT b.title, a.name AS author
FROM Books b
JOIN Authors a ON b.author_id = a.author_id;

-- Left Join: Retrieve all authors and their books (including authors with no books)
SELECT a.name AS author, b.title AS book
FROM Authors a
LEFT JOIN Books b ON a.author_id = b.author_id;

-- Self Join: Find authors who have co-authored books
SELECT a1.name AS author1, a2.name AS author2, b.title AS book
FROM Books b
JOIN Authors a1 ON b.author_id = a1.author_id
JOIN Authors a2 ON b.co_author_id = a2.author_id;
