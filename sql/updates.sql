
-- 1. Uppdatera Professor: Professor Quirrell lämnar DADA, och Professor Snape tar över DADA-kursen (CourseID 104).
UPDATE Course 
SET Professor = 'Severus Snape' 
WHERE CourseID = 104;

-- 2. Uppdatera betyg: Ron Weasleys betyg i Potions (CourseID 101) ändras från 'A' till 'E' (över Förväntan).
-- Vi använder både StudentID och CourseID för att vara exakta.
UPDATE Enrollment 
SET Grade = 'E' 
WHERE StudentID = 3 AND CourseID = 101;
