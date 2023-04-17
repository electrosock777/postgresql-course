SELECT cname, mname, rid
    FROM customers NATURAL JOIN rentals NATURAL JOIN movies
    LIMIT 10;