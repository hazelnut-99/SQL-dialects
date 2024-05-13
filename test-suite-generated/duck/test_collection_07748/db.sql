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
CREATE TABLE integers(i INTEGER);
CREATE TABLE t1 (id INTEGER, ch CHAR(1)) ;
INSERT INTO t1 VALUES (1, 'A');
INSERT INTO t1 VALUES (2, 'B');
INSERT INTO t1 VALUES (NULL, 'B');
create table strings as select i, i::varchar s, (i % 1023)::varchar ms, (i / 2023)::varchar ds from integers;
CREATE  TABLE "data" ("Store" INTEGER, "Dept" INTEGER, "Date" DATE, "Weekly_Sales" DOUBLE, "IsHoliday" BOOLEAN);
CREATE TABLE dbplyr_052 (x INTEGER, g DOUBLE, w int);
INSERT INTO dbplyr_052 VALUES (1,1, 42),(2,1, 42),(3,1, 42),(2,2, 42),(3,2, 42),(4,2, 42);
create table temp as select * from range(0, 10000) temp(x);
CREATE TABLE mtcars (mpg DECIMAL, cyl INTEGER, disp DECIMAL, hp INTEGER, drat DECIMAL, wt DECIMAL, qsec DECIMAL, vs INTEGER, am INTEGER, gear INTEGER, carb INTEGER);
INSERT INTO mtcars VALUES ('21.0', '6', '160.0', '110', '3.90', '2.620', '16.46', '0', '1', '4', '4');
INSERT INTO mtcars VALUES ('21.0', '6', '160.0', '110', '3.90', '2.875', '17.02', '0', '1', '4', '4');
INSERT INTO mtcars VALUES ('22.8', '4', '108.0', '93', '3.85', '2.320', '18.61', '1', '1', '4', '1');
INSERT INTO mtcars VALUES ('21.4', '6', '258.0', '110', '3.08', '3.215', '19.44', '1', '0', '3', '1');
INSERT INTO mtcars VALUES ('18.7', '8', '360.0', '175', '3.15', '3.440', '17.02', '0', '0', '3', '2');
INSERT INTO mtcars VALUES ('18.1', '6', '225.0', '105', '2.76', '3.460', '20.22', '1', '0', '3', '1');
INSERT INTO mtcars VALUES ('14.3', '8', '360.0', '245', '3.21', '3.570', '15.84', '0', '0', '3', '4');
INSERT INTO mtcars VALUES ('24.4', '4', '146.7', '62', '3.69', '3.190', '20.00', '1', '0', '4', '2');
INSERT INTO mtcars VALUES ('22.8', '4', '140.8', '95', '3.92', '3.150', '22.90', '1', '0', '4', '2');
INSERT INTO mtcars VALUES ('19.2', '6', '167.6', '123', '3.92', '3.440', '18.30', '1', '0', '4', '4');
INSERT INTO mtcars VALUES ('17.8', '6', '167.6', '123', '3.92', '3.440', '18.90', '1', '0', '4', '4');
INSERT INTO mtcars VALUES ('16.4', '8', '275.8', '180', '3.07', '4.070', '17.40', '0', '0', '3', '3');
INSERT INTO mtcars VALUES ('17.3', '8', '275.8', '180', '3.07', '3.730', '17.60', '0', '0', '3', '3');
INSERT INTO mtcars VALUES ('15.2', '8', '275.8', '180', '3.07', '3.780', '18.00', '0', '0', '3', '3');
INSERT INTO mtcars VALUES ('10.4', '8', '472.0', '205', '2.93', '5.250', '17.98', '0', '0', '3', '4');
INSERT INTO mtcars VALUES ('10.4', '8', '460.0', '215', '3.00', '5.424', '17.82', '0', '0', '3', '4');
INSERT INTO mtcars VALUES ('14.7', '8', '440.0', '230', '3.23', '5.345', '17.42', '0', '0', '3', '4');
INSERT INTO mtcars VALUES ('32.4', '4', '78.7', '66', '4.08', '2.200', '19.47', '1', '1', '4', '1');
INSERT INTO mtcars VALUES ('30.4', '4', '75.7', '52', '4.93', '1.615', '18.52', '1', '1', '4', '2');
INSERT INTO mtcars VALUES ('33.9', '4', '71.1', '65', '4.22', '1.835', '19.90', '1', '1', '4', '1');
INSERT INTO mtcars VALUES ('21.5', '4', '120.1', '97', '3.70', '2.465', '20.01', '1', '0', '3', '1');
INSERT INTO mtcars VALUES ('15.5', '8', '318.0', '150', '2.76', '3.520', '16.87', '0', '0', '3', '2');
INSERT INTO mtcars VALUES ('15.2', '8', '304.0', '150', '3.15', '3.435', '17.30', '0', '0', '3', '2');
INSERT INTO mtcars VALUES ('13.3', '8', '350.0', '245', '3.73', '3.840', '15.41', '0', '0', '3', '4');
INSERT INTO mtcars VALUES ('19.2', '8', '400.0', '175', '3.08', '3.845', '17.05', '0', '0', '3', '2');
INSERT INTO mtcars VALUES ('27.3', '4', '79.0', '66', '4.08', '1.935', '18.90', '1', '1', '4', '1');
INSERT INTO mtcars VALUES ('26.0', '4', '120.3', '91', '4.43', '2.140', '16.70', '0', '1', '5', '2');
INSERT INTO mtcars VALUES ('30.4', '4', '95.1', '113', '3.77', '1.513', '16.90', '1', '1', '5', '2');
INSERT INTO mtcars VALUES ('15.8', '8', '351.0', '264', '4.22', '3.170', '14.50', '0', '1', '5', '4');
INSERT INTO mtcars VALUES ('19.7', '6', '145.0', '175', '3.62', '2.770', '15.50', '0', '1', '5', '6');
INSERT INTO mtcars VALUES ('15.0', '8', '301.0', '335', '3.54', '3.570', '14.60', '0', '1', '5', '8');
INSERT INTO mtcars VALUES ('21.4', '4', '121.0', '109', '4.11', '2.780', '18.60', '1', '1', '4', '2');
create table a as select case when range%2==0 then interval '1 year' else interval '2 years' end j, range::integer AS i from range(1, 5, 1);
create table df as 
	select d, i v1 
	from 
		range(date '2017-01-01', date '2020-12-31', interval '1' day) t(d), 
		range(3000) i
	;
CREATE TABLE db_city (name VARCHAR, city VARCHAR COLLATE NOCASE);
INSERT INTO db_city VALUES
	('DuckDB', 'Amsterdam'), 
	('MonetDB','amsterdam'),
	('VectorWise', 'Amstërdam');
;
