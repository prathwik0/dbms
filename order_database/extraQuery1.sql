/* 
 * Retrieve customer details along with count of orders & total 
 * purchase amount for their orders, only if total purchase
 * amount is > 2000
 */
SELECT c.customer_id,
    c.cust_name,
    c.city,
    c.grade,
    COUNT(*) no_of_orders,
    sum(purchase_amt) total_purchase_amt
FROM customer c,
    orders o
WHERE c.customer_id = o.customer_id
GROUP BY c.customer_id,
    c.cust_name,
    c.grade,
    c.city
HAVING sum(purchase_amt) > 2000;
