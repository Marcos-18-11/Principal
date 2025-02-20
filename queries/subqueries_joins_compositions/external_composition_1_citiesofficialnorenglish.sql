SELECT c.Name AS CityName
FROM city c
JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode
WHERE cl.Language <> 'English' AND cl.IsOfficial = 'T';