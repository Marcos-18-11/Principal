SELECT 
    c.Name AS Country,
    cl.Language AS Language
FROM
    Country c
JOIN
    CountryLanguage cl ON c.Code = cl.CountryCode
ORDER BY
    c.Name, cl.Language;