SELECT 
    City.Name AS City,
    City.Population AS Population
FROM
    City
JOIN
    Country ON City.CountryCode = Country.Code
WHERE
    Country.Name = 'Germany'
ORDER BY
    City.Name;