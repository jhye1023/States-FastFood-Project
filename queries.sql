--Create tables for raw data to be loaded into food_test_db
CREATE TABLE restaurant (
id TEXT PRIMARY KEY,
city TEXT,
name TEXT,
province TEXT
);

CREATE TABLE state_population (
id INT PRIMARY KEY,
state_name TEXT,
state_abbr TEXT,
population INT
);


--aggregate across states to get count of restaurants
SELECT 
	province,
	count(name) restaurant_count
FROM restaurant
GROUP BY province
ORDER BY count(name) DESC;