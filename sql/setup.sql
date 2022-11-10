-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS candies;
DROP TABLE IF EXISTS purses;
DROP TABLE IF EXISTS cookies;

CREATE TABLE movies (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR,
    director VARCHAR,
    released DATE
);

INSERT INTO 
  movies (title, director, released)
VALUES
  ('Star Wars: A New Hope', 'George Lucas', '1977-05-25'),
  ('Lord Of The Rings: The Fellowship Of The Ring', 'Peter Jackson', '2001-12-10'),
  ('Black Panther', 'Ryan Coogler', '2018-02-16'),
  ('Ponyo', 'Hayao Miyazaki', '2008-07-19');

CREATE TABLE games (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR,
    publisher VARCHAR,
    released DATE
);

INSERT INTO 
  games (title, publisher, released)
VALUES
  ('The Sims 4', 'Electronic Arts', '2014-09-02'),
  ('Animal Crossing: New Horizons', 'Nintendo', '2020-03-20'),
  ('Skyrim', 'Bethesda', '2011-11-11'),
  ('GTA 5', 'Rockstar Games', '2013-09-17'),
  ('Uncharted: Drakes Fortune', 'Naughty Dog', '2007-11-19');

CREATE TABLE candies (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR,
    type VARCHAR,
    manufacturer VARCHAR
);

INSERT INTO 
  candies (name, type, manufacturer)
VALUES
  ('Laffy Taffy', 'Taffy', 'Ferrara Candy Company' ),
  ('Reeses Peanut Butter Cups', 'Chocolate', 'The Hersheys Company'),
  ('Werthers Original', 'Confectionery', 'August Storck'),
  ('Baby Bottle Pop', 'Lollipops', 'Topps');

CREATE TABLE purses (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    brand VARCHAR,
    name VARCHAR,
    material VARCHAR,
    price INT NOT NULL
);

INSERT INTO 
  purses (brand, name, material, price)
VALUES
  ('Dior', 'Saddle Bag With Strap', 'Grained Calfskin', 4200 ),
  ('Louis Vuitton', 'ONTHEGO GM', 'Cowhide Leather', 3500),
  ('Telfar', 'Large Shopping Bag', 'Faux Leather', 257),
  ('YSL', 'Le 5 A 7 Hobo Bag','Calfskin Leather', 2400),
  ('Prada', 'Re-Edition 2005', 'Saffiano Leather', 2490);

  CREATE TABLE cookies (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR,
    totalCookies INT NOT NULL,
    bakeTime INT NOT NULL,
    deliciousness INT NOT NULL
);

INSERT INTO 
  cookies (name, totalCookies, bakeTime, deliciousness)
VALUES
  ('Chocolate Chip', 60, 10, 10),
  ('Sugar Cookie', 12, 12, 8),
  ('Snickerdoodle', 24, 10, 7),
  ('Peanut Butter', 24, 18, 4);