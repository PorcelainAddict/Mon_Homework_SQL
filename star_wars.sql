DROP TABLE lightsabers;
DROP TABLE characters;



CREATE TABLE characters(
 id SERIAL PRIMARY KEY,
 name VARCHAR(225),
 darkside BOOLEAN,
 age INT
);

CREATE TABLE lightsabers(
  id SERIAL PRIMARY KEY,
  hilt_metal VARCHAR(255) NOT NULL,
  colour VARCHAR(255) NOT NULL,
  character_id INT REFERENCES characters(id)
);



INSERT INTO characters (name, darkside, age)
VALUES ('Obi-Wan Kenonbi', false, 27);
INSERT INTO characters (name, darkside, age)
VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age)
VALUES ('Darth Maul', true, 32);
INSERT INTO characters (name, darkside, age)
VALUES ('Yoda', false, 300);
SELECT * FROM characters;

INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('green', 'palladium', 1);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red', 'gold', 2);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('jade', 'silver', 4);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red', 'brick', 2);

-- INSERT INTO lightsabers (colour) VALUES ('red');

SELECT * FROM lightsabers WHERE character_id = 2;





--
-- -- SELECT * FROM characters;
-- -- SELECT name FROM characters;
-- -- SELECT COUNT(*) FROM characters;
--
-- UPDATE characters SET darkside = true;
--
-- UPDATE characters SET darkside = true WHERE name = 'Anakin Skywalker';
--
-- UPDATE characters SET (name, darkside) = ('Darth Vader', true)
-- WHERE name = 'Anakin Skywalker';
--
-- -- SELECT * FROM characters;
--
-- INSERT INTO characters (name, darkside, age)
-- VALUES ('Luke Skywalker', false, 17);
--
-- -- SELECT name FROM characters;
--
-- UPDATE characters SET (age, darkside) = (99, false) WHERE name = 'Obi-Wan Kenonbi';
--
-- -- SELECT * FROM characters;
--
-- UPDATE characters SET darkside = false WHERE name = 'Yoda'
--
--
--
-- DELETE FROM characters WHERE name = 'Darth Maul';
--
-- SELECT * FROM characters;
--
-- INSERT INTO characters (name, darkside, age)
-- VALUES ('Stormtrooper', true, 32);
-- INSERT INTO characters (name, darkside, age)
-- VALUES ('Stormtrooper', true, 32);
-- INSERT INTO characters (name, darkside, age)
-- VALUES ('Stormtrooper', true, 32);
-- INSERT INTO characters (name, darkside, age)
-- VALUES ('Stormtrooper', true, 32);
-- INSERT INTO characters (name, darkside, age)
-- VALUES ('Stormtrooper', true, 32);
--
-- SELECT * from characters;
--
-- UPDATE characters SET age = 26 WHERE id = 8;
--
-- SELECT * from characters;
