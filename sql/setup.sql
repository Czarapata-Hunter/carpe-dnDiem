
-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS artificer;
DROP TABLE IF EXISTS barbarian;
DROP TABLE IF EXISTS blood_hunter; 
DROP TABLE IF EXISTS cleric;
DROP TABLE IF EXISTS druid;
DROP TABLE IF EXISTS monk; 
DROP TABLE IF EXISTS paladin; 
DROP TABLE IF EXISTS ranger; 
DROP TABLE IF EXISTS sorcerer;
DROP TABLE IF EXISTS warlock; 
DROP TABLE IF EXISTS warrior; 
DROP TABLE IF EXISTS wizard; 



CREATE TABLE users (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  email VARCHAR,
  password_hash VARCHAR NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL
);


CREATE TABLE artificer(
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
);
CREATE TABLE barbarian (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
  );
CREATE TABLE blood_hunter (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
  );
CREATE TABLE cleric (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
);
CREATE TABLE druid (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
);
CREATE TABLE monk (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
  );
CREATE TABLE paladin (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
);
CREATE TABLE ranger (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
);
CREATE TABLE sorcerer (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
);
CREATE TABLE warlock (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
);
CREATE TABLE warrior (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
);
CREATE TABLE wizard(
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL,
); 

INSERT INTO barbarian (die_value, result) VALUES
(1, 'In the midst of your rage you shrivel up and start to cry'),
(1, 'They said you were too mad to die and yet'),
(2, 'while charging fearlessly you become timid and deal a low blow of damage'),
(2, 'Be thankful for your natural damage resistance today'),
(2, 'STOP CLEAVE'),
(3, 'During your attack you notice a butterfly and decide to stare at it for a while'),
(3, 'Not everything needs to die'),
(3, 'Take some deep breaths before you try anything crazy'),
(4, 'your strength was enough to not get pushed over'),
(4, 'You start hittin and you aint quittin'),
(4, 'CLEAVE'),
(5, 'Your blow dealt massive damage and everyone loves you'),
(5, 'Your weapon is only a feathers weight on this day'),
(5, 'Your enemies should make themselves unfindable if they wish to see tomorrow'),
