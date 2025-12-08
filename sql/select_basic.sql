
-- 1. WHERE: Hitta alla studenter från elevhemmet Ravenclaw
SELECT StudentID, Name, House FROM Student WHERE House = 'Ravenclaw';

-- 2. ORDER BY: Hitta alla kurser sorterade efter professor
SELECT CourseID, Title, Professor FROM Course ORDER BY Professor ASC;

-- 3. LIKE: Hitta studenter vars namn slutar på 'n' (t.ex. Ron, Hermione)
SELECT Name, House FROM Student WHERE Name LIKE '%n';

-- 4. WHERE + ORDER BY: Hitta alla inskrivningar med betyget 'O' (Outstanding), sorterade efter student-ID
SELECT EnrollmentID, StudentID, CourseID, Grade
FROM Enrollment
WHERE Grade = 'O'
ORDER BY StudentID ASC;

-- 5. GROUP BY (Gruppberäkning): Räkna antalet inskrivningar (rader) per kurs.
SELECT CourseID, COUNT(EnrollmentID) AS TotalEnrollments
FROM Enrollment
GROUP BY CourseID;

-- 6. GROUP BY (Gruppberäkning): Räkna hur många studenter som tillhör varje elevhem (House)
SELECT House, COUNT(StudentID) AS NumberOfStudents
FROM Student
GROUP BY House;
