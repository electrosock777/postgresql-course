SELECT ename, dept
    FROM employees LEFT JOIN department USING (eid);


SELECT
    ename,
    (SELECT dept FROM department WHERE department.eid = employees.eid)
    FROM employees;