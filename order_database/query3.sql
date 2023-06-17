/*
 * List all the salesman and indicate those who have and don’t 
 * have customers in their cities (Use UNION operation.)
 */
SELECT s.salesman_id,
    s.name,
    'exist' AS 'same_city_customer(s)'
FROM salesman s,
    orders o,
    customer c
WHERE o.salesman_id = s.salesman_id
    AND o.customer_id = c.customer_id
    AND s.city = c.city
UNION
SELECT salesman_id,
    name,
    'do not exist' AS 'same_city_customer(s)'
FROM salesman
WHERE salesman_id NOT IN (
        SELECT DISTINCT s.salesman_id
        FROM salesman s,
            orders o,
            customer c
        WHERE o.salesman_id = s.salesman_id
            AND o.customer_id = c.customer_id
            AND s.city = c.city
    );

/* OR - Without Union clause */
/* This query can be simplified to show the number of orders from the same city */
SELECT s.salesman_id,
    s.name,
    CASE
        WHEN sum(
            CASE
                WHEN c.customer_id IS NULL THEN 0
                ELSE 1
            END
        ) > 0 THEN 'exist'
        ELSE 'do not exist'
    END AS same_city_customers
FROM salesman s
    JOIN orders o ON s.salesman_id = o.salesman_id
    LEFT JOIN customer c ON o.customer_id = c.customer_id
    AND s.city = c.city
GROUP BY s.salesman_id,
    s.name;

/* Or use the following to show the count of unique customers from the same city */
SELECT s.salesman_id,
    s.name,
    COUNT(DISTINCT c.customer_id) AS same_city_customers
FROM salesman s,
    orders o,
    customer c
WHERE o.salesman_id = s.salesman_id
    AND o.customer_id = c.customer_id
    AND s.city = c.city
GROUP BY s.salesman_id,
    s.name,
    s.city
UNION
SELECT salesman_id,
    name,
    0 AS same_city_customers
FROM salesman
WHERE salesman_id NOT IN (
        SELECT DISTINCT s.salesman_id
        FROM salesman s,
            orders o,
            customer c
        WHERE o.salesman_id = s.salesman_id
            AND o.customer_id = c.customer_id
            AND s.city = c.city
    )
ORDER BY same_city_customers DESC,
    name;