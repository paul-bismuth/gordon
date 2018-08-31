SET client_min_messages TO WARNING;
CREATE SCHEMA IF NOT EXISTS gordon;

-- Set default search_path to schema
SET search_path TO gordon,public;

-- Creation of types
DROP TYPE IF EXISTS category;
DROP TYPE IF EXISTS direction;

CREATE TYPE direction AS (title varchar(100), text text);
CREATE TYPE category AS ENUM ('starter', 'main', 'dessert');

-- Creation of tables
CREATE TABLE IF NOT EXISTS ingredient (
    id SERIAL PRIMARY KEY,
    name varchar(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS utensil (
    id serial PRIMARY KEY,
    name varchar(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS recipe (
    id serial PRIMARY KEY,
    description text,
    name text UNIQUE NOT NULL,
    directions direction[],
    difficulty smallint CONSTRAINT difficulty_borders CHECK
      (difficulty > 0 AND difficulty < 6),
    preparation smallint,
    cook smallint,
    wait smallint,
    people smallint CONSTRAINT people_borders CHECK
      (people > 0 AND people < 13),
    category category
);

CREATE TABLE IF NOT EXISTS recipe_ingredients (
    fk_recipe integer REFERENCES recipe (id),
    fk_ingredient integer REFERENCES ingredient (id),
    quantity smallint,
    measurement text,
    PRIMARY KEY (fk_recipe, fk_ingredient)
);

CREATE TABLE IF NOT EXISTS recipe_utensils (
    fk_recipe integer REFERENCES recipe (id),
    fk_utensil integer REFERENCES utensil (id),
    PRIMARY KEY (fk_recipe, fk_utensil)
);
