DROP TABLE IF EXISTS prewhere_move_select_final;
CREATE TABLE prewhere_move_select_final (x Int, y Int, z Int) ENGINE = ReplacingMergeTree() ORDER BY (x, y);
INSERT INTO prewhere_move_select_final SELECT number, number * 2, number * 3 FROM numbers(1000);
