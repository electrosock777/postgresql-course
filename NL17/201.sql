SELECT pid, pfirstname, plastname, COUNT(liid)
    FROM people NATURAL LEFT JOIN lists NATURAL LEFT JOIN listitems
    GROUP BY pid
    HAVING COUNT(liid) <= 4
    ORDER BY count DESC;


DELETE FROM people
    WHERE (SELECT COUNT(liid) FROM listitems NATURAL RIGHT JOIN lists WHERE people.pid = lists.pid) <= 4;