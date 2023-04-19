DELETE FROM people
    WHERE (SELECT COUNT(lists.pid) FROM lists WHERE people.pid = lists.pid) <= 2
    RETURNING *;


-- SELECT pid, pfirstname, plastname, COUNT(lid)
--     FROM people NATURAL LEFT JOIN lists
--     GROUP BY pid
--     ORDER BY count DESC;