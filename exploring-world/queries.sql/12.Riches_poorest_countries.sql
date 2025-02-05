SELECT co.Continent, 
       MAX(co.GNP) AS richest_GNP, 
       (SELECT co2.Name 
        FROM country co2 
        WHERE co2.Continent = co.Continent 
        ORDER BY co2.GNP DESC LIMIT 1) AS richest_country,
       MIN(co.GNP) AS poorest_GNP, 
       (SELECT co2.Name 
        FROM country co2 
        WHERE co2.Continent = co.Continent 
        ORDER BY co2.GNP ASC LIMIT 1) AS poorest_country
FROM country co
GROUP BY co.Continent;