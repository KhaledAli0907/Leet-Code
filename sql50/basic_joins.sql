-- 1378. Replace Employee ID With The Unique Identifier
SELECT euni.unique_id, e.name 
FROM employees AS e
LEFT JOIN EmployeeUNI AS euni ON euni.id = e.id;

-- 1068. Product Sales Analysis I
SELECT p.product_name, s.year, s.price
 FROM product AS p
JOIN sales AS s ON p.product_id = s.product_id;

-- 1581. Customer Who Visited but Did Not Make Any Transactions
SELECT V.customer_id,
       COUNT(V.visit_id) AS count_no_trans
FROM Visits V
LEFT JOIN Transactions T ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id;


-- 197. Rising Temperature
SELECT w2.id FROM Weather AS w1
JOIN Weather AS w2
ON w2.temperature > w1.temperature
AND DATEDIFF(w2.recordDate, w1.recordDate) = 1;

-- 1661. Average Time of Process per Machine
SELECT a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
FROM activity AS a1
JOIN activity AS a2
ON a1.machine_id = a2.machine_id AND a1.process_id = a2.process_id
AND a1.activity_type="start" AND a2.activity_type = "end"
GROUP BY a1.machine_id

-- 577. Employee Bonus
SELECT e.name, b.bonus FROM employee e
LEFT JOIN bonus b ON e.empId = b.empId
WHERE IFNULL(bonus, 0) < 1000;
