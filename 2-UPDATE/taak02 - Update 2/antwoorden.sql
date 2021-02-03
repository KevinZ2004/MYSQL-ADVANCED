-- Opdracht 1
UPDATE `studenten2` SET klas = '9X' WHERE student_id = 1
UPDATE `studenten2` SET klas = '9X' WHERE student_id = 2
UPDATE `studenten2` SET klas = '9X' WHERE student_id = 3
UPDATE `studenten2` SET klas = '9X' WHERE student_id = 5
UPDATE `studenten2` SET klas = '9X' WHERE student_id = 8
-- Opdracht 2 
UPDATE `studenten2` SET klas = '9Z' WHERE student_id>7 
-- Opdracht 3
UPDATE `studenten2` SET woonplaats = 'Amsterdam' WHERE student_id<=2 
-- Opdracht 4
UPDATE `studenten2` SET woonplaats = 'Uithoorn' WHERE klas = "9X" OR woonplaats = "Amsterdam" 
