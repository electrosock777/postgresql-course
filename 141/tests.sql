SELECT cname, rid, mname FROM customers JOIN rentals USING (cid) JOIN movies USING (mid);
-- SELECT * FROM customers, rentals, movies WHERE customers.cid = rentals.cid AND rentals.mid = movies.mid;