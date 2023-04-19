SELECT * FROM customers;

UPDATE customers
    SET cname = replace(cname, '+HERO', '')
    FROM rentals NATURAL JOIN movies
    WHERE customers.cid = rentals.cid AND mname = 'The Lives of Others';

SELECT * FROM customers;