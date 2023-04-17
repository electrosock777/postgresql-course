SELECT mname, rid, cname
FROM customers NATURAL JOIN rentals NATURAL RIGHT JOIN movies;

SELECT mname, rid, cname
FROM movies NATURAL LEFT JOIN (rentals NATURAL JOIN customers);