SELECT pfirstname, plastname, pstate, pdob
FROM people
WHERE pfirstname || plastname LIKE '%e%'
    AND pstate = 'CA'
    AND pdob > '1999-12-31';


-- SELECT pfirstname, plastname, plastvisit
-- FROM people
-- WHERE pfirstname || plastname LIKE '%e%'
--     AND pstate = 'CA'
--     AND plastvisit BETWEEN (CAST('now' AS TIMESTAMP) - CAST('4y 2w' AS INTERVAL)) AND CAST('now' AS TIMESTAMP);