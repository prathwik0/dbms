/*
 * Create a view that finds the salesman who has the customer with the highest 
 * order of a day.
 */
CREATE VIEW order_list AS
SELECT s.salesman_id,
    s.name,
    o.purchase_amt,
    o.ord_date
FROM salesman s,
    orders o
WHERE s.salesman_id = o.salesman_id;

CREATE VIEW highest_order AS
SELECT name,
    ord_date,
    purchase_amt amt
FROM order_list ol
WHERE purchase_amt = (
        SELECT max(purchase_amt)
        FROM order_list
        WHERE ol.ord_date = ord_date
    );

/* or */
CREATE VIEW highest_order AS
SELECT s.name,
    o.ord_date,
    o.purchase_amt amt
FROM salesman s,
    orders o
WHERE s.salesman_id = o.salesman_id
    AND purchase_amt = (
        SELECT max(purchase_amt)
        FROM orders
        WHERE o.ord_date = ord_date
    );