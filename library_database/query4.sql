/*Create a view of all books and its number of copies 
 that are currently available in the Library.*/
CREATE VIEW available_copies AS (
	SELECT book_id,
		SUM(no_of_copies) - (
			SELECT COUNT(card_no)
			FROM book_lending
			WHERE bc.book_id = book_id
		) AS avail_copies
	FROM book_copies bc
	GROUP BY book_id
);