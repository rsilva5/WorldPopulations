-- What years are covered by the dataset? 
SELECT DISTINCT year from population_years;
-- The years covered by the dataset are 2000 to 2010. 

-- What is the largest population size for Gabon in this dataset?
SELECT MAX(population), year, country
FROM population_years
WHERE country = "Gabon";
-- The largest population size for Gabon is 1.54526 in the year 2010. 

-- What were the 10 lowest population countries in 2005?
SELECT *
FROM population_years 
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;
-- The 10 lowest population countries in 2005 were Miue, Islas Malvinas, Montserrat, Saint Pierre and Miquelon, Saint Helena, Nauru, Cook Islands, Turks and Caicos Islands, British Virgin Islands, and Gibraltar 

-- What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT DISTINCT country
FROM population_years 
WHERE population > 100
  AND year = 2010
ORDER BY country;
-- The distinct countries with a population of over 100 million in the year 2010 are Bangladesh, Brazil, China, India, Indonesia, Japan, Mexico, Nigeria, Pakistan, Russia, USA 

-- How many countries in this dataset have the word “Islands” in their name?
-- Incorrect Code
SELECT COUNT(country)
FROM population_years 
WHERE country LIKE '%Islands%';
 -- Correct Code 
SELECT DISTINCT country 
FROM population_years
WHERE country like "%islands%";
--  9 countries in this dataset have the word "Islands" in their name 

-- .What is the difference in population between 2000 and 2010 in Indonesia?
SELECT SUM(population), year
FROM population_years 
WHERE country = 'Indonesia' 
  AND year = 2000 OR year = 2010
GROUP BY year;

SELECT(6843.19294 - 214.67661)
-- The difference in population between 2000 and 2010 in Indonesia is approximately 6628.52 million


