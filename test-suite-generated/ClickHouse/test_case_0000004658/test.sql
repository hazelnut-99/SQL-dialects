WITH
x AS (SELECT number AS a FROM numbers(10)),
y AS (SELECT number AS a FROM numbers(5)),
z AS (SELECT toUInt64(1) b)
SELECT * FROM x JOIN y USING a WHERE a in (SELECT * FROM z);
