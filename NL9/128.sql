-- SELECT pfirstname, plastname, pstate, ppoints
-- FROM people
-- WHERE ppoints >= 7000
--     AND NOT (pstate = 'NY')
-- ORDER BY pstate;

SELECT pfirstname, plastname, pstate, ppoints
FROM people
WHERE ppoints >= 7000
    AND pstate <> 'NY'
ORDER BY pstate;