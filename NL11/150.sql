SELECT ename, dept
    FROM employees RIGHT JOIN department USING (eid);