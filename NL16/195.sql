-- UPDATE people
--     SET ppoints = ppoints + 2
--     WHERE pid =  134
--     RETURNING *;


UPDATE people
    SET (pfirstname, plastname) = ('James', 'Bond')
    WHERE ppoints = (SELECT MAX(ppoints) FROM people)
    RETURNING *;

-- UPDATE people
--     SET (pfirstname, plastname) = ('James', 'Bond')
--     WHERE pid = (SELECT pid FROM people ORDER BY ppoints DESC LIMIT 1)
--     RETURNING *;

SELECT pid, pfirstname, plastname, ppoints
    FROM people
    ORDER BY ppoints DESC;