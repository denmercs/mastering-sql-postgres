/** 
RUNNING POSTGRESQL COMMANDS
inside the directory
---------------------------

psql -U postgres creaturesdb < creatures.sql 
psql -U postgres creaturesdb
\d
\h --> help


SELECT name, power FROM wizards;
SELECT * from wizards, elves;
SELECT * FROM wizards, elves, hobbits;
SELECT * FROM elves ORDER BY speed;
SELECT * FROM elves ORDER BY speed ASC;
SELECT * FROM elves ORDER BY name;
SELECT * FROM elves LIMIT 2;
SELECT * FROM elves WHERE speed > 9;
**/


CREATE TABLE  wizards(
    name character varying(50), 
    power character varying(50)
);

CREATE TABLE elves(
    name character varying(50),
    speed real
);

CREATE TABLE hobbits(
    name character varying(50),
    personality character varying(50)
);

INSERT INTO wizards(name, power)
VALUES
('Gandalf', 'fireworks'),
('Sauron', 'rings'),
('Saruman', 'betrayal');

INSERT INTO elves(name, speed)
VALUES
('Legolas', 10),
('Arwen', 9),
('Elrond', 5);

INSERT INTO hobbits(name, personality)
VALUES
('Frodo', 'careful'),
('Sam', 'brave'),
('Bilbo', 'greedy');

