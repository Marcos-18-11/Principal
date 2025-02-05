SELECT Name, LifeExpectancy
FROM country
WHERE LifeExpectancy < (SELECT AVG(LifeExpectancy) FROM country);