SELECT pfirstname, plastname, ppoints, pstate
FROM people
WHERE ppoints >= 9500
    OR pstate = 'NY';