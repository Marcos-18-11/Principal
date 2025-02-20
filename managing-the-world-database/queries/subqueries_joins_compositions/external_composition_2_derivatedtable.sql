SELECT c.Name AS CityName
FROM city c
JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode
WHERE cl.Language <> 'English' AND cl.IsOfficial = 'T';
SELECT c.Name AS CountryName, TotalPopulation
FROM country c
JOIN (
    SELECT CountryCode, SUM(Population) AS TotalPopulation
    FROM city
    GROUP BY CountryCode
) AS city_population ON c.Code = city_population.CountryCode;
