SELECT cname, rid, mname
    FROM customers NATURAL LEFT JOIN rentals NATURAL LEFT JOIN movies;


SELECT
    cname,
    (SELECT rid FROM rentals WHERE rentals.cid = customers.cid LIMIT 1),
    (SELECT mname FROM movies
        WHERE (SELECT (rentals.mid = movies.mid) FROM rentals WHERE rentals.cid = customers.cid LIMIT 1) LIMIT 1)
    FROM customers;