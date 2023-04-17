SELECT pfirstname, plastname
FROM people
LIMIT 10;


SELECT pfirstname, plastname, lname
FROM people LEFT JOIN lists ON (people.pid = lists.pid)
LIMIT 10;


SELECT people.pfirstname, people.plastname, lists.lname, items.iname
FROM people
    LEFT JOIN lists ON (people.pid = lists.pid)
    LEFT JOIN listitems ON (lists.lid = listitems.lid)
    LEFT JOIN items ON (listitems.iid = items.iid)
LIMIT 10;