SELECT pfirstname, plastname, (SELECT COUNT(lid) FROM lists WHERE lists.pid = people.pid) AS "# of lists", COUNT(liid) AS "# of items"
    FROM listitems JOIN lists USING(lid) RIGHT JOIN people USING(pid)
    GROUP BY pid
    ORDER BY "# of items" DESC;