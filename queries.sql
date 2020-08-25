--Create tables for raw data to be loaded into restaurant_db
CREATE TABLE restaurant (
"ID" TEXT PRIMARY KEY,
"Categories" TEXT,
"City" TEXT,
"Restaurant_Name" TEXT,
"State" TEXT
);


CREATE TABLE state_population (
id INT PRIMARY KEY,
"State Abbreviation" TEXT,
"State Name" TEXT,
"Population" INT,
"Percent of Total Population" FLOAT
);


--aggregate across states to get count of restaurants
SELECT 
	"State",
	COUNT("Restaurant_Name") restaurant_count
FROM restaurant
GROUP BY "State"
ORDER BY COUNT("Restaurant_Name") DESC;


--aggregate across states to get count of restaurants joined with populations
SELECT 
	r."State",
	s."Population",
	COUNT(r."Restaurant_Name") restaurant_count	
FROM state_population s
JOIN restaurant r
	ON s."State Abbreviation" = r."State"
GROUP BY r."State", s."Population"
ORDER BY s."Population" DESC;


--number of restaurants in the top 15 most populous states
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

--top 15 states by restaurant count
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


