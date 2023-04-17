SELECT ename, dept
    FROM employees JOIN department ON (employees.eid = department.eid)
    WHERE dept = 'Sales'; 


SELECT
    (SELECT ename FROM employees WHERE employees.eid = department.eid),
    dept
    FROM department
    WHERE dept = 'Sales';