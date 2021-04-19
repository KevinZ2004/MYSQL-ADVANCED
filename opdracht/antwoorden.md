1. 

SELECT races.name AS race, circuits.name AS circuit FROM races , circuits WHERE races.circuitId = circuits.circuitId AND races.year = 2018

2. 

SELECT races.name, drivers.surname, driver_standing.points
FROM races, drivers, driver_standing
WHERE races.raceId = driver_standing.raceId
AND drivers.driverId = driver_standing.driverId
and driver_standing.points = 10
AND races.year = '2017'

3. 

SELECT drivers.forename, drivers.surname, pitstops.duration
FROM drivers, pitstops
WHERE drivers.driverId = pitstops.driverId
AND pitstops.duration < '25'

4. 

SELECT constructors.name AS constructor, races.name
FROM constructors, constructor_standing, races
WHERE constructors.constructorId = constructor_standing.constructorId
AND constructor_standing.raceId = races.raceId
AND constructors.name = 'Mclaren'
AND races.year = '2010'

5.  

SELECT circuits.name AS circuit, circuits.country, races.name AS GrandPrix, drivers.surname
FROM circuits, races, drivers, driver_standing
WHERE circuits.circuitId = races.circuitId
and races.raceId = driver_standing.raceId
AND driver_standing.driverId = drivers.driverId
AND races.year = '1950'
AND drivers.surname LIKE 'F%'
