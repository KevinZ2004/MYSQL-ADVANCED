1. 

SELECT races.name AS race, circuits.name AS circuit FROM races , circuits WHERE races.circuitId = circuits.circuitId AND races.year = 2018

2. 

SELECT races.name AS name, drivers.surname, driver_standing.points
FROM races
LEFT JOIN driver_standing ON races.raceId = driver_standing.raceId
LEFT JOIN drivers ON driver_standing.driverId = drivers.driverId
WHERE races.year = 2017
AND driver_standing.points = 10

3. 

SELECT drivers.forename, drivers.surname, pitstops.duration
FROM drivers
LEFT JOIN pitstops ON drivers.driverId = pitstops.driverId
WHERE pitstops.duration < 25

4. 

SELECT constructors.name AS constructor, races.name
FROM constructors
LEFT JOIN constructor_standing ON constructors.constructorId = constructor_standing.constructorId
LEFT JOIN races ON constructor_standing.raceId = races.raceId
WHERE constructors.name = 'Mclaren'
AND races.year = 2010

5.  

SELECT circuits.name AS circuit, circuits.country, races.name AS GrandPrix, drivers.surname
FROM circuits, races, drivers, driver_standing
WHERE circuits.circuitId = races.circuitId
and races.raceId = driver_standing.raceId
AND driver_standing.driverId = drivers.driverId
AND races.year = '1950'
AND drivers.surname LIKE 'F%'
