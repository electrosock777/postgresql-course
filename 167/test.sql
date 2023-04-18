SELECT DISTINCT pcity, COUNT(pcity) AS "Count"
    FROM people
    GROUP BY pcity
    ORDER BY "Count" DESC
    LIMIT 10;


SELECT COUNT(pcity)
    FROM people
    GROUP BY pcity;