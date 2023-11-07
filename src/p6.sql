--Problem 6:
SELECT *
FROM employees
WHERE salary > 50000
GROUP BY id name, position, department;