
-- 1. INSERT data i tabellen Student (minst 10 rader)
INSERT INTO Student (StudentID, Name, House) VALUES
(1, 'Harry Potter', 'Gryffindor'),
(2, 'Hermione Granger', 'Gryffindor'),
(3, 'Ron Weasley', 'Gryffindor'),
(4, 'Draco Malfoy', 'Slytherin'),
(5, 'Luna Lovegood', 'Ravenclaw'),
(6, 'Cedric Diggory', 'Hufflepuff'),
(7, 'Cho Chang', 'Ravenclaw'),
(8, 'Neville Longbottom', 'Gryffindor'),
(9, 'Pansy Parkinson', 'Slytherin'),
(10, 'Hannah Abbott', 'Hufflepuff');

-- 2. INSERT data i tabellen Course
INSERT INTO Course (CourseID, Title, Professor) VALUES
(101, 'Potions', 'Severus Snape'),
(102, 'Charms', 'Filius Flitwick'),
(103, 'Transfiguration', 'Minerva McGonagall'),
(104, 'Defense Against the Dark Arts', 'Quirinus Quirrell');

-- 3. INSERT data i kopplingstabellen Enrollment (minst 10 rader som använder relationerna)
-- Dessa rader måste referera till befintliga StudentID och CourseID.
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, Grade) VALUES
(1, 1, 101, 'P'),    -- Harry läser Potions
(2, 2, 101, 'O'),    -- Hermione läser Potions
(3, 3, 101, 'A'),    -- Ron läser Potions
(4, 4, 101, 'E'),    -- Draco läser Potions
(5, 2, 102, 'O'),    -- Hermione läser Charms
(6, 1, 103, 'E'),    -- Harry läser Transfiguration
(7, 5, 103, 'A'),    -- Luna läser Transfiguration
(8, 6, 104, 'O'),    -- Cedric läser DADA
(9, 7, 102, 'E'),    -- Cho läser Charms
(10, 8, 104, NULL),  -- Neville läser DADA (Inget betyg än, vilket är tillåtet)
(11, 4, 103, 'A'),   -- Draco läser Transfiguration
(12, 1, 102, 'A');   -- Harry läser Charms
