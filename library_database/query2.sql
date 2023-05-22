/*Get the particulars of borrowers who have borrowed more than 3 books, but from Jan 2017 to Jun 2017.*/
SELECT DISTINCT card_no
FROM book_lending b
WHERE (
        date_out BETWEEN '2017-01-01' AND '2017-07-30'
    )
GROUP BY card_no
HAVING COUNT(*) > 3;