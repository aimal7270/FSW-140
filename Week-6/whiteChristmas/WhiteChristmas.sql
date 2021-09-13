CREATE DATABASE WhiteChristmas;

USE WhiteChristmas;

SELECT * FROM whitechristmasdata;

-- Query-1: Show the average daily temperature for August 10th, 1964. --

SELECT m8/10, yr, dy  FROM whitechristmasdata
  WHERE yr=1964 AND dy=10;
  
  -- Query-2: Show the twelve temperatures. --
  
  SELECT yr, dy, yr-1811 AS age, m12/10 AS temp FROM whitechristmasdata
  WHERE yr BETWEEN 1812 and 1812+11 AND dy=25;
  
  -- Query-3 For each age 1-12 show which years were a White Christmas. Show 'White Christmas' or 'No snow' for each age. --
  
  SELECT yr-1811 AS age,
   CASE WHEN m12 < 0 THEN 'White Christmas'
    else 'No Snow' END
     FROM whitechristmasdata
  WHERE yr BETWEEN 1812 and 1812+11 AND  dy BETWEEN 21 AND 25
  group by age;
  
  -- Query-4 List all the years and the wcc for children born in each year of the data set. Only show years where the wcc was at least 7. --
  
  SELECT yob, COUNT(wc)
  FROM
   (SELECT yob, yr+1-yob as age,
   CASE WHEN MIN(m12)<=0 THEN 'White Christmas' End wc
   FROM whitechristmasdata CROSS JOIN (SELECT DISTINCT yr AS yob
                                       FROM whitechristmasdata) y
    WHERE yr BETWEEN yob+2 AND yob+11 AND dy BETWEEN 21 AND 25
    GROUP BY yob,age) x
GROUP BY yob
HAVING COUNT(wc)>=7;

-- Query-5: Display the average temperatures for August by decade. --

Select floor(year(`yr`) / 10) * 10 as decades, avg(m8/10)
From whitechristmasdata;
  
  SELECT AVG(m8) AS "Temp"
  FROM whitechristmasdata ByMonth
  WHERE yr BETWEEN yr AND yr+9;
  SELECT (MAX(yr)-Min(yr))/10 FROM whitechristmasdata;

  
  