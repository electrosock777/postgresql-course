SELECT cname, count(rentals.cid) AS "Amt"
    FROM customers NATURAL JOIN rentals
    WHERE (SELECT COUNT(rentals.cid) FROM rentals WHERE rentals.cid = customers.cid) > 2
        AND rentals.cid = customers.cid
    GROUP BY customers.cid;


SELECT cname, "Amt"
    FROM customers
        JOIN (SELECT rentals.cid AS "rcid", COUNT(rentals.cid) AS "Amt" FROM rentals GROUP BY rentals.cid) "Rentals subtable"
            ON customers.cid = rcid
    WHERE "Amt" > 2;