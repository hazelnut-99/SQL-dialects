PRAGMA enable_verification;
CREATE table T1(A0 TIMESTAMP, A1 INTEGER, A2 VARCHAR, A3 VARCHAR, A4 INTEGER, A5 DOUBLE);
PREPARE v1 AS SELECT (SUM(CASE WHEN ((T1.A2 = ($1)::text) AND (T1.A3 = ($1)::text)) THEN T1.A4 ELSE (0)::int END) / ((SUM(CASE WHEN ((T1.A2 = ($1)::text) AND (T1.A3 = ($1)::text)) THEN T1.A4 ELSE (0)::int END) + SUM(CASE WHEN ((T1.A2 = ($2)::text) AND (T1.A3 = ($1)::text)) THEN T1.A4 ELSE (0)::int END)))::float8) AS A00036933 FROM T1;
