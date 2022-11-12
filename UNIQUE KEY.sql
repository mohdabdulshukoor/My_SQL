USE SCHOOL_DATANEW;
CREATE TABLE School_dataNew.Student_Unique (
    student_roll_no INT PRIMARY KEY,
    Student_name VARCHAR(100) NOT NULL UNIQUE,
    age INT
);
DESCRIBE Student_Unique
