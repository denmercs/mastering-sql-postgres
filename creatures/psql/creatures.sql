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


// TO TERMINATE CONNECTIONS 
REVOKE CONNECT ON DATABASE TARGET_DB FROM public;

SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'TARGET_DB';

dropdb -U postgres creaturesdb

// CREATE database
createdb -U postgres creaturesdb

// Link into our sql script
psql -U postgres creaturesdb < creatures.sql

SELECT * FROM allies JOIN elves ON allies.elf = elves.name;
SELECT * FROM guardians JOIN hobbits ON guardians.hobbit = hobbits.name;
SELECT * FROM guardians JOIN hobbits ON guardians.hobbit = hobbits.name JOIN elves ON guardians.elf = elves.name;
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

CREATE TABLE allies(
    wizard character varying(50), 
    elf character varying(50)
);

CREATE TABLE guardians(
    elf character varying(50),
    hobbit character varying(50)
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

INSERT INTO allies(wizard, elf)
VALUES
('Gandalf', 'Legolas'),
('Gandalf', 'Arwen'),
('Saruman', 'Elrond'),
('Saruman', 'Legolas');

INSERT INTO guardians(elf, hobbit)
VALUES
('Legolas', 'Frodo'),
('Arwen', 'Sam'),
('Elrond', 'Bilbo');