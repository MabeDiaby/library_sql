-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books JOIN authors ON authors.id = books.author_id WHERE authors.name = 'George R. R. Martin';

-- you can use alias table names with SQL

SELECT * FROM books b JOIN authors a ON a.id = b.author_id WHERE a.name = 'George R. R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.

SELECT * FROM books b JOIN authors a ON a.id = b.author_id WHERE a.name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.
SELECT * FROM books b JOIN authors a ON a.id = b.author_id WHERE a.nationality = 'China' or a.nationality = 'United Kingdom';

SELECT * FROM books b JOIN authors a ON a.id = b.author_id WHERE a.nationality IN ('China','United Kingdom');

-- Find out how many books Albert Camus wrote.
SELECT COUNT (*) FROM books b JOIN authors a ON a.id = b.author_id WHERE a.name = 'Albert Camus';

-- Find out how many books were written by US authors.

SELECT COUNT (*) FROM books b JOIN authors a ON a.id = b.author_id WHERE a.nationality = 'United States of America';

-- Find all books written after 1930 by authors from Argentina.

SELECT * FROM books b JOIN authors a ON a.id = b.author_id WHERE a.nationality = 'Argentina' and publication_date > 1930;

-- Find all books written before 1980 by authors not from the US.

SELECT * FROM books b JOIN authors a ON a.id = b.author_id WHERE a.nationality != 'United States of America' and publication_date < 1980;

-- Find all authors whose names start with 'J'.

SELECT name FROM authors WHERE name LIKE and 'J%';

-- Find all books whose titles contain 'the'.

SELECT books FROM books WHERE title LIKE '%the %'

-- Find all authors who have written books with that start with the letter 'N'.

SELECT (name, title) FROM authors a JOIN books b ON a.id = b.author_id WHERE title LIKE = 'N%'