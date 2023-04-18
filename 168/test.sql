SELECT customers.cid, cname, COUNT(rentals.cid)
    FROM customers, rentals
    WHERE customers.cid = rentals.cid
    GROUP BY customers.cid
    ORDER BY customers.cid;


SELECT customers.cid, cname, count(rentals.cid) AS "Count"
    FROM customers NATURAL LEFT JOIN rentals
    GROUP BY customers.cid
    ORDER BY "Count" DESC, customers.cid;