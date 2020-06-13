/**
    createdb -U postgres monstersdb
    psql -U postgres monstersdb

    // creating user superadmin
    CREATE USER node_user WITH SUPERUSER PASSWORD 'node_password';
    SELECT * FROM pg_user;

    npm run configure
**/

CREATE TABLE monsters
(
    id serial,
    name character varying(50),
    personality character varying(50)
);

CREATE TABLE habitats
(
    id serial,
    name character varying(50),
    climate character varying(50),
    temperature int
);

CREATE TABLE lives
(
    monster character varying(50),
    habitat character varying(50)
);

INSERT INTO monsters
    (name, personality)
VALUES
    ('Fluffy', 'aggressive'),
    ('Noodles', 'impatient'),
    ('Rusty', 'passionate');

INSERT INTO habitats
    (name, climate, temperature)
VALUES
    ('desert', 'dry', 100),
    ('forrest', 'haunted', 70),
    ('mountain', 'icy', 30);

INSERT INTO lives
    (monster, habitat)
VALUES
    ('Fluffy', 'desert'),
    ('Noodles', 'forrest'),
    ('Rusty', 'mountain');