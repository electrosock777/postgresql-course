SELECT pfirstname, plastname, CASE WHEN (ppoints > 5000) THEN 'yes' ELSE 'no' END AS "Has more than 5000 points?"
    FROM people;