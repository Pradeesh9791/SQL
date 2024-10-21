use Training_database
CREATE TABLE student(student_id varchar(20), student_name varchar(20), student_email varchar(20))
select * from student

ALTER PROCEDURE Student_table(
@operation VARCHAR(20), 
@student_id VARCHAR(20),
@student_name VARCHAR(20), 
@student_email VARCHAR(20)
)
AS
BEGIN
IF @operation = 'INSERT' 
BEGIN
INSERT INTO student (student_id, student_name, student_email) 
VALUES (@student_id, @student_name, @student_email)
END

ELSE IF @operation = 'UPDATE' 
BEGIN
UPDATE student 
SET student_name = @student_name, student_email = @student_email 
WHERE student_id = @student_id; 
END

ELSE IF @operation = 'DELETE' 
BEGIN
DELETE FROM student  
WHERE student_id = @student_id; 
END

END;

exec Student_table 'delete','101','pradeesh','pradeesh@gmail.com';