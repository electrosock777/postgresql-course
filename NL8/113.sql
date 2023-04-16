SELECT pfavorites @> '{"Desserts":["cake"]}' AS "Contains cake" FROM people;
SELECT pfavorites -> 'Desserts' ? 'cake' AS "Contains cake" FROM people ORDER BY "Contains cake";