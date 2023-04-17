SELECT pfirstname, plastname, pdob, AGE(pdob) AS "Age"
FROM people
WHERE AGE(pdob) > '10y'
ORDER BY "Age";