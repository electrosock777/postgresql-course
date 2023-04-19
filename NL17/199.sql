ALTER TABLE lists
    DROP CONSTRAINT "lists_pid_fkey",
    ADD FOREIGN KEY (pid) REFERENCES people ON DELETE CASCADE;

ALTER TABLE listitems
    DROP CONSTRAINT "listitems_lid_fkey",
    ADD FOREIGN KEY (lid) REFERENCES lists ON DELETE CASCADE;


SELECT pid, pfirstname, plastname, ppoints
    FROM people
    WHERE ppoints < ((SELECT MIN(ppoints) FROM people) + 1000)
    ORDER BY ppoints;


DELETE FROM people
    WHERE ppoints < ((SELECT MIN(ppoints) FROM people) + 1000)
    RETURNING *;