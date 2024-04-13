CREATE TABLE tbl(name VARCHAR, style VARCHAR, brewery_id INTEGER, abv DOUBLE, ibu INTEGER);;
SELECT FIRST(name), FIRST(abv)
FROM tbl
GROUP BY style
ORDER BY abv DESC;;
SELECT FIRST(name)||abv
FROM tbl;
