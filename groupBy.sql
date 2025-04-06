-- Active: 1743639780257@@127.0.0.1@5432@ph
SELECT * FROM students

SELECT country,avg(age) FROM students
GROUP BY country;

SELECT country,avg(age) FROM students
GROUP BY country
HAVING avg(age) < 20;

-- ki babey aktha jonmo tarik taika koto jon kun shal a njonmo bahir kora jay

SELECT extract(year from dob) as brith_year ,count(*) 
FROM students
GROUP BY brith_year