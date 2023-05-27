/*Retrieve the details of publisher 
 who published more than 2 books.*/
SELECT publisher_name
FROM book
GROUP BY publisher_name
HAVING COUNT(book_id) > 2;