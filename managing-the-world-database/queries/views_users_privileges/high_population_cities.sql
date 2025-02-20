CREATE VIEW high_population_cities AS
SELECT name, countrycode, population
FROM city
WHERE population > 1000000;