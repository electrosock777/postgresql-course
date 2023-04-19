SELECT pid, pfirstname, plastname, ppoints FROM people ORDER BY ppoints LIMIT 10;


UPDATE people
    SET ppoints = ppoints + 100
    WHERE ppoints < (SELECT AVG(ppoints) FROM people)
    RETURNING *;


SELECT pid, pfirstname, plastname, ppoints FROM people ORDER BY ppoints LIMIT 10;