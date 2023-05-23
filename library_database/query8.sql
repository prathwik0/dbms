/*Get the particulars of Library branch 
 which has zero copies of book with id 112*/
SELECT lb.branch_id,
    lb.branch_name
FROM library_branch lb
WHERE lb.branch_id NOT IN (
        SELECT DISTINCT branch_id
        FROM book_copies
        WHERE book_id = '112'
    );
