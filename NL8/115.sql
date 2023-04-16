SELECT pfavorites @> '{"Desserts": ["cake"]}' AS "Likes cake" FROM people;
-- SELECT pfavorites -> 'Desserts' @> '"cake"' AS "Likes cake" FROM people;