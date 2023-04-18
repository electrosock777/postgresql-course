SELECT pfirstname, plastname, COUNT(lid) AS "# of lists"
    FROM lists RIGHT JOIN people USING(pid)
    GROUP BY pfirstname, plastname;

    
SELECT pfirstname, plastname, COUNT(lid) AS "# of lists"
    FROM lists RIGHT JOIN people USING(pid)
    GROUP BY pfirstname, plastname
    ORDER BY "# of lists" DESC;