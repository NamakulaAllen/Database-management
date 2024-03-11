DROP TABLE IF EXISTS students;
CREATE TABLE students(
    Reg_no TEXT,
    First_Name TEXT,
    Last_Name TEXT,
    Course VARCHAR(25),
    Gender VARCHAR(100),
    D_O_B VARCHAR(100)
);



INSERT INTO students (Reg_no, First_Name, Last_Name, Course, Gender,D_O_B)
VALUES ('1/2016', 'John', 'Mutuku', 'DCS', 'Male', '13/6/1990');

INSERT INTO students (Reg_no, First_Name, Last_Name, Course, Gender,D_O_B)
VALUES ('2/2016', 'Steve', 'KipKorir', 'DCS', 'Male', '13/3/1985');

INSERT INTO students (Reg_no, First_Name, Last_Name, Course, Gender,D_O_B)
VALUES ('3/2016', 'Suzan', 'Mutua', 'CIT', 'Female', '19/11/1986');

INSERT INTO students (Reg_no, First_Name, Last_Name, Course, Gender,D_O_B)
VALUES ('4/2017', 'Steve', 'Kingori', 'DBIT', 'Male', '1/3/1978');

SELECT * FROM students;

SELECT Reg_no, Last_Name, First_Name FROM students;

SELECT Last_Name || ' ' || First_Name AS Student_Name FROM students;

SELECT * FROM students 
WHERE Gender = 'Male' AND Course = 'DCS';

SELECT Course, COUNT(*) AS Total_Students 
FROM students 
GROUP BY Course;

SELECT * FROM students 
WHERE Gender = 'Male' 
AND D_O_B BETWEEN '1980' AND '1989';


UPDATE students
SET Last_Name = 'Mwangi'
WHERE Reg_no = '4/2017';

DELETE FROM students;
