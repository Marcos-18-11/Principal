SELECT
    Region,
    SUM(Population) AS TotalPopulation
FROM
    Country
GROUP BY
    Region;