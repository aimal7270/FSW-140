//Query-1
select * From avengers;

//Query-2
CREATE TABLE `dcsuperheroes_backup` (
  `page_id` int PRIMARY KEY,
  `name` text,
  `urlslug` text,
  `ID` text,
  `ALIGN` text,
  `EYE` text,
  `HAIR` text,
  `SEX` text,
  `GSM` text,
  `ALIVE` text,
  `APPEARANCES` int DEFAULT NULL,
  `FIRST APPEARANCE` text,
  `YEAR` int DEFAULT NULL
) ENGINE=InnoDB;

INSERT INTO dcsuperheroes_backup VALUES
(1422,	'Batman (Bruce Wayne)', '\/wiki\/Batman_(Bruce_Wayne)', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters', 3093, '1939 May', 1939),
(23387,	'Superman (Clark Kent)', '\/wiki\/Superman_(Clark_Kent)', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters', 2496, '1986 October', 1986),
(1458,	'Green Lantern (Hal Jordan)', '\/wiki\/Green_Lantern_(Hal_Jordan)', 'Secret Identity', 'Good Characters', 'Brown Eyes', 'Brown Hair', 'Male Characters', '', 'Living Characters', 1565, '1959 October', 1959),
(1659,	'James Gordon (New Earth)', '\/wiki\/James_Gordon_(New_Earth)', 'Public Identity', 'Good Characters', 'Brown Eyes', 'White Hair', 'Male Characters', '', 'Living Characters', 1316, '1987 February', 1987),
(1576,	'Richard Grayson (New Earth)', '\/wiki\/Richard_Grayson_(New_Earth)', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters', 1237, '1940 April', 1940),
(1448,	'Wonder Woman (Diana Prince)', '\/wiki\/Wonder_Woman_(Diana_Prince)', 'Public Identity', 'Good Characters', 'Blue Eyes', 'Black Hair', 'Female Characters', '', 'Living Characters', 1231, '1941 December', 1941),
(1486,	'Aquaman (Arthur Curry)', '\/wiki\/Aquaman_(Arthur_Curry)', 'Public Identity', 'Good Characters', 'Blue Eyes', 'Blond Hair', 'Male Characters', '', 'Living Characters', 1121, '1941 November', 1941),
(1451,	'Timothy Drake (New Earth)', '\/wiki\/Timothy_Drake_(New_Earth)', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters', 1095, '1989 August', 1989),
(71760,	'Dinah Laurel Lance (New Earth)', '\/wiki\/Dinah_Laurel_Lance_(New_Earth)', 'Public Identity', 'Good Characters', 'Blue Eyes', 'Blond Hair', 'Female Characters', '', 'Living Characters', 1075, '1969 November', 1969),
(1380,	'Flash (Barry Allen)', '\/wiki\/Flash_(Barry_Allen)', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Blond Hair', 'Male Characters', '', 'Living Characters',	1028, '1956 October', 1956),
(403631,	'GenderTest', '\/wiki\/GenderTest', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Blond Hair', 'Female Characters', '', 'Living Characters', 1028, '1956 October', 1956),
(1459,	'Alan Scott (New Earth)', '\/wiki\/Alan_Scott_(New_Earth)', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Blond Hair', 'Male Characters', '', 'Deceased Characters', 969, '1940 July', 1940),
(1905,	'Barbara Gordon (New Earth)', '\/wiki\/Barbara_Gordon_(New_Earth)', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Red Hair', 'Female Characters', '', 'Living Characters', 951, '1967 January', 1967),
(1386,	'Jason Garrick (New Earth)', '\/wiki\/Jason_Garrick_(New_Earth)', 'Public Identity', 'Good Characters', 'Blue Eyes', 'Brown Hair', 'Male Characters', '', 'Living Characters', 951, '1940 January', 1940),
(23383,	'Lois Lane (New Earth)', '\/wiki\/Lois_Lane_(New_Earth)', 'Public Identity', 'Good Characters', 'Blue Eyes', 'Black Hair', 'Female Characters', '', 'Living Characters', 934, '1938 June', 1938),
(1456,	'Alfred Pennyworth (New Earth)', '\/wiki\/Alfred_Pennyworth_(New_Earth)', 'Public Identity', 'Good Characters', 'Blue Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters', 930, '1943 April', 1943),
(1849,	'Carter Hall (New Earth)', '\/wiki\/Carter_Hall_(New_Earth)', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Brown Hair', 'Male Characters', '', 'Living Characters', 803, '1940 January', 1940),
(4320,	'Kyle Rayner (New Earth)', '\/wiki\/Kyle_Rayner_(New_Earth)', 'Secret Identity', 'Good Characters', 'Green Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters', 716, '1994 January', 1994),
(1706,	'Raymond Palmer (New Earth)', '\/wiki\/Raymond_Palmer_(New_Earth)', 'Public Identity', 'Good Characters', 'Brown Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters', 706, '1961 October', 1961),
(1480,	'Alexander Luthor (New Earth)', '\/wiki\/Alexander_Luthor_(New_Earth)', 'Public Identity', 'Bad Characters', 'Green Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters', 677, '1986 October', 1986),
(1556,	'Roy Harper (New Earth)', '\/wiki\/Roy_Harper_(New_Earth)', 'Secret Identity', 'Neutral Characters', 'Green Eyes', 'Red Hair', 'Male Characters', '', 'Living Characters', 654, '1941 November', 1941),
(1580,	'Kara Zor-L (Earth-Two)', '\/wiki\/Kara_Zor-L_(Earth-Two)', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Blond Hair', 'Female Characters', '', 'Living Characters', 635, '1976 February', 1976),
(4849,	'Ted Grant (New Earth)', '\/wiki\/Ted_Grant_(New_Earth)', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters', 605, '1942 January', 1942),
(1611,	'Garfield Logan (New Earth)', '\/wiki\/Garfield_Logan_(New_Earth)', 'Public Identity', 'Good Characters', 'Green Eyes', 'Green Hair', 'Male Characters', '', 'Living Characters', 595, '1965 November', 1965),
(1479,	'Guy Gardner (New Earth)', '\/wiki\/Guy_Gardner_(New_Earth)', 'Public Identity', 'Good Characters', 'Blue Eyes', 'Red Hair', 'Male Characters', '', 'Living Characters', 593, '1968 March', 1968),
(1582,	'Victor Stone (New Earth)', '\/wiki\/Victor_Stone_(New_Earth)', 'Public Identity', 'Good Characters', 'Brown Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters	', 584, '1980 October', 1980),
(14006,	'Kon-El (New Earth)', '\/wiki\/Kon-El_(New_Earth)', 'Secret Identity', 'Good Characters', 'Blue Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters', 560, '1993 June', 1993),
(1484,	'Ralph Dibny (New Earth)', '\/wiki\/Ralph_Dibny_(New_Earth)', 'Public Identity', 'Good Characters', 'Blue Eyes', 'Red Hair', 'Male Characters', '', 'Deceased Characters', 558, '1960 May', 1960),
(23391,	'James Olsen (New Earth)', '\/wiki\/James_Olsen_(New_Earth)', 'Public Identity', 'Good Characters', 'Green Eyes', 'Red Hair', 'Male Characters', '', 'Living Characters', 557, '1986 October', 1986),
(1478,	'John Stewart (New Earth)', '\/wiki\/John_Stewart_(New_Earth)', 'Public Identity', 'Good Characters', 'Brown Eyes', 'Black Hair', 'Male Characters', '', 'Living Characters', 549, '1971 December', 1971),
(1455,	'Joker (New Earth)', '\/wiki\/Joker_(New_Earth)', 'Secret Identity', 'Bad Characters', 'Green Eyes', 'Green Hair', 'Male Characters', '', 'Living Characters', 517	, '1940 June', 1940),
(10163,	'Franklin Rock (New Earth)', '\/wiki\/Franklin_Rock_(New_Earth)', 'Public Identity', 'Good Characters', 'Blue Eyes', 'Gold Hair', 'Male Characters', '', 'Living Characters', 492, '1959 April', 1959),
(1872,	'Garth (New Earth)', '\/wiki\/Garth_(New_Earth)', 'Public Identity', 'Good Characters', 'Purple Eyes', 'Black Hair', 'Male Characters', '', 'Deceased Characters', 487, '1960 February', 1960);

//Query-3
ALTER TABLE dcsuperheroes_backup
ADD COLUMN interested VARCHAR(50);

UPDATE dcsuperheroes_backup
SET interested = rand();

UPDATE dcsuperheroes_backup
SET interested = CASE WHEN (RAND() > 0.5)
							THEN 'YES' 
							ELSE 'NO'
				END;

//Query-4
ALTER TABLE dcsuperheroes_backup
ADD column fav_avengers varchar(200);

UPDATE dcsuperheroes_backup
SET fav_avengers = FLOOR(RAND() * 3 + 1);

UPDATE dcsuperheroes_backup 
SET fav_avengers = CASE
						WHEN fav_avengers = 1 THEN 'Anthony Edward "Tony" Stark'
						WHEN fav_avengers = 2 THEN 'Robert Bruce Banner'
						WHEN fav_avengers = 3 THEN 'Victor Shade'
					END
WHERE fav_avengers IS NOT NULL;

//Query-5
SELECT ave.name, ave.current, ave.gender, ds_bk.interested, ds_bk.fav_avengers
FROM dcsuperheroes_backup AS ds_bk
INNER JOIN avengers AS ave
ON ave.name = ds_bk.fav_avengers
WHERE ave.current = 'YES';

SELECT * FROM dcsuperheroes_backup;
SELECT name FROM avengers;

//Query-6
SELECT * FROM avengers.avengers WHERE appearances >= 1000 order by name;

//Query-7
SELECT * FROM avengers.avengers WHERE appearances <= 999 order by appearances;

//Query-8
SELECT * FROM avengers.avengers WHERE appearances <= 500 order by appearances;

//Query-9
SELECT * FROM avengers.avengers WHERE appearances <= 50 AND gender = 'FEMALE';

//Query-10
SELECT * FROM avengers.avengers WHERE appearances >= 150 AND gender = 'MALE' AND honorary ='FULL';

