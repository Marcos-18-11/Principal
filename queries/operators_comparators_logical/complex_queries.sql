select Name as country, population, Region
from country
where population > 1000000
or Continent = 'Europe';