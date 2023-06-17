/* 
 * Find the name and numbers of all salesman who had 
 * more than one customer. 
 */
SELECT s.salesman_id,
    s.name
FROM salesman s,
    orders o
WHERE s.salesman_id = o.salesman_id
GROUP BY s.salesman_id,
    s.name
HAVING COUNT(DISTINCT customer_id) > 1;