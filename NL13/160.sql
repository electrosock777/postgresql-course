SELECT cname, mname, rid
    FROM customers NATURAL JOIN rentals NATURAL JOIN movies
    LIMIT 10;


SELECT
    (SELECT cname FROM customers WHERE rentals.cid = customers.cid),
    (SELECT mname FROM movies WHERE rentals.mid = movies.mid),
    rid
    FROM rentals
    LIMIT 10;