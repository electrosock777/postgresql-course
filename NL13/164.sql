SELECT cname AS "Names" FROM customers UNION (SELECT ename FROM employees);


-- SELECT
--     IF customers.cid IS NOT NULL THEN cname ELSE ename
--     FROM customers, employees;