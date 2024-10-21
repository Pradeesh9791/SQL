create table signup(username varchar(20),email varchar(20),password varchar(20));
select * from signup


ALTER PROCEDURE signupuser  
@username VARCHAR(20),
@email VARCHAR(20),
@password VARCHAR(20)
AS
BEGIN
INSERT INTO signup (username, email, password) 
VALUES (@username, @email, @password);
END;

exec signupuser 'pradeesh','pradeesh@gmail.com','12345';
exec signupuser 'sivasr','siva@gmail.com','12345';
exec signupuser 'arun','arun@gmail.com','12345';
exec signupuser 'faheem','faheem@gmail.com','12345';

