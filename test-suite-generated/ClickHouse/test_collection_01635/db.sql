DROP TABLE IF EXISTS tztest;
CREATE TABLE tztest
(
    timeBerlin DateTime('Europe/Berlin'), 
    timeLA DateTime('America/Los_Angeles')
)
ENGINE = Memory;
INSERT INTO tztest (timeBerlin, timeLA) VALUES ('2019-05-06 12:00:00', '2019-05-06 12:00:00');
