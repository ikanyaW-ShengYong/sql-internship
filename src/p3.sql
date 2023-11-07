--Problem 3:
SELECT customer_id, order_id, SUM(quantity), AVG(quantity)
FROM sales
GROUP BY customer_id, order_id, quantity
ORDER BY SUM(quantity) DESC;