DROP TABLE IF EXISTS restaurant;
DROP TABLE IF EXISTS state_population;
DROP TABLE IF EXISTS population;

CREATE TABLE restaurant (
"ID" TEXT PRIMARY KEY,
"Categories" VARCHAR,
"City" VARCHAR,
"Restaurant_Name" VARCHAR,
"State" VARCHAR
);

CREATE TABLE state_population (
id INT PRIMARY KEY,
"State Abbreviation" VARCHAR,
"State Name" VARCHAR,
"Population" INT,
"Percent of Total Population" VARCHAR
);

SELECT * FROM restaurant;
SELECT * FROM state_population;

-- Todd - Top 15 states by restaurant count --- only showing 46 states???
SELECT r."State", s."Population", COUNT(r."Restaurant_Name") restaurant_count FROM state_population s
JOIN restaurant r ON s."State Abbreviation" = r."State"
GROUP BY r."State", s."Population" ORDER BY restaurant_count DESC LIMIT 15;

-- Todd - Number of restaurants in the top 15 most populous states
SELECT r."State", s."Population", COUNT(r."Restaurant_Name") restaurant_count FROM state_population s
JOIN restaurant r ON s."State Abbreviation" = r."State"
GROUP BY r."State", s."Population" ORDER BY restaurant_count DESC LIMIT 15;


-- Most fast food categories by state
SELECT s."State Name", r."Categories", COUNT(r."Categories") restaurant_categories FROM state_population s
JOIN restaurant r ON s."State Abbreviation" = r."State"
GROUP BY r."Categories", s."State Name" 
ORDER BY COUNT(r."Categories") DESC LIMIT 15;

--trying to show percent of total population and restaurant count.. not decending correctly???
SELECT r."State", s."Percent of Total Population", COUNT(r."Restaurant_Name") restaurant_count FROM state_population s
JOIN restaurant r ON s."State Abbreviation" = r."State"
GROUP BY s."Percent of Total Population", r."State" ORDER BY s."Percent of Total Population" DESC;

-- trying to group by state and restaurant name - why is this not grouping by state??
SELECT s."State Name", r."Restaurant_Name", COUNT(r."Restaurant_Name") Restaurant_Name_Count FROM state_population s
JOIN restaurant r ON s."State Abbreviation" = r."State"
GROUP BY r."Restaurant_Name", s."State Name"
ORDER BY Restaurant_Name_Count DESC;

-- maybe we could pick one state with the most restaurants?
SELECT s."State Name", r."Restaurant_Name", COUNT(r."Restaurant_Name") Restaurant_Name_Count FROM state_population s
JOIN restaurant r ON s."State Abbreviation" = r."State"
WHERE s."State Name" = 'Ohio'
GROUP BY r."Restaurant_Name", s."State Name"
ORDER BY Restaurant_Name_Count DESC;

