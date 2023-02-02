-- In this project, you’re going to make your own table with some small set of “famous people”,
-- then make more tables about things they do and join those to create nice human readable lists.

-- For example, here are types of famous people and the questions your data could answer:

-- Movie stars: What movies are they in? Are they married to each other?
-- Singers: What songs did they write? Where are they from?
-- Authors: What books did they write?
-- Fictional characters: How are they related to other characters? What books do they show up in?



CREATE TABLE people (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, job_id INTEGER, couple_id INTEGER);

INSERT INTO people (name, job_id, couple_id) VALUES ("Lionel Messi", 1, 4);
INSERT INTO people (name, job_id, couple_id) VALUES ("Cristiano Ronaldo", 1, 5);
INSERT INTO people (name, job_id, couple_id) VALUES ("Hossam Habib", 3, 6);
INSERT INTO people (name, job_id, couple_id) VALUES ("Antonella", 2, 1);
INSERT INTO people (name, job_id, couple_id) VALUES ("Georgina", 2, 2);
INSERT INTO people (name, job_id, couple_id) VALUES ("Shereen", 3, 3);
INSERT INTO people (name, job_id, couple_id) VALUES ("Brad Pitt", 4, 8);
INSERT INTO people (name, job_id, couple_id) VALUES ("Angelina Golie", 4, 7);
INSERT INTO people (name, job_id, couple_id) VALUES ("Ranfeer Singh", 4, 10);
INSERT INTO people (name, job_id, couple_id) VALUES ("Depeka Badkoun", 4, 9);
INSERT INTO people (name, job_id) VALUES ("Jake Jyllenhal", 4);
INSERT INTO people (name, job_id) VALUES ("Son Men Heung", 1);

CREATE TABLE jobs (id INTEGER PRIMARY KEY AUTOINCREMENT, job_name TEXT);

INSERT INTO jobs (job_name) VALUES ("Football Player");
INSERT INTO jobs (job_name) VALUES ("Model");
INSERT INTO jobs (job_name) VALUES ("Singer");
INSERT INTO jobs (job_name) VALUES ("Actor");



-- Queries:

-- all the people and their jobs
SELECT name, job_name 
 FROM people 
 JOIN jobs 
 ON people.job_id == jobs.id;

-- all the people and their partners (even if they don't have a partner)
SELECT people.name, people_c.name
 FROM people
 LEFT OUTER JOIN people people_c
 ON people.couple_id == people_c.id
