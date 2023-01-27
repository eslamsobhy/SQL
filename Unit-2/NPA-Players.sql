-- DATA BIG PROJECT:

-- Pick one of those data sets or create a data set like that,
-- and use advanced SELECT queries to discover things about the data.
-- What sort of questions might one have about that data,
-- like if they were using it for an app or a business idea? Here are some ideas:

-- What are average, max, and min values in the data?
-- What about those numbers per category in the data (using HAVING)?
-- What ways are there to group the data values that don’t exist yet (using CASE)?
-- What interesting ways are there to filter the data (using AND/OR)?


/*
Source:
https://www.kaggle.com/jacobbaruch/nba-player-of-the-week 
https://gist.github.com/pamelafox/6cda1115e2bcbc43e62cf4ff9d4158c7
*/

CREATE TABLE players(
   Player            TEXT,
   Team              TEXT,
   Conference        TEXT,
   Date              TEXT,
   Position          TEXT,
   Height            TEXT,
   Weight            INTEGER,
   Age               INTEGER,
   Draft_Year        INTEGER,
   Seasons_in_league INTEGER,
   Season            TEXT,
   Season_short      INTEGER,
   Predraft_Team     TEXT,
   Real_value        REAL,
   Height_CM         INTEGER,
   Weight_KG         INTEGER,
   Last_Season       INTEGER
);

INSERT INTO players(Player,Team,Conference,Date,Position,Height,Weight,Age,Draft_Year,Seasons_in_league,Season,Season_short,Predraft_Team,Real_value,Height_CM,Weight_KG,Last_Season) VALUES ('Norman Powell','Toronto Raptors','East','Mar 9, 2020','SG','6''4',215,26,2015,4,'2019-2020',2020,'UCLA',0.5,193,97,1);
INSERT INTO players(Player,Team,Conference,Date,Position,Height,Weight,Age,Draft_Year,Seasons_in_league,Season,Season_short,Predraft_Team,Real_value,Height_CM,Weight_KG,Last_Season) VALUES ('LeBron James','Los Angeles Lakers','West','Mar 9, 2020','F','6''8',250,35,2003,16,'2019-2020',2020,'St. Vincent St. Mary High School (Ohio)',0.5,203,113,1);
INSERT INTO players(Player,Team,Conference,Date,Position,Height,Weight,Age,Draft_Year,Seasons_in_league,Season,Season_short,Predraft_Team,Real_value,Height_CM,Weight_KG,Last_Season) VALUES ('Giannis Antetokounmpo','Milwaukee Bucks','East','Mar 2, 2020','F','6''11',242,35,2013,6,'2019-2020',2020,'Filathlitikos Div II Greece (Greece)',0.5,211,109,1);
INSERT INTO players(Player,Team,Conference,Date,Position,Height,Weight,Age,Draft_Year,Seasons_in_league,Season,Season_short,Predraft_Team,Real_value,Height_CM,Weight_KG,Last_Season) VALUES ('Kristaps Porzingis','Dallas Mavericks','West','Mar 2, 2020','FC','7''3',240,24,2015,4,'2019-2020',2020,'Real Betis Energia Plus (Spain)',0.5,221,108,1);
INSERT INTO players(Player,Team,Conference,Date,Position,Height,Weight,Age,Draft_Year,Seasons_in_league,Season,Season_short,Predraft_Team,Real_value,Height_CM,Weight_KG,Last_Season) VALUES ('Jayson Tatum','Boston Celtics','East','Feb 10, 2020','SF','6''8',208,41,2017,2,'2019-2020',2020,'Duke',0.5,203,94,1);
INSERT INTO players(Player,Team,Conference,Date,Position,Height,Weight,Age,Draft_Year,Seasons_in_league,Season,Season_short,Predraft_Team,Real_value,Height_CM,Weight_KG,Last_Season) VALUES ('Nikola Jokic','Denver Nuggets','West','Feb 10, 2020','C','7''0',250,25,2014,4,'2019-2020',2020,'KK Mega Bemax (Serbia)',0.5,213,113,1);
INSERT INTO players(Player,Team,Conference,Date,Position,Height,Weight,Age,Draft_Year,Seasons_in_league,Season,Season_short,Predraft_Team,Real_value,Height_CM,Weight_KG,Last_Season) VALUES ('Jaylen Brown','Boston Celtics','East','Feb 3, 2020','SF','6''7',220,23,2016,3,'2019-2020',2020,'California',0.5,201,99,1);
INSERT INTO players(Player,Team,Conference,Date,Position,Height,Weight,Age,Draft_Year,Seasons_in_league,Season,Season_short,Predraft_Team,Real_value,Height_CM,Weight_KG,Last_Season) VALUES ('Damian Lillard','Portland Trail Blazers','West','Feb 3, 2020','G','6''3',195,30,2012,7,'2019-2020',2020,'Weber State',0.5,190,88,1);
INSERT INTO players(Player,Team,Conference,Date,Position,Height,Weight,Age,Draft_Year,Seasons_in_league,Season,Season_short,Predraft_Team,Real_value,Height_CM,Weight_KG,Last_Season) VALUES ('Pascal Siakam','Toronto Raptors','East','Jan 27, 2020','G','6''9',230,25,2016,3,'2019-2020',2020,'New Mexico State',0.5,206,104,1);
INSERT INTO players(Player,Team,Conference,Date,Position,Height,Weight,Age,Draft_Year,Seasons_in_league,Season,Season_short,Predraft_Team,Real_value,Height_CM,Weight_KG,Last_Season) VALUES ('Damian Lillard','Portland Trail Blazers','West','Jan 27, 2020','G','6''3',195,19,2012,7,'2019-2020',2020,'Weber State',0.5,190,88,1);
INSERT INTO players(Player,Team,Conference,Date,Position,Height,Weight,Age,Draft_Year,Seasons_in_league,Season,Season_short,Predraft_Team,Real_value,Height_CM,Weight_KG,Last_Season) VALUES ('Ben Simmons','Philadelphia Sixers','East','Jan 20, 2020','PF','6''10',230,19,2016,3,'2019-2020',2020,'LSU',0.5,208,104,1);

-- QUERIES

SELECT MIN(Age) AS min_age,
MAX(Age) AS max_age,
ROUND(AVG(Age)) AS average_age
FROM players;


SELECT COUNT(Player) FROM players GROUP BY Position HAVING Position == "G";


SELECT COUNT(AGE) AS Age ,CASE
    WHEN Age < 20 THEN "Young"
    WHEN Age < 30 THEN "Peak"
    WHEN Age < 40 THEN "Mature"
    WHEN Age < 50 THEN "Old"
    ELSE "Not Classified!"
END AS Status
FROM players
GROUP BY Status;


SELECT Player FROM players
WHERE 
(Age > 20 AND Age < 30 AND position == "G") 
OR 
(Age < 20 AND position == "G");


