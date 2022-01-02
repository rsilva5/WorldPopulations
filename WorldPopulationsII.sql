-- View data table 1
SELECT * 
FROM countries
LIMIT 5;

-- View data table 2
SELECT * 
FROM population_years
LIMIT 20;

-- How many entries in the countries table are from Africa 
SELECT COUNT(*) 
FROM countries 
WHERE continent = 'Africa';
-- There are 56 entries in the countries table that are from Africa

--What was the total population of the continent of Oceania in 2005?
SELECT SUM(population_years.population), countries.continent 
FROM population_years 
JOIN countries 
  ON population_years.country_id = countries.id
WHERE year = 2005
GROUP BY continent;
-- The population of the continent of Oceania in 2005 was 32.66417 million

-- What is the average population of countries in South America in 2003?
SELECT AVG(population), continent, year
FROM population_years 
JOIN countries 
  ON population_years.country_id = countries.id
WHERE continent = "South America"
  AND year = 2003;
-- The average population of countries in South America in 2003 was 25.8906514285714 million

--What country had the smallest population in 2007?
SELECT MIN(population), name
FROM population_years
JOIN countries 
  ON population_years.country_id = countries.id
WHERE year = 2007;
-- The country with the smallest population in 2007 was Niue. 

-- What is the average population of Poland during the time period covered by this dataset?
SELECT AVG(population), name 
FROM population_years 
JOIN countries 
  ON population_years.country_id = countries.id
WHERE name = "Poland";
-- The average population of Poland during the time period covered by this dataset was 38.5606790909091 million. 

-- How many countries have the word “The” in their name?
SELECT name 
FROM countries 
WHERE name LIKE '%The%';
-- 4 countries have the word "The" in their name

-- What was the total population of each continent in 2010?
SELECT SUM(population), continent, year
FROM population_years
JOIN countries 
  ON population_years.country_id = countries.id
WHERE year = 2010
GROUP BY continent; 

