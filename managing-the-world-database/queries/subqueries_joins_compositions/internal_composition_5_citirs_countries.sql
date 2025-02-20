SELECT countryCode
from city
where population > 1000000
group by CountryCode
having count(*) > 5;
