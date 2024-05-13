DROP TABLE IF EXISTS 02581_trips;
CREATE TABLE 02581_trips(id UInt32, description String, id2 UInt32, PRIMARY KEY id) ENGINE=MergeTree ORDER BY id;
INSERT INTO 02581_trips SELECT number, '', number FROM numbers(10000);
INSERT INTO 02581_trips SELECT number+10000000, '', number FROM numbers(10000);
INSERT INTO 02581_trips SELECT number+20000000, '', number FROM numbers(10000);
INSERT INTO 02581_trips SELECT number+30000000, '', number FROM numbers(10000);
SYSTEM STOP MERGES 02581_trips;
SYSTEM START MERGES 02581_trips;
DELETE FROM 02581_trips WHERE id IN (SELECT (number*10 + 9)::UInt32 FROM numbers(200000000));
