-- Active: 1743639780257@@127.0.0.1@5432@ph
SELECT age(CURRENT_DATE,'2003-11-23')

SELECT now()::date;
SELECT now()::time;

SELECT CURRENT_DATE - INTERVAL '2 years 2 month'

SELECT to_char(now(),'yyyy-mm-dd')


SELECT extract(YEAR FROM '2002-11-01'::date)