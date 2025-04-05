-- Active: 1743639780257@@127.0.0.1@5432@ph
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    frist_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)

)

-- INSERT INTO students (frist_name, last_name, age, grade, course, email, dob, blood_group, country)
-- VALUES
-- ('John', 'Smith', 18, 'A', 'Computer Science', 'john.smith@example.com', '2005-03-15', 'O+', 'USA'),
-- ('Emily', 'Johnson', 19, 'B+', 'Biology', 'emily.j@example.com', '2004-07-22', 'A-', 'Canada'),
-- ('Michael', 'Williams', 20, 'A-', 'Mathematics', 'michael.w@example.com', '2003-11-05', 'B+', 'UK'),
-- ('Sophia', 'Brown', 18, 'A+', 'Physics', 'sophia.b@example.com', '2005-01-30', 'AB+', 'Australia'),
-- ('Daniel', 'Jones', 19, 'B', 'Chemistry', 'daniel.j@example.com', '2004-09-14', 'O-', 'USA'),
-- ('Olivia', 'Garcia', 20, 'A', 'English Literature', 'olivia.g@example.com', '2003-12-25', 'A+', 'Spain'),
-- ('James', 'Miller', 18, 'B+', 'History', 'james.m@example.com', '2005-05-18', 'B-', 'Canada'),
-- ('Emma', 'Davis', 19, 'A-', 'Economics', 'emma.d@example.com', '2004-08-08', 'O+', 'USA'),
-- ('William', 'Rodriguez', 20, 'A', 'Engineering', 'william.r@example.com', '2003-10-12', 'AB-', 'Mexico'),
-- ('Ava', 'Martinez', 18, 'B', 'Psychology', 'ava.m@example.com', '2005-02-28', 'A-', 'USA');


--acending desending order 
SELECT age as "student Age "FROM students ORDER BY age ASC

--data filtering

SELECT * FROM students
WHERE grade  = 'B' AND course = 'Chemistry' 

SELECT * FROM students
WHERE age >= 20 OR country = 'USA' 

--upercse korar system

SELECT upper(frist_name) FROM students

--akthar sathe arekta join korar jonno 
SELECT concat(frist_name,' ' ,last_name) FROM students

--avarege korar poddoti 

SELECT AVG(age) FROM students

--max and min total  bahir kora jay mex and min lekey sum
SELECT sum(age) FROM students


SELECT * FROM students

--amara in bebohar korey j kuno multipol data petey pari and NOt In bebohar korey oi data caea baki gula dektey pari


SELECT * FROM students WHERE country IN('USA','UK')

--amra bitiwin bebohar kore kuno data renj diye dektey pari

SELECT * FROM students
WHERE dob BETWEEN '2000-01-01' AND '2004-01-01'


-- akan a like use korey kuno kico serch kora jay % diye bujay ar porey or samney k=j kuno kico taktey parey and _ diye bujay akta word taktey parey

SELECT * FROM students
WHERE frist_name LIKE '_a%'

--atha like ar moto but ilike use korley capial r smal kuno meter korey na

SELECT * FROM students
WHERE frist_name ILIKE 'o%'

--pagination

SELECT * FROM students LIMIT 5 OFFSET 5*0

SELECT * FROM students LIMIT 5 OFFSET 5*1


-- delete korar shyestm

SELECT * FROM students

DELETE FROM students
WHERE grade ='A-' AND country = 'USA'

UPDATE students 
set frist_name = 'habib'
WHERE student_id = 1
