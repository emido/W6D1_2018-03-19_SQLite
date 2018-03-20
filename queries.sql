-- SELECT habitats.habitat_name, specieses.species_name
-- FROM habitats
-- JOIN specieses ON habitats.id = specieses.habitat_id
-- JOIN pray_preditor ON specieses.id = pray_preditor.preditor_id
-- WHERE pray_preditor.preditor_id = 3;

-- ONly specieses that are prayed on by chimps.

SELECT avg(habitats.rainfall) AS average_rainfall_🌧️
FROM habitats
JOIN specieses ON habitats.id = specieses.habitat_id
JOIN pray_preditor ON specieses.id = pray_preditor.preditor_id
WHERE pray_preditor.preditor_id = pray_preditor.pray_id;