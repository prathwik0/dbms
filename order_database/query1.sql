/* Count the customers with grades above King's Landing average. */
SELECT COUNT(customer_id)
FROM customer c
WHERE grade > (
        SELECT avg(grade)
        FROM customer
        WHERE city = "King's Landing"
    );