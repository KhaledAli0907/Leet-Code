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
