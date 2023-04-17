SELECT pfirstname, plastname
FROM people
LIMIT 10;


SELECT pfirstname, plastname, lname
FROM people NATURAL LEFT JOIN lists
LIMIT 10;

SELECT pfirstname, plastname, lname, iname
FROM people NATURAL LEFT JOIN lists NATURAL LEFT JOIN listitems NATURAL JOIN items
LIMIT 10;