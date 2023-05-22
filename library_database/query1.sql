/* Retrieve details of all books in the library ->  
 id, title, name of publisher, authors, 
 number of copies in each branch, etc. */
SELECT b.book_id,
    b.title,
    b.publisher_name,
    ba.author_name,
    bc.branch_id,
    bc.no_of_copies
FROM book b,
    book_author ba,
    book_copies bc
WHERE b.book_id = bc.book_id
    AND b.book_id = ba.book_id;