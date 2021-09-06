CREATE DATABASE bobross;
USE bobross;
CREATE TABLE BobRoss (episode VARCHAR(6),
						title VARCHAR(30), apple_frame VARCHAR(1),
                        aurora_borealis VARCHAR(1), barn VARCHAR(1),
                        beach VARCHAR(1), boat VARCHAR(1), bridge VARCHAR(1),
                        building VARCHAR(1),bushes VARCHAR(1), cabin VARCHAR(1),
                        CACTUS VARCHAR(1),CIRCLE_FRAME VARCHAR(1), 
                        CIRRUS VARCHAR(1),CLIFF VARCHAR(1),
                        CLOUDS VARCHAR(1),CONIFER VARCHAR(1),
                        CUMULUS VARCHAR(1), DECIDUOUS VARCHAR(1),
                        DIANE_ANDRE VARCHAR(1), DOCK VARCHAR(1),
                        DOUBLE_OVAL_FRAME VARCHAR(1),FARM VARCHAR(1),
                        FENCE VARCHAR(1),FIRE VARCHAR(1),
                        FLORIDA_FRAME VARCHAR(1),FLOWERS VARCHAR(1),
                        FOG VARCHAR(1),FRAMED VARCHAR(1), GRASS VARCHAR(1),
                        GUEST VARCHAR(1),HALF_CIRCLE_FRAME VARCHAR(1),
                        HALF_OVAL_FRAME VARCHAR(1), HILLS VARCHAR(1),
                        LAKE VARCHAR(1),LAKES VARCHAR(1),
                        LIGHTHOUSE VARCHAR(1), MILL VARCHAR(1),
                        MOON VARCHAR(1),MOUNTAIN VARCHAR(1),
                        MOUNTAINS VARCHAR(1), NIGHT VARCHAR(1),
                        OCEAN VARCHAR(1),OVAL_FRAME VARCHAR(1),
                        PALM_TREES VARCHAR(1),PATH VARCHAR(1),
                        PERSON VARCHAR(1),PORTRAIT VARCHAR(1),
                        RECTANGLE_3D_FRAME VARCHAR(1),RECTANGULAR_FRAME VARCHAR(1),
                        RIVER VARCHAR(1),ROCKS VARCHAR(1),
                        SEASHELL_FRAME VARCHAR(1),SNOW VARCHAR(1),
                        SNOWY_MOUNTAIN VARCHAR(1),SPLIT_FRAME VARCHAR(1),
                        STEVE_ROSS VARCHAR(1),STRUCTURE VARCHAR(1),SUN VARCHAR(1),
                        TOMB_FRAME VARCHAR(1),TREE VARCHAR(1),TREES VARCHAR(1),
                        TRIPLE_FRAME VARCHAR(1), WATERFALL VARCHAR(1),WAVES VARCHAR(1)
                        ,WINDMILL VARCHAR(1),WINDOW_FRAME VARCHAR(1),WINTER VARCHAR(1),
                        WOOD_FRAMED VARCHAR(1));
SELECT * FROM bobross;

CREATE TABLE mountains AS (SELECT episode, title, mountain, mountains 
							FROM bobross 
							Where mountain = 1 OR mountains = 1 );
SELECT * FROM mountains;

CREATE TABLE lakes AS (SELECT episode, title, lake, lakes 
							FROM bobross 
							Where lake = 1 OR lakes = 1 );
						
SELECT * FROM lakes;

CREATE TABLE mountainThings AS (SELECT * 
								FROM bobross
                                WHERE title LIKE '%Mountain%');

SELECT * FROM mountainThings;

ALTER TABLE mountainThings
DROP apple_frame, DROP aurora_borealis,  DROP barn, DROP boat;

DROP TABLE lakes;

SELECT * FROM mountainThings MT JOIN mountains MS ON MT.title = MS.title ORDER BY MT.episode;

SELECT * FROM mountainThings MT JOIN mountains MS ON MT.title = MS.title 
								JOIN lakes ON lakes.title = MT.title
                                ORDER BY MT.episode;     
                                
SELECT episode, title, cabin, cactus, flowers FROM bobross WHERE cabin = 1 
UNION  SELECT episode, title, cabin, cactus, flowers FROM bobross WHERE cactus = 1    
UNION  SELECT episode, title, cabin, cactus, flowers FROM bobross WHERE flowers = 1
ORDER BY episode;            

ALTER TABLE bobross
ADD PRIMARY KEY bobross(episode);

ALTER TABLE lakes
ADD FOREIGN KEY (episode) REFERENCES bobross(episode);