SELECT c.Name AS city_name, co.Name AS country_name, c.Population
FROM city c
JOIN country co ON c.CountryCode = co.Code
ORDER BY c.Population DESC
LIMIT 10;