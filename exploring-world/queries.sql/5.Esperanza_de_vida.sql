SELECT
    Continent,
    AVG(LifeExpectancy) AS AvgLifeExpectancy
FROM
    Country
GROUP BY
    Continent;