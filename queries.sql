--DROP TABLE IF EXISTS restaurant;
--DROP TABLE IF EXISTS state_population;
--DROP TABLE IF EXISTS population;

--Create tables for raw data to be loaded into restaurant_db
--Restaurant table
CREATE TABLE restaurant (
"ID" TEXT PRIMARY KEY,
"Categories" TEXT,
"City" TEXT,
"Restaurant_Name" TEXT,
"State" TEXT
);

--State Population table
CREATE TABLE state_population (
id INT PRIMARY KEY,
"State Abbreviation" TEXT,
"State Name" TEXT,
"Population" INT,
"Percent of Total Population" FLOAT
);

--Aggregate across states to get count of restaurants
SELECT 
	"State",
	COUNT("Restaurant_Name") restaurant_count
FROM restaurant
GROUP BY "State"
ORDER BY COUNT("Restaurant_Name") DESC;

--Aggregate across states to get count of restaurants joined with populations
SELECT 
	r."State",
	s."Population",
	COUNT(r."Restaurant_Name") restaurant_count	
FROM state_population s
JOIN restaurant r
	ON s."State Abbreviation" = r."State"
GROUP BY r."State", s."Population"
ORDER BY s."Population" DESC;

--Number of restaurants in the top 15 most populous states
SELECT 
	r."State",
	s."Population",
	COUNT(r."Restaurant_Name") restaurant_count	
FROM state_population s
JOIN restaurant r
	ON s."State Abbreviation" = r."State"
GROUP BY r."State", s."Population"
ORDER BY s."Population" DESC 
LIMIT 15;

--Top 15 states by restaurant count
SELECT 
	r."State",
	s."Population",
	COUNT(r."Restaurant_Name") restaurant_count	
FROM state_population s
JOIN restaurant r
	ON s."State Abbreviation" = r."State"
GROUP BY r."State", s."Population"
ORDER BY restaurant_count DESC 
LIMIT 15;

--Ohio restaurants
SELECT s."State Name", r."Restaurant_Name", COUNT(r."Restaurant_Name") Restaurant_Name_Count FROM state_population s
JOIN restaurant r ON s."State Abbreviation" = r."State"
WHERE s."State Name" = 'Ohio'
GROUP BY r."Restaurant_Name", s."State Name"
ORDER BY Restaurant_Name_Count DESC LIMIT 10;

--California restaurants
SELECT s."State Name", r."Restaurant_Name", COUNT(r."Restaurant_Name") Restaurant_Name_Count FROM state_population s
JOIN restaurant r ON s."State Abbreviation" = r."State"
WHERE s."State Name" = 'California'
GROUP BY r."Restaurant_Name", s."State Name"
ORDER BY Restaurant_Name_Count DESC LIMIT 10;



