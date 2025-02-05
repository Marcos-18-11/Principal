SELECT Continent, COUNT(*) AS number_of_countries
FROM country
GROUP BY Continent
ORDER BY number_of_countries DESC
LIMIT 1;