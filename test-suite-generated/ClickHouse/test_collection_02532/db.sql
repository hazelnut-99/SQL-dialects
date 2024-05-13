DROP TABLE IF EXISTS mmm;
CREATE TABLE mmm ENGINE=MergeTree ORDER BY number
AS SELECT number, rand() % 10 AS a FROM numbers(1000);
