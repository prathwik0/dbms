/*Get the particulars of book with more than 3 authors.*/
SELECT b.book_id
FROM book b,
    book_author ba
WHERE b.book_id = ba.book_id
GROUP BY b.book_id
HAVING COUNT(ba.author_name) > 3;
