
-- 1. INNER JOIN (Lista studenter och deras betyg): 
-- Lista alla studenter, vilken kurs de läser, vem professorn är och vilket betyg de har fått.
SELECT
    S.Name AS StudentName,
    C.Title AS CourseTitle,
    C.Professor,
    E.Grade
FROM
    Student AS S
INNER JOIN
    Enrollment AS E ON S.StudentID = E.StudentID -- Koppla Student till Inskrivning
INNER JOIN
    Course AS C ON E.CourseID = C.CourseID       -- Koppla Inskrivning till Kurs
ORDER BY
    S.Name, C.Title;

-- 2. LEFT JOIN (Räkna inskrivningar): 
-- Lista alla kurser och räkna hur många studenter som är inskrivna i varje kurs. 
-- LEFT JOIN garanterar att kurser visas, även om ingen student har registrerat sig (Count = 0).
SELECT
    C.Title AS CourseTitle,
    COUNT(E.StudentID) AS NumberOfStudentsEnrolled
FROM
    Course AS C
LEFT JOIN
    Enrollment AS E ON C.CourseID = E.CourseID
GROUP BY
    C.CourseID, C.Title  -- Gruppera efter kurs för att räkna inskrivningarna
ORDER BY
    NumberOfStudentsEnrolled DESC;
