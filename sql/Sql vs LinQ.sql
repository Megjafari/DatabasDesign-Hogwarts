SELECT StudentID, Name, House 
FROM Student 
WHERE House = 'Gryffindor'
ORDER BY Name ASC;

-- LINQ
/*
var result = context.Student
    .Where(s => s.House == "Gryffindor")
    .OrderBy(s => s.Name)
    .ToList();
*/

SELECT House, COUNT(StudentID) AS NumberOfStudents
FROM Student
GROUP BY House;

-- LINQ
/*
var result = context.Student
    .GroupBy(s => s.House)
    .Select(g => new { 
        House = g.Key, 
        Count = g.Count() 
    })
    .ToList();
*/

SELECT S.Name, C.Title 
FROM Student S
JOIN Enrollment E ON S.StudentID = E.StudentID
JOIN Course C ON E.CourseID = C.CourseID;

-- LINQ
/*
var result = context.Enrollment
    .Select(e => new { 
        StudentName = e.Student.Name, 
        CourseTitle = e.Course.Title 
    })
    .ToList();
*/
