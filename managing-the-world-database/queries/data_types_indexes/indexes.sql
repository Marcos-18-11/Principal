CREATE INDEX icx_city_name ON city(name);
EXPLAIN SELECT * FROM city WHERE name = 'Tokyo';
EXPLAIN SELECT * FROM city WHERE name = 'Tokyo';
