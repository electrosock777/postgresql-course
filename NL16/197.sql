SELECT pid, pfirstname, plastname, ppoints FROM people ORDER BY ppoints DESC LIMIT 10;


UPDATE people
    SET plastname = plastname || '+HERO'
    WHERE ppoints > (SELECT AVG(ppoints) FROM people)
    RETURNING *;


SELECT pid, pfirstname, plastname, ppoints FROM people ORDER BY ppoints DESC LIMIT 10;