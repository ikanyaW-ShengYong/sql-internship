--Problem 2:
SELECT customer_name, order_date, sales.quantity
FROM customer C JOIN orders O
ON C.customer_id = O.customer_id
JOIN sales S ON O.order_id. S.order_id
WHERE city = 'New York';