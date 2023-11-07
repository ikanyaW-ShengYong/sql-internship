--Problem 5:
SELECT position, department, AVG(salary), MAX(salary), id
FROM employees
GROUP BY id, position, department
ORDER BY AVG(salary) DESC;