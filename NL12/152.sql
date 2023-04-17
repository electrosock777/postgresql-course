SELECT cname, rid, mname
    FROM movies NATURAL JOIN rentals NATURAL RIGHT JOIN customers;