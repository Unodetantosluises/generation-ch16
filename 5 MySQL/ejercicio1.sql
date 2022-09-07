

CREATE TABLE cohorte_16 {
alumno_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,



SELECT * FROM cohorte_16;

DELETE FROM cochorte_16;
WHERE alumno_id = 3;

SELECT * FROM cohorte_16;

UPDATE cohorte_16;
SET nombre = 'Maria',
apellido = 'Pard',
WHERE alumno_id =5;

UPDATE cohorte_16;
SET nombre = 'Marina',
apellido = 'Pardo',
WHERE alumno_id = 5;

UPDATE cohorte_16
SET nombre = REPLACE (nombre, 'Mgali',  'Marina');

--ASC y DESC se usan con ORDER BY para ordenar los elementos
SELECT nombre, apellido FROM cohorte_16 ORDER BY apellido DESC;

