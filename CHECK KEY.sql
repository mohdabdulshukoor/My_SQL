USE SCHOOL_DATANEW;
CREATE TABLE School_dataNew.Student (
    student_roll_no INT PRIMARY KEY,
    Student_name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0)
);
DESCRIBE STUDENT