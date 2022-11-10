-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS candies;
DROP TABLE IF EXISTS purses;
DROP TABLE IF EXISTS cookies;

CREATE TABLE movies (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY,
    title VARCHAR,
    director VARCHAR,
    released INT NOT NULL
);

INSERT INTO 
  movies (title, director, released)
VALUES
  ('Star Wars'),
  ('Lord Of The Rings'),
  ('Black Panther'),
  ('Ponyo');

CREATE TABLE games (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY,
    title VARCHAR,
    publisher VARCHAR,
    released INT NOT NULL,
);

INSERT INTO 
  games (title, publisher, released)
VALUES
  ('The Sims 4'),
  ('Animal Crossing'),
  ('Skyrim'),
  ('GTA 5'),
  ('Uncharted');

CREATE TABLE candies (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY,
    name VARCHAR,
    type VARCHAR,
    manufacturer VARCHAR,
);

INSERT INTO 
  candies (name, type, manufacturer)
VALUES
  ('Hersheys Kisses'),
  ('Reeses Peanut Butter Cups'),
  ('Kit Kat'),
  ('Milky Way');

CREATE TABLE purses (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY,
    brand VARCHAR,
    name VARCHAR,
    style VARCHAR,
    price INT NOT NULL
);

INSERT INTO 
  purses (brand, name, style, price)
VALUES
  ('Dior'),
  ('Louis Vuitton'),
  ('Telfar'),
  ('YSL')
  ('Chanel');

  CREATE TABLE cookies (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY,
    name VARCHAR,
    total_cookies INT NOT NULL,
    bake_time INT NOT NULL,
    deliciousness INT NOT NULL
);

INSERT INTO 
  cookies (name, total_cookies, bake_time, deliciousness)
VALUES
  ('Chocolate Chip'),
  ('Sugar Cookie'),
  ('Snickerdoodle'),
  ('Peanut Butter');