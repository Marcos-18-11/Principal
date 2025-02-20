ALTER TABLE city ADD COLUMN is_populatin_large BOOLEAN;
update CITY
SET is_population_large = IF(population>1000000,TRUE,FALSE);
ALTER TABLE country ADD COLUMN region_code CHAR(3) DEFAULT 'NA';
DESCRIBE city;
DESCRIBE country;