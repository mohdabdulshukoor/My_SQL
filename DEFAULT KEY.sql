USE SCHOOL_DATANEW;
CREATE TABLE School_dataNew.Student_Default_constraint (
    student_roll_no INT PRIMARY KEY,
    Student_name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    city VARCHAR(50) DEFAULT 'Mumbai'
);

-- check constraints
describe student_default_constraint;
