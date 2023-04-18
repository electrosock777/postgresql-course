SELECT pfirstname, plastname, "Item Count"
FROM
    people
    JOIN (SELECT COUNT(*) AS "Item Count", lists.pid AS "LPID" FROM listitems
        JOIN lists ON (listitems.lid = lists.lid)
        GROUP BY lists.pid) subtable
    ON ("LPID" = people.pid)
WHERE "Item Count" > 1
ORDER BY "Item Count" DESC
LIMIT 10;


-- SELECT
--     pfirstname,
--     plastname,
--     (SELECT COUNT(*) FROM listitems WHERE listitems.lid = lists.lid) AS "No items"
-- FROM people JOIN lists USING (pid)
-- WHERE (SELECT COUNT(*) FROM listitems WHERE listitems.lid = lists.lid) > 1
-- ORDER BY "No items" DESC;


SELECT pfirstname, plastname, people.pid, lists.pid, lists.lid, lname, items.iid, iname
FROM people
    LEFT JOIN lists ON (people.pid = lists.pid)
    LEFT JOIN listitems ON (lists.lid = listitems.lid)
    LEFT JOIN items ON (listitems.iid = items.iid)
WHERE pfirstname = 'Mdojlixyqms' AND plastname = 'Stozwocmidwu'
ORDER BY lid;


SELECT
    pfirstname,
    plastname,
    (SELECT COUNT(*) FROM listitems WHERE listitems.lid = lists.lid) AS "No items"
FROM people JOIN lists USING (pid)
WHERE pfirstname = 'Mdojlixyqms'
ORDER BY "No items" DESC;


SELECT
    pfirstname,
    plastname,
    (SELECT COUNT(*) FROM listitems JOIN lists USING (lid) WHERE lists.pid = people.pid) AS "No items"
FROM people
WHERE (SELECT COUNT(*) FROM listitems JOIN lists USING (lid) WHERE lists.pid = people.pid) > 1
ORDER BY "No items" DESC
LIMIT 10;