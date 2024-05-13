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
