/*Query the Name of any student in STUDENTS who scored higher than 
Marks. Order your output by the last three characters of each name.
If two or more students both have names ending in the same last three characters
(i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.*/
SELECT Name from students WHERE Marks > '75'
order by right(name, 3), id asc

/*Query a list of CITY names from STATION for cities 
that have an even ID number. Print the results in any order,
but exclude duplicates from the answer. 
The STATION table is described as follows:*/
SELECT DISTINCT CITY FROM STATION WHERE(ID % 2)= 0;

/*Query the list of CITY names starting with vowels
(i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.*/
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOU]'

/*Query the list of CITY names ending with vowels 
(a, e, i, o, u) from STATION. Your result cannot contain duplicates.*/
SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE '[AEIOU]$'

/*Query the list of CITY names from STATION which have vowels
(i.e., a, e, i, o, and u) as both their first and last characters.
Your result cannot contain duplicates.*/
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[AEIOUaeiou].*[aeiouAEIOU]$'

/*Query the list of CITY names from STATION that do not start with vowels. 
Your result cannot contain duplicates.*/
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '^[AEIOUaeiou]'

/*Query the list of CITY names from STATION that do not end 
with vowels. Your result cannot contain duplicates.*/
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '[AEIOUaeiou]$'

/*Query the list of CITY names from STATION that either do 
not start with vowels or do not end with vowels. Your result cannot contain duplicates.*/
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '^[AEIOUaeiou].*[AEIOUaeiou]$'

/*Query the list of CITY names from STATION that do not 
start with vowels and do not end with vowels. Your result cannot contain duplicates.*/
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^AEIOUaeiou].*[^AEIOUaeiou]$';


/* Query all columns for all American cities in the 
CITY table with populations larger than 100000. The CountryCode for America is USA.*/
SELECT * FROM CITY 
WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000

/*Query the NAME field for all American cities in
the CITY table with populations larger than 120000.
The CountryCode for America is USA.*/
SELECT NAME FROM CITY WHERE POPULATION > '120000' AND COUNTRYCODE = 'USA'

/*Query all columns (attributes) for every row in the CITY table.*/
SELECT * 
FROM CITY;

/*Query all columns for a city in CITY with the ID 1661.*/
SELECT * FROM CITY WHERE ID = '1661';

/*Query all attributes of every Japanese city in the 
CITY table. The COUNTRYCODE for Japan is JPN.*/
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

/*Query the names of all the Japanese cities in the CITY table. 
The COUNTRYCODE for Japan is JPN.*/
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';

/*Query a list of CITY and STATE from the STATION table. */
SELECT CITY, STATE FROM STATION;


/* Find the difference between the total number of CITY 
entries in the table and the number of distinct CITY entries in the table. */
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

/*Write a query that prints a list of employee names
(i.e.: the name attribute) from the Employee table in alphabetical order.*/
select name from employee order by name

/*Write a query that prints a list of employee names (i.e.: the name attribute)
for employees in Employee having a salary greater than  per month who have been employees 
for less than  months. Sort your result by ascending employee_id.*/
select name from employee where salary > '2000' and months < '10'



