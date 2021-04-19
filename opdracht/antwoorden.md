1. 

SELECT races.name AS race, circuits.name AS circuit
FROM races , circuits
WHERE races.circuitId = circuits.circuitId
AND races.year = (SELECT max(races2.year)
                  FROM races races2
                  WHERE races2.circuitId = races.circuitId)

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

4. SELECT ConstructorRef.name FROM constructors JOIN races ON year = year WHERE races = "2010";

5.  SELECT ConstructorRef.name.nationality FROM constructors JOIN races ON year = year WHERE races = "1950" and name = "F";
