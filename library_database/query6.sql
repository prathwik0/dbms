/*Retrieve the details of publisher 
 who has not published any books.*/
SELECT p.name
FROM publisher p
WHERE p.name NOT IN (
        SELECT DISTINCT publisher_name
        FROM book
    );
