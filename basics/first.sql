CREATE DATABASE IF NOT EXISTS startersql;
use startersql;


-- we have created a table users in which we have id name email etc

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- genrated a random set of data then insert it into our table

INSERT INTO users (name, email, gender, date_of_birth, salary, age) VALUES
('Chirag Sharma', 'chirag.sharma1@example.com', 'Male', '1999-03-15', 45000.00,),
('Anjali Mehta', 'anjali.mehta2@example.com', 'Female', '2001-08-10', 38000.50),
('Rahul Verma', 'rahul.verma3@example.com', 'Male', '1997-11-20', 52000.75),
('Sneha Kapoor', 'sneha.kapoor4@example.com', 'Female', '1998-05-05', 60000.00),
('Karan Patel', 'karan.patel5@example.com', 'Male', '2000-12-01', 47000.90),
('Ishita Roy', 'ishita.roy6@example.com', 'Female', '1996-06-25', 43000.60),
('Neha Yadav', 'neha.yadav7@example.com', 'Female', '2002-01-17', 36000.80),
('Aditya Singh', 'aditya.singh8@example.com', 'Male', '1995-09-03', 51000.00),
('Priya Desai', 'priya.desai9@example.com', 'Female', '1998-07-22', 49500.30),
('Vikas Joshi', 'vikas.joshi10@example.com', 'Male', '1997-10-30', 55000.20),
('Rohit Thakur', 'rohit.thakur11@example.com', 'Male', '1994-04-14', 48000.00),
('Divya Nair', 'divya.nair12@example.com', 'Female', '1999-02-09', 47000.40),
('Sanya Jain', 'sanya.jain13@example.com', 'Female', '2000-06-18', 40000.00),
('Aryan Bhatt', 'aryan.bhatt14@example.com', 'Male', '1996-08-08', 56000.10),
('Simran Kaur', 'simran.kaur15@example.com', 'Female', '1995-03-26', 39000.90),
('Tarun Malhotra', 'tarun.malhotra16@example.com', 'Male', '1993-12-30', 53000.00),
('Meera Shah', 'meera.shah17@example.com', 'Female', '1997-05-13', 45000.75),
('Amit Das', 'amit.das18@example.com', 'Male', '2001-01-11', 42000.60),
('Nisha Kumari', 'nisha.kumari19@example.com', 'Female', '1998-11-07', 39000.00),
('Ritesh Reddy', 'ritesh.reddy20@example.com', 'Male', '1995-09-27', 51000.45);

-- 1. this command will give all users where gender is female
SELECT * FROM users WHERE gender!='Male';


-- this command will give list of all user where dob is less than'1995-09-09';
SELECT * from users WHERE date_of_birth < '1995-09-09';


-- this command will give list of all user where id is less thann 10
SELECT * FROM users WHERE id<10;


-- this command will give where dob is null
SELECT * FROM users WHERE date_of_birth IS NULL


-- this command will give users b/w dob
SELECT * from users WHERE date_of_birth BETWEEN '1990-09-09' AND '1999-09-09';


-- this command will give list of all users where salary is > 40,000
SELECT * FROM users WHERE salary > 40000;


-- Find all users whose salary is greater than 50,000.
SELECT * FROM users WHERE salary > 50000


-- List all users who are female.
SELECT * FROM users WHERE gender = 'Female';


-- Show users whose date of birth is after the year 1995.
SELECT * FROM users WHERE date_of_birth > '1995';


-- Find users with the name starting with ‘A’.
SELECT * FROM users WHERE name LIke 'A%';


-- Display users with email addresses containing 'gmail'.
SELECT * FROM users WHERE email LIke '%gmail%';


-- update the coloum value
UPDATE users SET salary = 80000.24 WHERE id = 1;

UPDATE users SET date_of_birth = '2004-02-24' WHERE id = 1;
SELECT * FROM users WHERE date_of_birth < '2000-02-20';

UPDATE users SET name = 'Durgesh nai' WHERE id = 20;
update users set email = 'durgesh@gmail.com' WHERE id = 20;


-- And Or operator
SELECT * from users where gender = 'Female' AND salary > '70000'
SELECT * from users where gender = 'Male' AND salary > '70000';

SELECT * from users where gender = 'Male' OR salary > '50000' ORDER BY date_of_birth DESC;




-- updating data
-- update <table_name> set <col_name> ki value where id = 

UPDATE users SET salary = 50000 WHERE id = 6;

update users set salary = 70000 where id = 7;

UPDATE users SET email = 'Priyadesai@gmail.com' where id = 9;
UPDATE users SET email = 'chirag@gmail.com' where id = 1;

-- increase salary by 10,000  whose salary < 50,000
update users set salary = salary + 10000 where salary < 50000;

update users set gender = 'Other' where id = 18;



-- deleteing data
DELETE from users where salary < 50000;
DELETE from users where id = 3;
-- DELETE from users; -> delete everthing

-- delete the whole table (not reccomended), always use where clause
DROP table users;



-- contraints -> rules are applied on table on coloumn. unique primary key are constraint
-- duplicate entry is not valid because of unique


-- basic queries for practice
Update the salary of the user whose ID is 2 to 70000.
✅ Change the name of the user with ID 5 to "Karan Kumar".
✅ Set the age of the user whose email is "ishita@gmail.com" to 24.
✅ Change the gender of the user with ID 11 to "Other".
✅ Update the salary to 80000 for the user named "Neha Yadav".
✅ Set the age to 30 for all users whose age is currently NULL.
✅ Reduce the salary to 45000 for the user named "Aditya Singh".
✅ Set the age to 22 for users whose email ends with "@example.com".


ALTER TABLE users ADD age INT;
UPDATE users set age = 20 where id = 1;
update users set age = 20 where id = 5;
update users set email = 'vikas@gmail.com' where id = 10;
UPDATE users set age = 25 where email = 'ishita@gmail.com'
update users set age = 30 where id != 1;
update user set salary = salary - 45000 where name = 'Aditya Singh';
update users set age = 22 where email LIKE '%@example%';



10 practice questions
Increase the salary of the user with ID 3 by 10,000.

Change the email of the user named "Priya Desai" to "priya.desai@gmail.com".

Set the gender of all users with NULL age to "Not Specified".

Update the name of the user with email "divya.nair12@example.com" to "Divya Nairan".

Reduce the salary by 5,000 for all users whose salary is above 60,000.

Set the age of the user named "Aryan Bhatt" to 28.

Update the gender to "Female" for users whose name contains "Sneha".

Change the email domain from "@example.com" to "@mydomain.com" for all users.

Set the salary to 60000 for users whose current salary is less than 55000.

Set the age of all users whose name ends with "Shah" to 27.


solutions
update users set salary = salary + 10000 where id = 3;
update users set email = 'Priya@gmail.com' where name = 'Priya Desai';
update users set name = 'Divya sharma' where email = 'divya.nair12@example.com';
update users set salary = salary - 5000 where salary > 60000;
update users set age = 28 where name = 'Aryan Bhatt';
update users set gender = 'Female' where name LIke 'Sneha';
UPDATE users SET email = REPLACE(email, '@example.com', '@mydomain.com') WHERE email LIKE '%@example.com';
update users set salary = 60000 where salary < 55000;
UPDATE users SET age = 27 WHERE name LIKE '%Shah';