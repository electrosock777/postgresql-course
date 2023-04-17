SELECT people.pfirstname, people.plastname, lists.lname, items.iname
FROM people
    LEFT JOIN lists ON (people.pid = lists.pid)
    LEFT JOIN listitems ON (lists.lid = listitems.lid)
    LEFT JOIN items ON (listitems.iid = items.iid)
LIMIT 10;


-- Just... no.
-- SELECT
--     pfirstname,
--     plastname,
--     (SELECT lname FROM lists WHERE lists.pid = people.pid LIMIT 1),
--     (SELECT iname FROM items WHERE 
--         (SELECT
--             (items.iid = (SELECT
--                 listitems.iid FROM listitems WHERE (SELECT
--                     (listitems.lid = (SELECT
--                         lists.lid FROM lists WHERE lists.pid = people.pid
--                         LIMIT 1))
--                     LIMIT 1)
--                 LIMIT 1))
--             FROM items
--             WHERE
--             (items.iid = (SELECT
--                 listitems.iid FROM listitems WHERE (SELECT
--                     (listitems.lid = (SELECT
--                         lists.lid FROM lists WHERE lists.pid = people.pid
--                         LIMIT 1))
--                     LIMIT 1)
--                 LIMIT 1))
--             LIMIT 1)
--         LIMIT 1)
--     FROM people
--     LIMIT 10;