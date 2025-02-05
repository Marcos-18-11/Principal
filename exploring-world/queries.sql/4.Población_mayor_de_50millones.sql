SELECT 
    Name AS Country,
    Population
FROM
    Country
WHERE
    Population > 50000000
ORDER BY
    Population DESC;