select name, population
from country
where population between 1000000 and 10000000
and Continent != 'Asia';