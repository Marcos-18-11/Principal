SELECT countryCode, COUNT(*) AS city_count
FROM city
GROUP BY countryCode
ORDER BY city_count DESC;