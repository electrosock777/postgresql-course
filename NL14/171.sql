SELECT pfirstname, plastname, "List Count"
FROM people
LEFT JOIN (
    SELECT COUNT(*) AS "List Count", lists.pid
    FROM lists
    GROUP BY lists.pid) AS subtable
ON (people.pid = subtable.pid)
ORDER BY "List Count" DESC;


SELECT
    pfirstname,
    plastname,
    (SELECT COUNT(*) FROM lists WHERE lists.pid = people.pid) AS amt
FROM people
ORDER BY amt DESC;