1. SELECT circuits.name, platform.platform FROM circuits JOIN races ON year = year WHERE circuits.year = "2021";

2. SELECT races, year.name FROM races JOIN drivers.driver_standing ON surname.points = points WHERE driver_standing = "10";

3. SELECT forename,surname FROM drivers JOIN pitstops ON milliseconds = milliseconds WHERE milliseconds < "25000";

4. SELECT ConstructorRef.name FROM constructors JOIN races ON year = year WHERE races = "2010";

5.  SELECT ConstructorRef.name.nationality FROM constructors JOIN races ON year = year WHERE races = "1950" and name = "F";
