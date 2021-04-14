1. SELECT circuits.name, platform.platform FROM circuits JOIN races ON year = year WHERE circuits.year = "2021";

2. SELECT races, year.name FROM races JOIN drivers.driver_standing ON surname.points = points WHERE driver_standing = "10";

3. SELECT forename,surname FROM drivers JOIN pitstops ON milliseconds = milliseconds WHERE milliseconds < "25000";