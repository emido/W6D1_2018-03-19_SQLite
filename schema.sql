DROP TABLE specieses;
DROP TABLE habitats;
DROP TABLE pray_preditor;

CREATE TABLE specieses (
  id INTEGER PRIMARY KEY,
  species_name VARCHAR(50),
  sound VARCHAR(255),
  habitat_id INTEGER
);
CREATE TABLE habitats (
  id INTEGER PRIMARY KEY,
  habitat_name VARCHAR(50),
  rainfall INTEGER
);
CREATE TABLE pray_preditor (
  id INTEGER PRIMARY KEY,
  pray_id INTEGER,
  preditor_id INTEGER
);

INSERT INTO habitats (id, habitat_name, rainfall) 
VALUES (1, "river", 0), (2, "jungle", 100), (3, "savanah", 10);

INSERT INTO specieses (id, species_name, sound, habitat_id)
VALUES (1, "crocodile", "below", 1),
(2, "leopard", "🐱", 3),
(3, "chimp", "🍌", 2),
(4, "red monkey", "🐒", 2),
(5, "vulture", "🐦", 2);

INSERT INTO pray_preditor (pray_id, preditor_id)
VALUES (4, 1), (3, 1), (2, 1), (1, 1), -- Crocodile
(2, 2), (3, 2), (4, 2), -- leapard
(4, 3), -- chimp
(1, 5), (2, 5), (3, 5), (4, 5), (5, 5);
