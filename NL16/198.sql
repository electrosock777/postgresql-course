-- SELECT pid, pfirstname, plastname, ppoints, lid
--     FROM people NATURAL LEFT JOIN lists
--     WHERE (SELECT COUNT(lists.pid) FROM lists WHERE people.pid = lists.pid) > 2
--     GROUP BY pid, lid
--     ORDER BY pid;

SELECT pid, pfirstname, plastname, ppoints, COUNT(lid)
    FROM people NATURAL LEFT JOIN lists
    WHERE (SELECT COUNT(lists.pid) FROM lists WHERE people.pid = lists.pid) > 2
    GROUP BY pid
    ORDER BY pid;


UPDATE people
    SET ppoints = ppoints + 1000
    WHERE (SELECT COUNT(lists.pid) FROM lists WHERE people.pid = lists.pid) > 2
    RETURNING *;


-- SELECT pid, pfirstname, plastname, ppoints, lid
--     FROM people NATURAL LEFT JOIN lists
--     WHERE (SELECT COUNT(lists.pid) FROM lists WHERE people.pid = lists.pid) > 2
--     GROUP BY pid, lid
--     ORDER BY pid;

SELECT pid, pfirstname, plastname, ppoints, COUNT(lid)
    FROM people NATURAL LEFT JOIN lists
    WHERE (SELECT COUNT(lists.pid) FROM lists WHERE people.pid = lists.pid) > 2
    GROUP BY pid
    ORDER BY pid;