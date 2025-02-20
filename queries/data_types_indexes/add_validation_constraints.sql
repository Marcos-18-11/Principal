ALTER TABLE city ADD CONSTRAINT check_population CHECK(population >=0);
ALTER TABLE country ADD CONSTRAINT unique_code UNIQUE (code);