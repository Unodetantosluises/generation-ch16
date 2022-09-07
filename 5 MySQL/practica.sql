use generation;
-- Instruccion JOIN del ejercicio
SELECT Students.*, Countries.name country FROM Students INNER JOIN Countries ON Students.nationality = Countries.idCountries;

-- Escirbe un comando adicional en el JOIN de la tabla students con la la tabla CoursehasStudent para tener el codigo de los cursos que cada alumono ha tomado
SELECT 
Students.*, 
Countries.name country
FROM Students 
INNER JOIN Countries 
ON Students.nationality = Countries.idCountries;

-- Modifique la sentencia SQL anterior para que una la tabla Students con la tabla IDTypes para conocer el tipo de identificación de cada estudiante.
SELECT IdType_id FROM Students;

SELECT 
Students.*,
idtypes.id_idtypes name
FROM Students
INNER JOIN idtypes
on Students.IdType_id = idtypes.id_idtypes;

-- Escriba una declaración SQL adicional para UNIRSE a la tabla Students con la tabla CourseHasStudent para obtener el código de los cursos en los que está inscrito cada estudiante.
SELECT 
Students.*,
courses_has_students.students_id_student course_code,
courses.code name
FROM Students
INNER JOIN courses_has_students on Students.idStudent = courses_has_students.students_id_student
INNER JOIN courses on courses.code = courses_has_students.course_code;





