DROP TABLE IF EXISTS tags;
CREATE TABLE tags (
    id String,
    seqs Array(UInt8),
    create_time DateTime DEFAULT now()
) engine=ReplacingMergeTree()
ORDER BY (id);
INSERT INTO tags(id, seqs) VALUES ('id1', [1,2,3]), ('id2', [0,2,3]), ('id1', [1,3]);
WITH
    (SELECT [0, 1, 2, 3]) AS arr1
SELECT arraySort(arrayIntersect(argMax(seqs, create_time), arr1)) AS common, id
FROM tags
WHERE id LIKE 'id%'
GROUP BY id
ORDER BY id;
DROP TABLE tags;
drop table if exists TestTable;
create table TestTable (column String, start DateTime, end DateTime) engine MergeTree order by start;
insert into TestTable (column, start, end) values('test', toDateTime('2020-07-20 09:00:00'), toDateTime('2020-07-20 20:00:00')),('test1', toDateTime('2020-07-20 09:00:00'), toDateTime('2020-07-20 20:00:00')),('test2', toDateTime('2020-07-20 09:00:00'), toDateTime('2020-07-20 20:00:00'));
