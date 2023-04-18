SELECT cname, COUNT(rid) AS "Movies Rented"
    FROM customers
    LEFT JOIN rentals USING(cid)
    GROUP BY cname
    ORDER BY "Movies Rented" DESC;


SELECT cname, COUNT(rid) AS "Movies Rented"
    FROM customers
    LEFT JOIN rentals USING(cid)
    WHERE cname ILIKE '%e%'
    GROUP BY cname
    ORDER BY "Movies Rented" DESC;