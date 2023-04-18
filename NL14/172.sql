SELECT pfirstname, plastname, "Item Count"
FROM
    people
    JOIN (SELECT COUNT(*) AS "Item Count", lists.pid AS "LPID" FROM listitems
        JOIN lists ON (listitems.lid = lists.lid)
        GROUP BY lists.pid) subtable
    ON ("LPID" = people.pid)
WHERE "Item Count" IS NOT NULL
ORDER BY "Item Count" DESC;


-- SELECT
--     pfirstname,
--     plastname,
--     (SELECT COUNT(*) FROM listitems WHERE listitems.lid = lists.lid) AS "No items"
-- FROM people JOIN lists USING (pid)
-- WHERE (SELECT COUNT(*) FROM listitems WHERE listitems.lid = lists.lid) > 1
-- ORDER BY "No items" DESC;




SELECT pfirstname, plastname, lists.lid, lname, items.iid, iname
FROM people
    LEFT JOIN lists ON (people.pid = lists.pid)
    LEFT JOIN listitems ON (lists.lid = listitems.lid)
    LEFT JOIN items ON (listitems.iid = items.iid)
WHERE pfirstname = 'Ideipepzekir' AND plastname = 'Oqplaryguvws'
ORDER BY lid;


-- SELECT COUNT(*)
-- FROM people
--     LEFT JOIN lists ON (people.pid = lists.pid)
--     LEFT JOIN listitems ON (lists.lid = listitems.lid)
-- WHERE pfirstname = 'Ideipepzekir' AND plastname = 'Oqplaryguvws';


SELECT
    pfirstname,
    plastname,
    (SELECT COUNT(*) FROM listitems WHERE lists.lid = listitems.lid) AS "No items"
FROM people JOIN lists USING (pid)
ORDER BY "No items" DESC;