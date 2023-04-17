SELECT ename, dept
    FROM employees LEFT JOIN department USING (eid);