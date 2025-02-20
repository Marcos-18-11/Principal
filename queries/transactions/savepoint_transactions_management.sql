BEGIN;

INSERT INTO city (name, countrycode, population) 
VALUES ('NewCity3', 1, 30000);

SAVEPOINT before_population_update;

UPDATE country
SET population = population + 200000
WHERE country_id = 1;

UPDATE country
SET population = population + 'invalid_data'  -- This will fail
WHERE country_id = 1;

ROLLBACK TO SAVEPOINT before_population_update;


SELECT * FROM city WHERE name = 'NewCity3';
SELECT * FROM country WHERE countrycode = 1;

COMMIT;