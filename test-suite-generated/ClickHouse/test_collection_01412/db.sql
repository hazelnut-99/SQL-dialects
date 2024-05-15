DROP TABLE IF EXISTS logs;
CREATE TABLE logs( 
  date_visited DateTime, 
  date Date MATERIALIZED toDate(date_visited)
) ENGINE = MergeTree() ORDER BY tuple();
INSERT INTO logs VALUES('2019-11-20 00:00:00');
