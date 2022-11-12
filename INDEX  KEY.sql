-- creating INDEX of a table

CREATE TABLE IF NOT Exists Student_Index(student_roll_no INT,Student_name VARCHAR(100),age INT,
 INDEX Age_Index (age));
 
 DESCRIBE STUDENT_INDEX;
