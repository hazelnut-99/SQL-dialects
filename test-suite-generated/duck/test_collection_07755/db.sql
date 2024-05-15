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
CREATE TABLE empsalary (depname varchar, empno bigint, salary int, enroll_date date);
INSERT INTO empsalary VALUES ('develop', 10, 5200, '2007-08-01'), ('sales', 1, 5000, '2006-10-01'), ('personnel', 5, 3500, '2007-12-10'), ('sales', 4, 4800, '2007-08-08'), ('personnel', 2, 3900, '2006-12-23'), ('develop', 7, 4200, '2008-01-01'), ('develop', 9, 4500, '2008-01-01'), ('sales', 3, 4800, '2007-08-01'), ('develop', 8, 6000, '2006-10-01'), ('develop', 11, 5200, '2007-08-15');
BEGIN TRANSACTION;
CREATE TABLE item(i_category VARCHAR, i_brand VARCHAR, i_price INTEGER);
INSERT INTO item VALUES ('toys', 'fisher-price', 100);
ROLLBACK;
BEGIN TRANSACTION;
CREATE TABLE item(i_category VARCHAR, i_brand VARCHAR, i_item_sk INTEGER);
CREATE TABLE store(s_store_name VARCHAR, s_company_name VARCHAR, s_store_sk INTEGER);
CREATE TABLE date_dim(d_year INTEGER, d_moy INTEGER, d_date_sk INTEGER);
CREATE TABLE store_sales(ss_sales_price DECIMAL, ss_item_sk INTEGER, ss_sold_date_sk INTEGER, ss_store_sk INTEGER);
INSERT INTO item VALUES ('Music', 'exportischolar', 1);
INSERT INTO store VALUES ('ought', 'Unknown', 1);
INSERT INTO date_dim VALUES (1999, 1, 1);
INSERT INTO store_sales VALUES (2.8, 1, 1, 1);
ROLLBACK;
WITH t AS (
	SELECT i, DENSE_RANK() OVER (ORDER BY i % 50) AS d
	FROM range(3000) tbl(i)
), w AS (
	SELECT d, COUNT(*) as c
	FROM t
	GROUP BY ALL
)
SELECT COUNT(*), MIN(d), MAX(d), MIN(c), MAX(c)
FROM w;
WITH t AS (
	SELECT i, DENSE_RANK() OVER (PARTITION BY i // 3000 ORDER BY i % 50) AS d
	FROM range(9000) tbl(i)
), w AS (
	SELECT d, COUNT(*) as c
	FROM t
	GROUP BY ALL
)
SELECT COUNT(*), MIN(d), MAX(d), MIN(c), MAX(c)
FROM w;
CREATE TABLE issue9416(idx VARCHAR, source VARCHAR, project VARCHAR, specimen VARCHAR, sample_id VARCHAR);
INSERT INTO issue9416 VALUES
	('197bc9528efbc76a523d796b749a69f6','json','0bf0b46fb9c01829c55e','e4de2878',NULL),
	('0f62e5fa923495012f3863e7ea05f566','json','d98171d6fe06b3','440ce2bf','9fc93ee404d6bccb69'),
	('9b15a709814582ecbec00d8397852865','json','24ed1657','c3d1f46c','06c234e260a7484'),
	('8569d67b0ccbbf316b360be3bb4fe418','json','d98171d6fe06b3','14875a37','3416100f300c7bd'),
	('d2f02b24d59696079e3d649b403fbb22','json','82e092e750a','e7deeb7f','6d8dded6f044'),
	('60a2b8898440b2f4531268e27b7d3495','json','f657d34b6','46afa8e7','7bb186ce013b'),
	('5aa1982136f3991ad5ed537793d40a0f','json','d58e2b351518','a98b2b0c','ac594941b5d9'),
	('cc70cc91af828c833b5bf20785b91918','json','4953ff4b','8450467c','d1509d0abde0'),
	('7cf99d6372183aab6a9a22205e1b0e96','json','14b5b262c52400','e7deeb7f','6d8dded6f044'),
	('3cf6f7ec6609c6456f6587c441310ace','json','0c155a1ba5','e984dd5b','d374014b756d'),
	('e1223eb2cc51161d32495ff0ad8b34ae','json','f05964c5c4','4f3354c3','10eebe991cf9'),
	('7b8b64bac7c7dc692d1fe76f6eeff2bb','json','6bd9ce7f1d8','492f260c','314d3e061be7'),
	('7b8b64bac7c7dc692d1fe76f6eeff2bb','json','249f40c5d97','492f260c','314d3e061be7'),
	('cd29186ef73b658079d848fca1ebe839','json','6bd9ce7f1d8','492f260c','314d3e061be7'),
	('d67a74eb29392e06b97161d9f3121705','json','0bf0b46fb9c01829c55e','2d28e9ee','0deb6a6b189d309'),
	('9dcc686429408e3319161c39b008f705','json','24ed1657','8450467c','d1509d0abde0'),
	('11788bb5a0477c1bfb31a9f33af80c40','json','4ea4e97b39c4b','4f3354c3','10eebe991cf9'),
	('59bceab687b4004dbeed6291f07af37d','json','6d00cb7409','4f3354c3','10eebe991cf9'),
	('76b23210847e653b6060104da0e86d5b','json','24ed1657','22f4528f','7632cf8f4849404'),
	('2605143ff05ae1ce66b1cc70f80fe53d','json','249f40c5d97','b93c50ce','be70d8b88fff'),
	('1a1864b5f4ed27acfbbf6e5069348a5a','json','6bd9ce7f1d8','6c082f61','ee109745d498'),
	('92200c3306e18e53a41550c6306a3ee4','json','8271fea91bc236c','d6f24fd5',NULL),
	('dd39e08b282cf4a6429bcfefaa2af071','json','249f40c5d97','1396d8b6','3826343264acc9'),
	('3afcae2318313f112b62536fa160678d','json','24ed1657','5311f290','129c0a0fd3e82a8'),
	('3afcae2318313f112b62536fa160678d','json','24ed1657','08b8de7c543d','129c0a0fd3e82a8'),
	('3afcae2318313f112b62536fa160678d','json','24ed1657','ce001fa3a2a4','129c0a0fd3e82a8'),
	('79acd6669071e95a5b2fe5456216ab32','json','24ed1657','5311f290','129c0a0fd3e82a8'),
	('79acd6669071e95a5b2fe5456216ab32','json','24ed1657','08b8de7c543d','129c0a0fd3e82a8'),
	('79acd6669071e95a5b2fe5456216ab32','json','24ed1657','ce001fa3a2a4','129c0a0fd3e82a8'),
	('d0a7e9d3eda115120021a895a81db8be','json','24ed1657','5311f290','129c0a0fd3e82a8'),
	('d0a7e9d3eda115120021a895a81db8be','json','24ed1657','08b8de7c543d','129c0a0fd3e82a8'),
	('d0a7e9d3eda115120021a895a81db8be','json','24ed1657','ce001fa3a2a4','129c0a0fd3e82a8'),
	('a59a3a4ad8d2ab867c9b830974588645','json','24ed1657','5311f290','129c0a0fd3e82a8'),
	('a59a3a4ad8d2ab867c9b830974588645','json','24ed1657','08b8de7c543d','129c0a0fd3e82a8'),
	('a59a3a4ad8d2ab867c9b830974588645','json','24ed1657','ce001fa3a2a4','129c0a0fd3e82a8'),
	('6193ffd18b0da96e80e2a38baac9a7e4','json','14b5b262c52400','3c03d64c34','1b5cfdd6a5de'),
	('6193ffd18b0da96e80e2a38baac9a7e4','rprt','1a5cf3833',NULL,'1b5cfdd6a5de'),
	('ecf1739fed72151784dab88dbe2f2aa9','json','14b5b262c52400','3c03d64c34','1b5cfdd6a5de'),
	('ecf1739fed72151784dab88dbe2f2aa9','rprt','1a5cf3833',NULL,'1b5cfdd6a5de'),
	('204cd9b011e2cab64bcdf1b3d668a9ef','json','7d9a79908fcc','8274fbb94a','5a928f187ed19b2'),
	('c8360bd0e28ea5bbffd66e76886bbccb','json','d6b3921920','a63d8','0e06e1f9f6580fb'),
	('c8360bd0e28ea5bbffd66e76886bbccb','rprt','d6b3921920',NULL,'0e06e1f9f6580fb'),
	('c6eb00fb5a023557439a9b898c7cc3ea','json','d6b3921920','a63d8','f891b965f2561d9'),
	('c6eb00fb5a023557439a9b898c7cc3ea','rprt','d6b3921920',NULL,'f891b965f2561d9'),
	('f2dacff642ad3f805229d7e976810f1d','rprt','d6b3921920',NULL,'6817ec9d3b7b726'),
	('8def2cd0450b56c3e0c9bb6da67b842b','rprt','d6b3921920',NULL,'6817ec9d3b7b726'),
	('6db7ef8b4a9e41bb41971dced546131b','rprt','d6b3921920',NULL,'bc32d9059dde8ba'),
	('4524efca2bf1aa0565f03a9aaf9771d2','json','14b5b262c52400','cf3b1945e2','5c0157ef5367'),
	('6f63a84401944c32b9a329af08d6473c','json','8b736466c7adc6','d0acb13cd9','d734a9d755ef6276'),
	('8ef4bc6ac39585b2ec45218ad1d06464','rprt','67b7fd541ae7e','c117f7db3b','cf94993616ef'),
	('01899ea72c60bd5e614132c99fffd48e','json','14b5b262c52400','2a50feb98b','eead79cf6ef0'),
	('b1407bdda20fad91cb9072c08c5c23a8','json','3608008ba4c9','e4840a8e75','139e04ae890beb8'),
	('2091d4939af33d3911b057ed446367f1','rprt','6522e2c00f5b87d5b','f2b8d4d02d','23de2ff19778'),
	('81f36975a777a353b0861874e03d0f95','rprt','14b5b262c52400','e05f1a1ec2','acf577df3840'),
	('5b3961bf4255e83ee1e7e795e14c8119','rprt','b9cbf09f3366297','1109e52066','47afce7dacb5'),
	('0b53312f91b22db1bf7c18251a199d36','json','14b5b262c52400','c8561fe22f','6e30638eaaf6'),
	('e277322f26cd477bae52240c46678286','json','14b5b262c52400','d185c22b68','42a062d827c'),
	('71150d87b4e7852448a524e03817efc4','json','bb87c32c765d1','3e60145162','8e072527a7cf82d'),
	('1039fc7de3c12dad1e7d3bd9e73827de','json','d6b3921920','65c0a3e2a9','9ff56f55c850390'),
	('3c67c976516f8a5a1044ad9a8935cf02','rprt','bdc5a7fd6ca','dfc9fd824b','bfbef96674e73829'),
	('56ab3e25a40913b6e961cff217a83750','json','24ed1657','724e7df1','fc81c8a39465'),
	('5f726fff8b638d0ac1ba9dcb9a4037be','json','14b5b262c52400','b1bddeb160','1e2b4afd36f'),
	('4448f84ff7496b6d1a0d311838be238d','json','14b5b262c52400','50a45c4db0','83ef23a7f827'),
	('216414a29307f00aecfc9e5cba7ac821','json','c05bced980e6381','949ae57ce4','05f77bf546f'),
	('5327f9ec2dc334bde0222b52de4d65ef','json','67b7fd541ae7e','8aea85ada0','c0048c2b539e'),
	('d3c9b836ce61a53daf39d813c97a36b9','json','249f40c5d97','35d05d68','db4853c8a41'),
	('6d4affc7041c65d0f56551f4d4370a7d','rprt','d6b3921920',NULL,'84624aa9753a681'),
	('caab5b21770a321067fb2052c2eea792','rprt','14b5b262c52400','8b8da80085','d427763bd611'),
	('eecdf1e7e87c04c56328b0d37fb06349','json','14b5b262c52400','3bfabeb9d9','7c613b2d73cc'),
	('b533aa0c674433a09cee8555b35b7ca6','json','9c3b3335f959','f9d8c52aa2','d082926c94a8a60'),
	('6dfe749835d6a895a3a116580dc4217a','rprt','14b5b262c52400','6dd9b2d650','b3d88f29e3e5'),
	('6150133032c53a35ce28c6308931137d','rprt','b04a2a75f0c4a9','9f3026e2','a1bcb7232a50'),
	('47e77fd2d027114df5ac9daa17237934','json','b04a2a75f0c4a9','6e07291b','564347d748e0'),
	('0d66c06fd2a29247b4bc798591f15cbc','rprt','093a316f6c9c0856b','ebcca53e20','4c767b833785b25b072e'),
	('997371252646aed7ac3fa43da1f69ef2','rprt','d6b3921920','5be2b052','612fc8691ec7852'),
	('e963d96d34e35ba06cea05ff78e84e41','json','33debfe262d7','114a0c85','f6d1ea3976b0a03'),
	('f50959f1079cd24b7dcb6370d8e63344','rprt','1a5cf3833',NULL,'a1b77be48d05'),
	('4e44d4c96d3d26290d13e5f9bc14d8dd','rprt','67b7fd541ae7e','c117f7db3b','18d653ec3c0'),
	('797c887ce1edab55fefaa7a690065843','rprt','14b5b262c52400','22efccc05e','7a9348e1538f'),
	('ffbc9337bb6f6c7d43ab32a9398474da','rprt','b04a2a75f0c4a9','6e07291b','564347d748e0'),
	('3ac840afe9d088e5c490ed4cd48d2269','json','67b7fd541ae7e','ffaa35275c','c58867f82d10'),
	('72cedda51ecfb6678f4e3a3956066311','json','402423768220bca1f','9a28c664','eed0f9697609'),
	('92488464899a3b31ea1bc61a2ebc2013','json','14b5b262c52400','1a10cdadd7','ee4cacc7ce10'),
	('c85e95cfec9f42fff138d498101cd7ea','json','14b5b262c52400','f1b4cf931e','3b4f71a3ddde'),
	('399edac903f69ac760fa36a8b68cdfb0','rprt','67b7fd541ae7e','a539fb31c3','4c920da298bd'),
	('a223c0e6017570f5a1039003e767e692','json','67b7fd541ae7e','7bfb6b3721','5ae5c617d126'),
	('1503860c3c6391385807ab9b6cdd1934','json','67b7fd541ae7e','4936ad40b0','94fbcb7cd167'),
	('6f269d7f6cf850a9cd0d4d804eef24a0','rprt','14b5b262c52400','943c04e54b','cc79fc503d80'),
	('732a12aa44489aeef05b614a1e8dbd2d','rprt','14b5b262c52400','a2335b4159','45e7e30aa621'),
	('b876617f4b7bdb3abc694da31b09d838','rprt','14b5b262c52400','93a91bf863','b824ed7a5f67'),
	('fd63b4bf7ee546b2c0c55200ae968872','rprt','67b7fd541ae7e','62cd05887b','9c1940a4032a'),
	('50a00a903778fb65ef92a736bd9fe262','json','67b7fd541ae7e','7e81c8b2f3','00eb98252668113'),
	('053891bc9d52d48986302c5e13adf276','json','67b7fd541ae7e','a1762f3d79','e06b767a6ed2'),
	('f537b4d753bb441436ff8d73af423691','json','efdfcef7da0','98c6db64','4c9b34c566ae'),
	('8dc4f5e5bb2663f09218b369be5bf524','rprt','03b000865c98e','f31af55c63','a02983ae108ced0449cb4'),
	('d69d899aba162c4f14593f9c6a062bdd','rprt','67b7fd541ae7e','7bfb6b3721','c32aa62b7207'),
	('88b784ce065a5cf2360e7616c4b3f7f6','json','62769691cd4e','ebdf919e','37e16f2e5319832f'),
	('cdda71f56ad05dae20b1e22ee19b227b','rprt','67b7fd541ae7e','17d7c8f29a','21c1f8fadde3'),
	('5e1d22685085f0d85553eb2b7b4155a6','rprt','14b5b262c52400','737542af23','092dcc6fdef7'),
	('7f387dad4f9bef7c2301977590cec0f2','json','67b7fd541ae7e','09591aea45','ab584388528d'),
	('a83145a960baebcf1bff9c462f8489e5','json','14b5b262c52400','2ea6e3e6fb','4fe26b0e2203'),
	('4d7a36c58267592481297676d57c9e84','json','581d813a840d3d6391','54239e1a8e','232d99055474'),
	('31f0b71e67e64d42079098a53374e094','json','14b5b262c52400','a43ad72889','7d702f310fbe'),
	('6ddc75b9771136d9a6366aaa5d951f1a','rprt','14b5b262c52400','75263a6f0c','7309f2e8695a'),
	('4595e59a1225042680842f63736481d4','json','14b5b262c52400','44f5fdb8b1','9c2c14ec6924'),
	('66c1f24117ee34a1b3d587a22047fad1','rprt','14b5b262c52400','bfe39ca56f','b49aa5fad4d5'),
	('37027bc152a681b87d5ffb9a37c325a5','rprt','efdfcef7da0','9f1668a8','682ff39acb86'),
	('c3b46edd87eb14842b6444c001ae6456','json','3608008ba4c9','f650844d13','5326d2a94e28825'),
	('82beaa8e1c8c482d792f601b37a40b8a','rprt','14b5b262c52400','c86e0093c2','5ae33221b17'),
	('333aa3a45ab3f01ad95b2a312870aa1e','json','14b5b262c52400','57f7ec0030','8545146eeba5'),
	('16b64ffcb514bf69c6936eaf4e86889e','rprt','14b5b262c52400','2a50feb98b','64bb80701037'),
	('01d42ee5515c3b500018e723278e27c1','json','67b7fd541ae7e','958967a48a','97453818ba51'),
	('2a031d3176c7d4f19c532e5d2e7b411e','rprt','14b5b262c52400','164c3bb214','3389fe2776be'),
	('8d3b5d415e43df82b6b560effeb6ee80','json','67b7fd541ae7e','9205577d7c','bc96b93082c6'),
	('339690825234f32fd7da02fd567d5109','rprt','b04a2a75f0c4a9','9f3026e2','a1bcb7232a50'),
	('13c6d4555db02b653d8f2b5ce06bb143','json','402423768220bca1f','49d58dba','59b0906f7fcb'),
	('39a39a7e3c48c1b3b262e8653b1a3ec4','rprt','14b5b262c52400','7b34590a85','eec88226d871'),
	('fdd9d71a087b9048b8ac7dd29186cedf','rprt','315316c7af745a97','8a7c0917d4','743680a0303171bbd'),
	('f37e684c9ec0d0690a3c6feeaf6b1301','json','14b5b262c52400','0059c84703','8426f8984729'),
	('3787d0c9ead3866324d7586044747d65','rprt','b9cbf09f3366297','3822b4212e','611f4b0f498e')
;
WITH dups AS (
  SELECT ROW_NUMBER() OVER same_idx AS dup
  , COUNT(*) OVER same_idx AS n_dup
  , (DENSE_RANK() OVER asc_spcmn) + (DENSE_RANK() OVER desc_spcmn) - 1 AS n_spcmn
  , *
  FROM issue9416
  WINDOW same_idx AS (
    PARTITION BY idx
    ORDER BY source, project, specimen
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
  )
  , asc_spcmn AS (
    PARTITION BY idx
    ORDER BY specimen ASC NULLS FIRST
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
  )
  , desc_spcmn AS (
    PARTITION BY idx
    ORDER BY specimen DESC NULLS LAST
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
  )
)
SELECT *
FROM dups
WHERE n_spcmn > 1
ORDER BY idx, dup;
INSERT INTO empsalary VALUES ('develop', 10, 5200, '2007-08-01'), ('sales', 1, 5000, '2006-10-01'), ('personnel', 5, 3500, '2007-12-10'), ('sales', 4, 4800, '2007-08-08'), ('personnel', 2, 3900, '2006-12-23'), ('develop', 7, 4200, '2008-01-01'), ('develop', 9, 4500, '2008-01-01'), ('sales', 3, 4800, '2007-08-01'), ('develop', 8, 6000, '2006-10-01'), ('develop', 11, 5200, '2007-08-15');
CREATE TABLE filtering AS
	SELECT
		 x
		,round(x * 0.333,0) % 3 AS y
		,round(x * 0.333,0) % 3 AS z
	FROM generate_series(0,10) tbl(x);
CREATE TABLE figure1 AS 
	SELECT * 
	FROM VALUES 
			(1, 'a'),
			(2, 'b'),
			(3, 'b'),
			(4, 'c'),
			(5, 'c'),
			(6, 'b'),
			(7, 'c'),
			(8, 'a')
		v(i, s);
BEGIN TRANSACTION;
create table wintest( item integer, return_ratio numeric, currency_ratio numeric);
insert into wintest values  (7539  ,0.590000 , 0.590000), (3337  ,0.626506 , 0.626506), (15597 ,0.661972 , 0.661972), (2915  ,0.698630 , 0.698630), (11933 ,0.717172 , 0.717172), (483   ,0.800000 , 0.800000), (85    ,0.857143 , 0.857143), (97    ,0.903614 , 0.903614), (117   ,0.925000 , 0.925000), (5299  ,0.927083 , 0.927083), (10055 ,0.945652 , 0.945652), (4231  ,0.977778 , 0.977778), (5647  ,0.987805 , 0.987805), (8679  ,0.988764 , 0.988764), (10323 ,0.977778 , 1.111111), (3305  ,0.737500 , 1.293860);
ROLLBACK;
create table modes as select range r from range(10) union all values (NULL), (NULL), (NULL);
WITH t(r) AS (VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (NULL), (NULL), (NULL))
SELECT r, r//3, mode(r//3) over (order by r rows between 1 preceding and 1 following) 
FROM t 
ORDER BY ALL;
WITH t(r) AS (VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (NULL), (NULL), (NULL))
SELECT r, r//3, mode(r//3) over (order by r rows between 1 preceding and 1 following) 
FROM t 
ORDER BY ALL;
WITH t(r) AS (VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (NULL), (NULL), (NULL))
SELECT r, r//3, mode(r//3) over (order by r rows between 1 preceding and 1 following) 
FROM t 
ORDER BY ALL;
WITH t AS (
	SELECT col0 AS a, col1 AS b 
	FROM (VALUES
		(1,2),
		(1,1),
		(1,2),
		(2,1),
		(2,1),
		(2,2),
		(2,3),
		(2,4)
	) v) 
SELECT *, COUNT(b) OVER(PARTITION BY a), COUNT(DISTINCT b) OVER(PARTITION BY a) 
FROM t
ORDER BY 1, 2;
WITH uncascaded AS (
	SELECT i, i % 29 AS v 
	FROM range(1000) tbl(i)
)
SELECT i
	, v
	, COUNT(DISTINCT v) OVER (ORDER BY i ROWS BETWEEN 25 PRECEDING AND 25 FOLLOWING) AS w
FROM uncascaded
ORDER BY i;
WITH cascaded AS (
	SELECT i, i % 29 AS v 
	FROM range(10000) tbl(i)
)
SELECT i
	, v
	, COUNT(DISTINCT v) OVER (ORDER BY i ROWS BETWEEN 25 PRECEDING AND 25 FOLLOWING) AS w
FROM cascaded
ORDER BY i;
INSERT INTO figure1 VALUES 
	(9, NULL),
	(NULL, 'b'),
	(NULL, NULL),
;
