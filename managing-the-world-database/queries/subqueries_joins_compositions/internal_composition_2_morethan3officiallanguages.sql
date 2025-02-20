SELECT CountryCode
FROM countrylanguage
WHERE IsOfficial = 'T'  -- Assuming 'T' represents true for official language
GROUP BY CountryCode
HAVING COUNT(*) > 3;