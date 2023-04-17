SELECT ename, dept
    FROM employees RIGHT JOIN department USING (eid);


SELECT
    (SELECT ename FROM employees WHERE employees.eid = department.eid),
    dept
    FROM department;