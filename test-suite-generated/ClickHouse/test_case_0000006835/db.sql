DROP TABLE IF EXISTS logs;
CREATE TABLE logs( 
  date_visited DateTime, 
  date Date MATERIALIZED toDate(date_visited)
) ENGINE = MergeTree() ORDER BY tuple();
