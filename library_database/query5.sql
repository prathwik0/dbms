/*Retrieve the details of publisher 
 who published more than 3 books.*/
SELECT p.name
FROM publisher p,
    book b
WHERE p.name = b.publisher_name
GROUP BY p.name
HAVING COUNT(book_id) > 3;
