SELECT cname, rid, mname
    FROM customers NATURAL LEFT JOIN rentals NATURAL LEFT JOIN movies;