/*
 * Retrieve salesman details along with count of orders, total 
 * purchase amount of the orders assigned to him and commission 
 * earned by him.
 */
SELECT s.salesman_id,
    s.name,
    s.city,
    s.commission,
    COUNT(*) no_of_orders,
    SUM(purchase_amt) total_purchase_amt,
    SUM(purchase_amt) * 0.01 * s.commission commission_earned
FROM salesman s,
    orders o
WHERE s.salesman_id = o.salesman_id
GROUP BY s.salesman_id,
    s.name,
    s.city,
    s.commission;
