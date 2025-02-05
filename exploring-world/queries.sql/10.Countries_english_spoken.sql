SELECT DISTINCT co.Name AS country_name
FROM country co
JOIN countrylanguage cl ON co.Code = cl.CountryCode
WHERE cl.Language = 'English' 
  AND cl.IsOfficial = 'F';