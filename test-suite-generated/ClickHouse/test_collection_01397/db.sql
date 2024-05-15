DROP TABLE IF EXISTS repro_hits;
CREATE TABLE repro_hits ( date Date, metric Float64) ENGINE = MergeTree() ORDER BY date;
