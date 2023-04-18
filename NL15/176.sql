SELECT cname, COUNT(rid)
    FROM customers
    LEFT JOIN rentals USING(cid)
    GROUP BY cname;