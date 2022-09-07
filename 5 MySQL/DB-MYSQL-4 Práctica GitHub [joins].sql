-- ------------- --
-- Part 1: JOINS --
-- ------------- --
SELECT Students.*, Countries.name country
	FROM Students
	INNER JOIN Countries
	ON Students.nationality = Countries.idCountries;

-- Ahora muestra el tipo de identificación
SELECT Students.*, idtypes.name Identification
	FROM Students
	INNER JOIN idtypes
    ON students.IdType_id = idtypes.id_idTypes;
    
-- Cursos a los que está inscrito cada estudiante
SELECT Students.idStudent, Students.name, Students.last_name,
	courses_has_students.course_code
	FROM Students
	LEFT JOIN courses_has_students
	ON students.idStudent = courses_has_students.students_id_student;

-- Estudiantes inscritos a un curso
SELECT courses.name as CourseName, courses_has_students.students_id_student as StudentID
	FROM courses_has_students
	INNER JOIN courses
	ON courses_has_students.course_code = courses.code;

-- Commbiar ambos queries
SELECT concat(students.name, ' ', students.last_name) as Student, courses.name as Course
	FROM courses_has_students
	INNER JOIN students
	ON courses_has_students.students_id_student = students.idStudent
	INNER JOIN courses
	ON courses_has_students.course_code = courses.code
	ORDER BY Course;
    
-- ------------------------------- --
-- Part 2: Understanding your data --
-- ------------------------------- --

-- Estudiantes de un país en específico
SELECT students.*, countries.name as Country
	FROM students
	INNER JOIN countries
	ON students.nationality = countries.idCountries
	WHERE countries.Name = 'China';

-- Todos los países cuyo nombre empiece con 'Ca'
SELECT * FROM countries
	WHERE countries.name LIKE 'Ca%';

-- Cantidad de estudiantes en el curso Java-1
SELECT COUNT(courses_has_students.students_id_student) as `Students enrolled in JAVA-1`
	FROM courses_has_students
	WHERe courses_has_students.course_code = 'JAVA-1';

-- Suma los créditos de todos los cursos que tienen JAVA en el nombre
SELECT SUM(courses.credits) as `Credits`
	FROM courses
	WHERE courses.name LIKE '%java%';
    
-- estudiantes por modulo
SELECT  courses.module_code as `Module Name`, count(students.idStudent) as `Students Enrolled`
FROM courses_has_students
JOIN students
ON students_id_student = students.idStudent
JOIN courses
ON courses_has_students.course_code = courses.code
GROUP BY courses.module_code

