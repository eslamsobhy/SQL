-- Think about your favorite apps, and pick one that stores your data- like a game that stores scores,
-- an app that lets you post updates, etc. Now in this project,
-- you're going to imagine that the app stores your data in a SQL database (which is pretty likely!),
-- and write SQL statements that might look like their own SQL.

-- CREATE a table to store the data.
-- INSERT a few example rows in the table.
-- Use an UPDATE to emulate what happens when you edit data in the app.
-- Use a DELETE to emulate what happens when you delete data in the app.


CREATE TABLE goals (id INTEGER PRIMARY KEY AUTOINCREMENT, scorer_name TEXT, against TEXT, minute REAL);

INSERT INTO goals (scorer_name, against, minute) VALUES ("Lionel Messi", "Mexico", 65);
INSERT INTO goals (scorer_name, against, minute) VALUES ("Angel Di Maria", "France", 35);
INSERT INTO goals (scorer_name, against, minute) VALUES ("Cristiano Ronaldo", "Ghana", 75);
INSERT INTO goals (scorer_name, against, minute) VALUES ("Neymar Jr", "Croatia", 85);
INSERT INTO goals (scorer_name, against, minute) VALUES ("Harry Kane", "France", 55);

SELECT scorer_name, against, minute 
 FROM goals;

UPDATE goals 
 SET scorer_name = "Bruno Fernandes" 
 WHERE scorer_name LIKE "%Cristiano Ronaldo%";

SELECT scorer_name, against, minute 
 FROM goals;

DELETE FROM goals 
 WHERE scorer_name == "Harry Kane";

SELECT scorer_name, against, minute 
 FROM goals;