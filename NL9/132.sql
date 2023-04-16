-- SELECT pfirstname, plastname, pfavorites -> 'Desserts' -> 0
-- FROM people
-- WHERE pfavorites -> 'Desserts' ->> 0 ILIKE '%a%';


-- Worse version:
-- SELECT pfirstname, plastname, pfavorites
-- FROM people
-- WHERE pfavorites ->> 'Desserts' ILIKE '%a%,%,%,%';


--Even worse version:
-- SELECT pfirstname, plastname, CAST(pfavorites AS TEXT)
-- FROM people
-- WHERE CAST(pfavorites AS TEXT) ILIKE '{"Desserts": [%a%,%,%,%]%Destinations%';