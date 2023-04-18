SELECT pfirstname, plastname, COUNT(liid) AS "# of items"
    FROM listitems JOIN lists USING (lid) RIGHT JOIN people USING(pid)
    GROUP BY pfirstname, plastname
    ORDER BY "# of items" DESC;