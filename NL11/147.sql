SELECT ename, dept
    FROM employees JOIN department ON (employees.eid = department.eid)
    WHERE dept = 'Sales'; 