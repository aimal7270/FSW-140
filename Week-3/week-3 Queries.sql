use avengers;
ALTER TABLE dcsuperheroes
ADD column fav_avengers varchar(50);
UPDATE dcsuperheroes SET fav_avengers = (CASE
WHEN RAND() = 0.3 THEN 'Anthony Edward "Tony" Stark'
WHEN RAND() > 0.6 THEN 'Robert Brue Banner'
ELSE 'Victor Shade'
END);

SELECT fav_avengers FROM dcsuperheroes;

SELECT x.name, x.current, x.gender, x.new_superheroes
FROM dcsuperheroes AS ds, avengers AS ave
INNER join dcsuperheroes ON ave.name = x.name
WHERE dcsuperheroes.id = avengers.id;

SELECT * FROM avengers.avengers WHERE appearances >= 1000 order by name;
SELECT * FROM avengers.avengers WHERE appearances >= 999 order by appearances;
SELECT * FROM avengers.avengers WHERE appearances <= 500 order by appearances;
SELECT * FROM avengers.avengers WHERE appearances <= 50 AND gender = 'FEMALE';

SELECT * FROM avengers.avengers WHERE appearances >= 150 AND gender = 'MALE' AND honorary ='FULL';
Select * from dcsuperheroes;

SELECT dcsuperheroes.name, avengers.fullAvengersIntro 
FROM dcsuperheroes 
JOIN avengers ON dcsuperheroes.fav_avengers=avengers.name;
 
 ALTER TABLE dcsuperheroes
 ADD COLUMN news_superheroes VARCHAR(50);
UPDATE dcsuperheroes
SET news_superheroes= rand();
UPDATE dcsuperheroes
SET news_superheroes= CASE WHEN (RAND() > .5 ) 
	THEN 'YES' 
	ELSE 'NO' 
END; 
 
 select * from avengers;







