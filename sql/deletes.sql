
-- 1. Ta bort alla inskrivningar kopplade till StudentID 9.
DELETE FROM Enrollment 
WHERE StudentID = 9;

-- 2. Ta bort sj�lva studenten.
DELETE FROM Student 
WHERE StudentID = 9;
