CREATE TABLE eventlog AS
	SELECT ts,
		CHR((RANDOM() * 3 + 65)::INTEGER) AS activity_name,
		(RANDOM() * 100)::INTEGER AS case_id
	FROM generate_series('2023-01-01'::TIMESTAMP, '2023-02-01'::TIMESTAMP, INTERVAL 1 HOUR) tbl(ts);
CREATE VIEW cse AS 
WITH t AS (SELECT
    string_agg(activity_name, ',' order by ts asc, activity_name) as trace,
    1 as cnt
from
    eventlog
group by case_id
)
SELECT
    trace,
    sum(cnt) as cnt_trace,
    sum(cnt_trace) over () as cnt_total,
    sum(cnt) / sum(cnt_trace) over () as rel,
    sum(cnt_trace) over (
         order by cnt_trace desc 
         ROWS between UNBOUNDED PRECEDING and CURRENT ROW) 
      / sum(cnt_trace) over () 
      as rel
from t
group by trace
order by cnt_trace desc;
EXPLAIN FROM cse;
EXPLAIN FROM cse;
EXPLAIN FROM cse;
EXPLAIN FROM cse;
CREATE VIEW noncse AS
SELECT
    quantile(x, 0.3) over() as q3,
    quantile(x, 0.7) over() as q7
FROM generate_series(1, 10) as tbl(x);
EXPLAIN FROM noncse;
CREATE TABLE flog AS
	SELECT (random() * 100)::INTEGER AS laufzeit
	, TIMESTAMP '2020-10-15 16:45:00' + INTERVAL (random() * 15 * 60) SECOND AS "timestamp"
	FROM range(26000);
CREATE TABLE Scoreboard(TeamName VARCHAR, Player VARCHAR, Score INTEGER);
INSERT INTO Scoreboard VALUES ('Mongrels', 'Apu', 350);
INSERT INTO Scoreboard VALUES ('Mongrels', 'Ned', 666);
INSERT INTO Scoreboard VALUES ('Mongrels', 'Meg', 1030);
INSERT INTO Scoreboard VALUES ('Mongrels', 'Burns', 1270);
INSERT INTO Scoreboard VALUES ('Simpsons', 'Homer', 1);
INSERT INTO Scoreboard VALUES ('Simpsons', 'Lisa', 710);
INSERT INTO Scoreboard VALUES ('Simpsons', 'Marge', 990);
INSERT INTO Scoreboard VALUES ('Simpsons', 'Bart', 2010);
CREATE TABLE list_extract_test(i INTEGER, g INTEGER);
INSERT INTO list_extract_test VALUES (1, 1), (2, 1), (3, 2), (NULL, 3), (42, 3);
CREATE VIEW list_window AS
SELECT g, LIST(i) OVER (PARTITION BY g ORDER BY i ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as l
FROM list_extract_test;
create table list_combine_test as 
	select range%3 j, 
		range::varchar AS s, 
		case when range%3=0 then '-' else '|' end sep 
	from range(1, 65);
CREATE TABLE tenk1 ( unique1 int4, unique2 int4, two int4, four int4, ten int4, twenty int4, hundred int4, thousand int4, twothousand int4, fivethous int4, tenthous int4, odd int4, even int4, stringu1 string, stringu2 string, string4 string );
insert into tenk1 values (4, 1621, 0, 0, 4, 4, 4, 4, 4, 4, 4, 8 ,9 ,'EAAAAA', 'JKCAAA', 'HHHHxx'), (2, 2716, 0, 2, 2, 2, 2, 2, 2, 2, 2, 4 ,5 ,'CAAAAA', 'MAEAAA', 'AAAAxx'), (1, 2838, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2 ,3 ,'BAAAAA', 'EFEAAA', 'OOOOxx'), (6, 2855, 0, 2, 6, 6, 6, 6, 6, 6, 6, 12 ,13 ,'GAAAAA', 'VFEAAA', 'VVVVxx'), (9, 4463, 1, 1, 9, 9, 9, 9, 9, 9, 9, 18 ,19 ,'JAAAAA', 'RPGAAA', 'VVVVxx'),(8, 5435, 0, 0, 8, 8, 8, 8, 8, 8, 8, 16 ,17 ,'IAAAAA', 'BBIAAA', 'VVVVxx'), (5, 5557, 1, 1, 5, 5, 5, 5, 5, 5, 5, 10 ,11,'FAAAAA', 'TFIAAA', 'HHHHxx'), (3, 5679, 1, 3, 3, 3, 3, 3, 3, 3, 3, 6 ,7 ,'DAAAAA', 'LKIAAA', 'VVVVxx'), (7, 8518, 1,3, 7, 7, 7, 7, 7, 7, 7, 14 ,15 ,'HAAAAA', 'QPMAAA', 'OOOOxx'), (0, 9998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ,1 ,'AAAAAA','OUOAAA', 'OOOOxx');
create table issue1472 (permno real, date date, ret real);
insert into issue1472 values
    (10000.0, '1986-02-28'::date, -0.2571428716182709),
    (10000.0, '1986-03-31'::date, 0.36538460850715637),
    (10000.0, '1986-04-30'::date, -0.09859155118465424),
    (10000.0, '1986-05-30'::date, -0.22265625),
    (10000.0, '1986-06-30'::date, -0.005025125574320555)
;
create table issue1697 as
    select mod(b, 100) as a, b from (select b from range(10000) tbl(b)) t;
