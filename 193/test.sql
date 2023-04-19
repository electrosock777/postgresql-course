ALTER TABLE rentals
    DROP CONSTRAINT "rentals_cid_fkey",
    ADD FOREIGN KEY (cid) REFERENCES customers ON DELETE CASCADE;


SELECT * FROM customers;
SELECT * FROM rentals;
SELECT * FROM movies;


DELETE FROM customers
    USING rentals, movies
    WHERE customers.cid = rentals.cid
        AND rentals.mid = movies.mid
        AND movies.mname = 'The Lives of Others';

        
SELECT * FROM customers;
SELECT * FROM rentals;
SELECT * FROM movies;