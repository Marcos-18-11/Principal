CREATE VIEW countries_with_languages AS
SELECT c.name AS country_name, cl.language
FROM country c
JOIN countrylanguage cl ON c.code = cl.countrycode
WHERE cl.language != 'English';
SELECT * FROM countries_with_languages;